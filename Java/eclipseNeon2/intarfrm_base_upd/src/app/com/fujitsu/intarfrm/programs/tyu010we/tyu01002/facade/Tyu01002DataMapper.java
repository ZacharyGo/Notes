
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002CardBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002G1Info.Tyu01002G1CardItem;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002G2Info.Tyu01002G2CardItem;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1RowData;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002M1Info.Tyu01002M1Item;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Tyu01002DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Tyu01002FormBean form) throws DatabaseException {
        Tyu01002G1CardItem items = form.INFO.G1.CARD;
        Tyu01002CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.LOGONDATE);
        DataTransfer.get(rs, data, items.LOGONUSER);
        DataTransfer.get(rs, data, items.STOREID);
        DataTransfer.get(rs, data, items.STORENAME);
    }

    /**
     * <p>グループ[G2]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG2CardData(ResultSet rs, Tyu01002FormBean form) throws DatabaseException {
        Tyu01002G2CardItem items = form.INFO.G2.CARD;
        Tyu01002CardBean data = form.CARD;
    }

    /**
     * <p>明細部[M1]のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @param row 明細行データ
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setM1Data(ResultSet rs, Tyu01002FormBean form, Tyu01002M1RowData row) throws DatabaseException {
       Tyu01002M1Item items = form.INFO.M1.ITEM;
       DataTransfer.get(rs, row, items.MEINO);
       DataTransfer.get(rs, row, items.CUSID);
       DataTransfer.get(rs, row, items.CUSNAME);
       DataTransfer.get(rs, row, items.EMAIL);
       DataTransfer.get(rs, row, items.TELNO);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param TYU01002_他フォーム_Add（TYU01002_FRM_Add)
         */
        TYU01002_FRM_ADD,
        /**
         * @param TYU01002_他フォーム_Delete（TYU01002_FRM_DEL)
         */
        TYU01002_FRM_DEL,
        /**
         * @param TYU01002_他フォーム_Edit（TYU01002_FRM_UPD)
         */
        TYU01002_FRM_UPD,
        /**
         * @param TYU01002_前グループ_Cancel（TYU01002_GBFR_CANCEL)
         */
        TYU01002_GBFR_CANCEL,
        /**
         * @param TYU01002_次グループ_Confirm（TYU01002_GNXT_DEF)
         */
        TYU01002_GNXT_DEF,
        /**
         * @param なし
         */
        None
    }
}
