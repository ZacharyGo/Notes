
package com.fujitsu.intarfrm.programs.practice2.practice2.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2CardBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2G1Info.Practice2G1CardItem;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1RowData;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2M1Info.Practice2M1Item;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice2DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice2FormBean form) throws DatabaseException {
        Practice2G1CardItem items = form.INFO.G1.CARD;
        Practice2CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.DEPARTMENT);
    }

    /**
     * <p>明細部[M1]のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @param row 明細行データ
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setM1Data(ResultSet rs, Practice2FormBean form, Practice2M1RowData row) throws DatabaseException {
       Practice2M1Item items = form.INFO.M1.ITEM;
       DataTransfer.get(rs, row, items.MNO);
       DataTransfer.get(rs, row, items.ID);
       DataTransfer.get(rs, row, items.MEI);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE2_他フォーム（PRACTICE2_FRM)
         */
        PRACTICE2_FRM,
        /**
         * @param なし
         */
        None
    }
}
