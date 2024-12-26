
package com.fujitsu.intarfrm.programs.practice7.practice7a.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice7.practice7a.beans.Practice7aCardBean;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean.Practice7aG1Info.Practice7aG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice7aDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice7aFormBean form) throws DatabaseException {
        Practice7aG1CardItem items = form.INFO.G1.CARD;
        Practice7aCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.PRODUCTID);
        DataTransfer.get(rs, data, items.PRODUCTNAME);
        DataTransfer.get(rs, data, items.PRICE);
        DataTransfer.get(rs, data, items.DRLCODE);
        DataTransfer.get(rs, data, items.DRLCOND);
        DataTransfer.get(rs, data, items.DRLDYNAMIC);
        DataTransfer.get(rs, data, items.DRLCODE2);
        DataTransfer.get(rs, data, items.DRLCOND2);
        DataTransfer.get(rs, data, items.DRLDYNAMIC2);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE7A_DBU_REGISTER（PRACTICE7A_DBU_REGISTER)
         */
        PRACTICE7A_DBU_REGISTER,
        /**
         * @param PRACTICE7A_DBU_UPDATE（PRACTICE7A_DBU_UPDATE)
         */
        PRACTICE7A_DBU_UPDATE,
        /**
         * @param PRACTICE7A_FRM_CANCEL（PRACTICE7A_FRM_CANCEL)
         */
        PRACTICE7A_FRM_CANCEL,
        /**
         * @param なし
         */
        None
    }
}
