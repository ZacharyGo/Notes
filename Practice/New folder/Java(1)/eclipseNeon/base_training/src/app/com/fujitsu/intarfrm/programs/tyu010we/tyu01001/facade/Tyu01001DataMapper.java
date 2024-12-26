
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.beans.Tyu01001CardBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean.Tyu01001G1Info.Tyu01001G1CardItem;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean.Tyu01001G2Info.Tyu01001G2CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Tyu01001DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Tyu01001FormBean form) throws DatabaseException {
        Tyu01001G1CardItem items = form.INFO.G1.CARD;
        Tyu01001CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.SYOMODENAME);
        DataTransfer.get(rs, data, items.LOGONDATE);
        DataTransfer.get(rs, data, items.LOGONUSER);
        DataTransfer.get(rs, data, items.CUSID);
        DataTransfer.get(rs, data, items.CUSNAME);
        DataTransfer.get(rs, data, items.AREA);
        DataTransfer.get(rs, data, items.TELNO);
        DataTransfer.get(rs, data, items.EMAIL);
        DataTransfer.get(rs, data, items.DELIVEREMAIL);
        DataTransfer.get(rs, data, items.SEX);
        DataTransfer.get(rs, data, items.BIRTHYMD);
        DataTransfer.get(rs, data, items.JOB);
        DataTransfer.get(rs, data, items.STOREID);
        DataTransfer.get(rs, data, items.STORENAME);
        DataTransfer.get(rs, data, items.POINT);
        DataTransfer.get(rs, data, items.POINTRATE);
    }

    /**
     * <p>グループ[G2]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG2CardData(ResultSet rs, Tyu01001FormBean form) throws DatabaseException {
        Tyu01001G2CardItem items = form.INFO.G2.CARD;
        Tyu01001CardBean data = form.CARD;
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param TYU01001_DB Update（TYU01001_DBU)
         */
        TYU01001_DBU,
        /**
         * @param TYU01001_Back（TYU01001_FRM_BACK)
         */
        TYU01001_FRM_BACK,
        /**
         * @param なし
         */
        None
    }
}
