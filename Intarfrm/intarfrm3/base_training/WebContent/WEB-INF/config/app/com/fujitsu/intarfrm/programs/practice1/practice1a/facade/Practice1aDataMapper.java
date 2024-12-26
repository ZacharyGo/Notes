
package com.fujitsu.intarfrm.programs.practice1.practice1a.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice1.practice1a.beans.Practice1aCardBean;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean.Practice1aG1Info.Practice1aG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice1aDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice1aFormBean form) throws DatabaseException {
        Practice1aG1CardItem items = form.INFO.G1.CARD;
        Practice1aCardBean data = form.CARD;
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE1A_自画面遷移（PRACTICE1A_FRM)
         */
        PRACTICE1A_FRM,
        /**
         * @param PRACTICE1A_他画面遷移（PRACTICE1A_FRM1)
         */
        PRACTICE1A_FRM1,
        /**
         * @param なし
         */
        None
    }
}
