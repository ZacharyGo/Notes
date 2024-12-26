
package com.fujitsu.intarfrm.programs.practice6.practice6a.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice6.practice6a.beans.Practice6aCardBean;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean.Practice6aG1Info.Practice6aG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice6aDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice6aFormBean form) throws DatabaseException {
        Practice6aG1CardItem items = form.INFO.G1.CARD;
        Practice6aCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.LOGINID);
        DataTransfer.get(rs, data, items.PASSWORD);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE6A_他フォーム（PRACTICE6A_FRM)
         */
        PRACTICE6A_FRM,
        /**
         * @param なし
         */
        None
    }
}
