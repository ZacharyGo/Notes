package com.fujitsu.intarfrm.skeletons.commons.framework;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.DisplayListData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormValueObject;
import com.fujitsu.intarfrm.helpers.commons.beans.IfmSortKey;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;
import com.fujitsu.intarfrm.helpers.commons.beans.SortingHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;

/**
 * <p>フォームデータをDBからロードするヘルパークラス。</p>
 *
 * @author INTARFRM
 */
public class DataLoadHelper {

	/**
	 * 現在の明細のソートキー設定を元に、SELECT文にOrderBy句を設定する。
	 * @param sql 検索用RawSqlSelectBuilder
	 * @param listData　明細データ
	 */
	public static void setSortOrderBy(RawSqlSelectBuilder sql, AbstractListData<?, ?> listData) {
        ArgumentValidator.checkNull(sql, "sql");
        ArgumentValidator.checkNull(listData, "listData");

        sql.orderBy().setLength(0);
        sql.getOrderByParameters().clear();

        for (IfmSortKey key : SortingHelper.getIfmSortKeys(listData.getInfo())) {
        	sql.appendOrderByString(key.getKey(), key.getDesc());
        }
    }

	/**
	 * SELECT文からモード１明細の現在のページのデータをロードする。
	 * @param selectSql 検索用RawSqlSelectBuilder
	 * @param conn コネクション
	 * @param listData 明細データ
	 * @throws Exception 例外
	 */
	public static <T extends ListRowData> void loadCurrentPage(RawSqlSelectBuilder selectSql, IfmConnection conn, DisplayListData<?, T> listData) throws Exception {
        ArgumentValidator.checkNull(selectSql, "selectSql");
        ArgumentValidator.checkNull(listData, "listData");
        // 現在のページの開始行インデックス
        int startRowIndex = listData.getPage().indexOfPageStartRow();

        // Count文実行
        int totalCount = selectSql.getCount(conn);

        listData.clearAllRows();
        listData.setTotalRowCount(totalCount);

        if (totalCount <= startRowIndex) {
            // 総件数が想定の開始行に満たない場合は最終ページに移動する
            listData.getPage().pageLast();
        }

        // １ページ分のデータを取得する
        List<DbRecord> data = selectSql.getResultRecords(conn, listData.getPage().indexOfPageStartRow(), listData.getInfo().getDisplayRowCount());

        List<T> rowList = new ArrayList<T>();
        for (DbRecord dr : data) {
            // データベースのレコードを明細行にコピーする
            T row = listData.newRow(false);
            for (String key : dr.getKeys()) {
                row.put(key, dr.getValue(key));
            }
            rowList.add(row);
        }
        listData.addRows(rowList);
        listData.commit();
    }

	/**
	 * SELECT文の実行結果をモード２明細のデータにロードする。
	 * @param statement ステートメント
	 * @param listData 明細データ
	 * @param maxLoadCount 最大検索件数
	 * @return  検索結果（最大検索件数に達した場合はtrue,最大検索件数に達していない場合ばfalseを返す。）
	 * @throws SQLException 例外
	 */
	public static <T extends ListRowData> boolean loadAllRecords(PreparedStatement statement, ManagedListData<?, T> listData, int maxLoadCount) throws SQLException {
        ArgumentValidator.checkNull(listData, "listData");
        ResultSet rs = null;
        try {
            List<T> rows = new ArrayList<T>();
        	rs = statement.executeQuery();

        	boolean ret;
            long max = maxLoadCount > 0 ? maxLoadCount : Long.MAX_VALUE;
            for (long j = 0; j < max; j++) {
            	if (!rs.next()) {
            		break;
            	}
            	T row = listData.newRow(false);
            	for (int i = 0; i < rs.getMetaData().getColumnCount(); i++) {
            		row.put(rs.getMetaData().getColumnName(i + 1), rs.getObject(i + 1));
            	}
            	rows.add(row);
            }
            ret = (rows.size() == max) ? rs.next() : false;

            // 明細に行を追加する
            listData.clearAllRows();
            listData.addRows(rows);
            listData.commit();
            return ret;
        } finally {
        	if (rs != null) {
        		rs.close();
        	}
        }

    }

	/**
	 * SELECT文の結果レコードの先頭１件をFormValueObjectにコピーする。
	 * @param statement ステートメント
	 * @param vo フォームデータ
	 * @return 検索結果（レコードが存在する場合はtrue,レコードが存在しない場合ばfalseを返す。）
	 * @throws SQLException 例外
	 */
    public static boolean loadFirstRecord(PreparedStatement statement, FormValueObject vo) throws SQLException {
        ArgumentValidator.checkNull(vo, "vo");
        ResultSet rs = null;
        try {
        	rs = statement.executeQuery();
            if (!rs.next()) {
            	// 該当レコード無し
            	return false;
            }
            //フィールド名取得
            ResultSetMetaData rsmd= rs.getMetaData();
            for (int i = 0; i < rsmd.getColumnCount(); i++) {
            	vo.put(rsmd.getColumnName(i + 1), rs.getObject(i + 1));
            }
            vo.commit();
            return true;
        } finally {
        	if (rs != null) {
        		rs.close();
        	}
        }
    }
}
