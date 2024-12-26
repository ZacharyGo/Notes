
package com.fujitsu.intarfrm.programs.practice7.practice7.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7CardBean;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean.Practice7G1Info.Practice7G1CardItem;
import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7M1RowData;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean.Practice7M1Info.Practice7M1Item;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice7DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice7FormBean form) throws DatabaseException {
        Practice7G1CardItem items = form.INFO.G1.CARD;
        Practice7CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.SEARCHPRICE);
    }

    /**
     * <p>明細部[M1]のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @param row 明細行データ
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setM1Data(ResultSet rs, Practice7FormBean form, Practice7M1RowData row) throws DatabaseException {
       Practice7M1Item items = form.INFO.M1.ITEM;
       DataTransfer.get(rs, row, items.PRODUCTID);
       DataTransfer.get(rs, row, items.PRODUCTNAME);
       DataTransfer.get(rs, row, items.PRICE);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE4_ETC（PRACTICE4_ETC)
         */
        PRACTICE4_ETC,
        /**
         * @param PRACTICE7_DBU_DELETE（PRACTICE7_DBU_DELETE)
         */
        PRACTICE7_DBU_DELETE,
        /**
         * @param PRACTICE7_FRM_ADD（PRACTICE7_FRM_ADD)
         */
        PRACTICE7_FRM_ADD,
        /**
         * @param PRACTICE7_FRM_DETAILS（PRACTICE7_FRM_DETAILS)
         */
        PRACTICE7_FRM_DETAILS,
        /**
         * @param PRACTICE7_FRM_EDIT（PRACTICE7_FRM_EDIT)
         */
        PRACTICE7_FRM_EDIT,
        /**
         * @param なし
         */
        None
    }
}
