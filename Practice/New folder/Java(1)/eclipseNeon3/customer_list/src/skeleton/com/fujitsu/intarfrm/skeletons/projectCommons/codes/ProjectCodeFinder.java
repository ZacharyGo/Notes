package com.fujitsu.intarfrm.skeletons.projectCommons.codes;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.codes.CodeSortKey;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.providers.IfmDbProvider;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbConnectionManager;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.commons.codes.CodeHelper;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchCondition;

/**
 * コード検索のデータアクセスロジックを実装するクラス。
 * このクラスは、指定された条件と、コード情報で定義された固定の検索条件に従ってコード検索を実行します。
 * 検索は、指定された検索条件とコード情報に設計されている固定の検索条件のAND条件で行われます。
 * ソート条件は、CodeSearchContextに設定された条件が優先されます。
 *
 * @author INTARFRM
 */
public abstract class ProjectCodeFinder implements Serializable {

	private static final long serialVersionUID = 1L;

	/**
	 * コード情報を取得または設定する。
	 */
	private CodeInfo codeInfo;

	/**
	 * コード参照で使用するデータソースのID
	 */
	private String dataSourceId = DbConnectionManager.getDefaultSourceId();

	/**
	 * コード参照で使用するデータソースのIDを取得する
	 * @return
	 */
	public String getDataSourceId(){
		return this.dataSourceId;
	}

	/**
	 * コード参照で使用するデータソースのIDを設定する
	 * @param dataSourceId データソースID
	 */
	public void setDataSourceId(String dataSourceId){
		this.dataSourceId = dataSourceId;
	}

	/**
	 * コード情報を取得する。
	 * @return コード情報
	 */
	public CodeInfo getCodeInfo() {
		return this.codeInfo;
	}

	/**
	 * コード情報を設定する。
	 * @param info コード情報
	 */
	public void setCodeInfo(CodeInfo info) {
		this.codeInfo = info;
	}

	/**
	 * コードで使用するDbConnectionSourceを取得する
	 * @return DbConnectionSource
	 * @throws SQLException
	 */
	protected IfmDbProvider getIfmDbProvider() throws SQLException {
		return DbConnectionManager.getInstance().getProviderBySourceId(this.dataSourceId);
	}

	/**
	 * コードで使用するコネクションを取得する
	 * @return IfmConnection
	 * @throws SQLException
	 */
	protected IfmConnection getConnection() throws SQLException {
		return DbConnectionManager.getInstance().getConnection(this.dataSourceId, this.dataSourceId);
	}

	/**
	 * コンストラクタ
	 * @param codeInfo コード情報
	 */
	protected ProjectCodeFinder(CodeInfo codeInfo) {
		this.codeInfo = codeInfo;
	}

	/**
	 * 検索を実行する。
	 * 検索条件に一致したレコードの指定範囲のリストを返します。
	 * @param searchContext 検索条件
	 * @param startIndex 取得開始インデックス
	 * @param count 最大取得件数（0の場合は無制限）
	 * @return 検索結果のレコードのリスト
	 * @throws DatabaseException
	 */
	public List<DbRecord> find(CodeSearchContext searchContext, int startIndex, int count) throws DatabaseException {

		RawSqlSelectBuilder builder = this.createFindCommandBuilder(this.getCodeInfo(), searchContext);

        try (IfmConnection conn = this.getConnection()) {
        	return CodeHelper.getDbRecords(this.codeInfo, builder, conn, startIndex, count);
        }
        catch (SQLException ex){
        	throw new DatabaseException(ex);
        }
	}

	/**
	 * 検索条件に一致するレコードの件数を取得する。
	 * 指定された検索条件に一致するレコードの総件数を返します。
	 * @param searchContext 検索条件
	 * @return 検索条件に一致するレコードの件数
	 * @throws DatabaseException
	 */
	public int getCount(CodeSearchContext searchContext) throws DatabaseException {

        RawSqlSelectBuilder builder = this.createFindCommandBuilder(this.getCodeInfo(), searchContext);
        
        try (IfmConnection conn = this.getConnection()) {
            return builder.getCount(conn);
        }
        catch (SQLException ex){
        	throw new DatabaseException(ex);
        }
	}

	/**
	 * コード情報と指定された検索条件から、検索を実行するSELECT文が格納されたRawSqlSelectBuilderを作成する。
	 * @param codeInfo コード情報
	 * @param searchContext 検索条件
	 * @return 検索を実行するSELECT文が格納された
	 */
	protected RawSqlSelectBuilder createFindCommandBuilder(CodeInfo codeInfo, CodeSearchContext searchContext) throws DatabaseException {

        RawSqlSelectBuilder builder = CodeHelper.getBasicSelectCommandBuilder(codeInfo);

        // 検索条件の追加
        try {
	        for (CodeSearchCondition condition : searchContext.getSearchConditions()) {
	                CodeHelper.addWhereCondition(builder, condition, this.getIfmDbProvider());
	        }
        }
        catch (SQLException ex){
        	throw new DatabaseException(ex);
        }

        if (searchContext.getSortKeys() != null && searchContext.getSortKeys().size() > 0) {
            // ソートキーの指定がある場合は、既定のソート順を上書きする
        	builder.orderBy().setLength(0);
            builder.getOrderByParameters().clear();
            for (CodeSortKey sortElement : searchContext.getSortKeys()) {
                builder.appendOrderByString(sortElement.getColumnName(), sortElement.getDesc());
            }
        }

        return builder;
	}
}

