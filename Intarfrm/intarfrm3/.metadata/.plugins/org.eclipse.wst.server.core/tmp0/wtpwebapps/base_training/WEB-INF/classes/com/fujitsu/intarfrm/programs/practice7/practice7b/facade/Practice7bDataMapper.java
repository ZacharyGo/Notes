
package com.fujitsu.intarfrm.programs.practice7.practice7b.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice7.practice7b.beans.Practice7bCardBean;
import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bFormBean;
import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bFormBean.Practice7bG1Info.Practice7bG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice7bDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice7bFormBean form) throws DatabaseException {
        Practice7bG1CardItem items = form.INFO.G1.CARD;
        Practice7bCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.PRODUCTID);
        DataTransfer.get(rs, data, items.PRODUCTNAME);
        DataTransfer.get(rs, data, items.PRICE);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE7B_FRM_CANCEL（PRACTICE7B_FRM_CANCEL)
         */
        PRACTICE7B_FRM_CANCEL,
        /**
         * @param PRACTICE7B_FRM_EDIT（PRACTICE7B_FRM_EDIT)
         */
        PRACTICE7B_FRM_EDIT,
        /**
         * @param なし
         */
        None
    }
}
