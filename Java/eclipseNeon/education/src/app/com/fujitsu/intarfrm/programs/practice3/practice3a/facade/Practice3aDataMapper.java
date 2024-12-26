
package com.fujitsu.intarfrm.programs.practice3.practice3a.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice3.practice3a.beans.Practice3aCardBean;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean.Practice3aG1Info.Practice3aG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice3aDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice3aFormBean form) throws DatabaseException {
        Practice3aG1CardItem items = form.INFO.G1.CARD;
        Practice3aCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.CUSNAME);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE3A_他フォーム（PRACTICE3A_FRM)
         */
        PRACTICE3A_FRM,
        /**
         * @param なし
         */
        None
    }
}
