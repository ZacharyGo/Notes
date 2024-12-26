package com.fujitsu.intarfrm.skeletons.commons.codes;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchBoundType;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchType;
import com.fujitsu.intarfrm.helpers.commons.formats.IIfmFormatter;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.CultureInvariantHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlLikeWildcardType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlValue;
import com.fujitsu.intarfrm.helpers.models.entity.providers.IfmDbProvider;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchCondition;

/**
 * コード検索のヘルパークラス
 *
 * @author INTARFRM
 */
public class CodeHelper {

	/**
	 * SELECT文を実行し、結果をDbRecordのリストとして取得する。
	 * @param codeInfo コード情報
	 * @param builder SELECT文
	 * @param conn コネクション
	 * @param start 取得開始インデックス
	 * @param count 最大取得件数（nullの場合は無制限）
	 * @return DbRecordのリスト
	 * @throws DatabaseException
	 */
	public static List<DbRecord> getDbRecords(CodeInfo codeInfo, RawSqlSelectBuilder sql, IfmConnection conn, int start, int count) throws DatabaseException {
		List<DbRecord> records = sql.getResultRecords(conn, start, count);
		for(DbRecord record : records) {
			for(CodeItemInfo item : codeInfo.iteratorItem()) {
				String key = item.getColumn().getSqlText();
				Object val = record.get(key);
				val = item.getColumn().getDataType().getConverter().convertResultValue(val, item.getFormat());
				record.put(key, val);
			}
		}
		return records;
	}

	/**
	 * コード情報に定義されている既定の取得条件が設定されたコマンドビルダーを取得する。
	 * このメソッドは、コードの取得対象のテーブル名、列名、固定検索条件、ソート列が設定されたコマンドビルダーを作成します。
	 * @param info コード情報
	 * @return コマンドビルダー
	 */
	public static RawSqlSelectBuilder getBasicSelectCommandBuilder(CodeInfo info) {

        RawSqlSelectBuilder builder = new RawSqlSelectBuilder();
        for (CodeItemInfo item : info.getItems()) {
        	builder.appendColumn(item.getColumn().getSqlText());
        }
        builder.from().append(info.getSqlTableName());

        for (CodeItemInfo codeItem : info.getItems()) {
            if (!StringHelper.isNullOrEmpty(codeItem.getFixedCondition())) {
                builder.appendWhere(String.format("%s %s", codeItem.getColumn().getSqlText(), codeItem.getFixedCondition()));
            }
        }

        for (CodeItemInfo sortItem : info.iteratorSortItem()) {
            builder.appendOrderByString(sortItem.getColumn().getSqlText(), false);
        }
        return builder;
    }

	/**
	 * 検索条件を追加する。
	 * @param builder コード検索ビルダー
	 * @param condition コード検索の検索条件
	 * @param dataSourceInfo データソース情報
	 */
	public static void addWhereCondition(RawSqlSelectBuilder builder, CodeSearchCondition condition, IfmDbProvider provider) {
         CodeSearchType searchType = condition.getSearchType();
         if (CodeSearchType.requireValues(searchType) == 2) {
             // 最小値、最大値検索条件
             Object min = condition.getValues().get(0), max = condition.getValues().get(1);

             builder.appendWhereIfNotEmptyValue(String.format("%s %s ?",
                 condition.getColumnName(),
                 CodeSearchType.getOperatorType(searchType, CodeSearchBoundType.LOWER).toString()),
                 min,
                 condition.getSqlType());

             builder.appendWhereIfNotEmptyValue(String.format("%s %s ?",
                 condition.getColumnName(),
                 CodeSearchType.getOperatorType(searchType, CodeSearchBoundType.UPPER).toString()),
                 max,
                 condition.getSqlType());
         } else if (searchType == CodeSearchType.SELECT_FROM_CONDITION) {
         	 // 複数値の検索条件
             if (condition.getValues().size() > 0) {
            	 StringBuilder placeHolders = new StringBuilder();
            	 for (int index = 0; index < condition.getValues().size(); index++) {
            		 if (index > 0) {
            			 placeHolders.append(",");
            		 }
            		 placeHolders.append("?");
            	 }
            	 String sql = String.format("%s IN (%s)", condition.getColumnName(), placeHolders.toString());
            	 ArrayList<SqlValue> values = new ArrayList<SqlValue>();
            	 for (Object val : condition.getValues()) {
            		 values.add(new SqlValue(val, condition.getSqlType()));
            	 }
            	 builder.appendWhere(sql, values);
             }
         } else {
             // 単一値の検索条件
             Object value = condition.getValues().get(0);
             SqlLikeWildcardType matchType = CodeSearchType.getLikeWildcardType(searchType);
             if (matchType != SqlLikeWildcardType.NONE) {
                 // LIKE検索条件
            	 if (condition.getPassThroughLikeParameter()) {
            		 builder.appendWhere(String.format("%s LIKE ? %s", condition.getColumnName(), condition),
            				 value,
            				 condition.getSqlType());
            	 } else {
            		 // 検索条件文字列の取得
            		 String valueStr = CultureInvariantHelper.toString(value);
            		 // LIKE条件追加
            		 builder.appendLike(condition.getColumnName(), valueStr, matchType, provider);
            	 }
             } else {
                 // LIKE以外の条件
                 builder.appendWhere(String.format("%s %s ?",
                     condition.getColumnName(),
                     CodeSearchType.getOperatorType(searchType).toString()),
                     value,
                     condition.getSqlType());
             }
         }
     }

	/**
	 * DbRecordのValueをコード項目のフォーマット設定でフォーマットしたディクショナリに変換する。
	 * @param codeInfo コード定義情報
	 * @param records コード参照で取得されたDbRecordのリスト
	 * @param lang フォーマット対象の言語
	 * @return DbRecordのValueが文字列にフォーマットされた結果が格納されたディクショナリのリスト
	 */
	public static List<HashMap<String, String>> formatDbRecord(CodeInfo codeInfo, Iterable<DbRecord> iterableRecords, LanguageInfo lang) {

		if (iterableRecords == null) {
			return new ArrayList<HashMap<String, String>>();
		}
		Iterator<DbRecord> records = iterableRecords.iterator();

		if (!records.hasNext()) {
			return new ArrayList<HashMap<String, String>>();
		}
		List<HashMap<String, String>> retval = new ArrayList<HashMap<String, String>>();

		DbRecord first = records.next();
		// DbRecordのキーに対応するフォーマッタのディクショナリを作成する。
		HashMap<String, IIfmFormatter<?>> formatters = new HashMap<String, IIfmFormatter<?>>();
		{
			HashMap<String, String> formattedRecords = new HashMap<String, String>();
			for (String key : first.getKeys()) {
				for (CodeItemInfo item : codeInfo.getItems()) {
					if (item != null && item.getColumn().getSqlText().toUpperCase().equals(key)) {
						formatters.put(item.getColumn().getSqlText().toUpperCase(), item.getFormatter(lang));
						break;
					}
				}
				formattedRecords.put(key, formatters.get(key).format(first.getValue(key)).getResultValue());
			}
			retval.add(formattedRecords);
		}

		//フォーマットされた値を取得する。
		while (records.hasNext()) {
			DbRecord rec = records.next();
			HashMap<String, String> formattedRecords = new HashMap<String, String>();
			for (String key : rec.getKeys()) {
				formattedRecords.put(key, formatters.get(key).format(rec.getValue(key)).getResultValue());
			}
			retval.add(formattedRecords);
		}

		return retval;
	}
}
