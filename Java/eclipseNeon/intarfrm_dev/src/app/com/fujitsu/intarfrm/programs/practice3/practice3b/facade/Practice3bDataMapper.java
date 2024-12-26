
package com.fujitsu.intarfrm.programs.practice3.practice3b.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice3.practice3b.beans.Practice3bCardBean;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean.Practice3bG1Info.Practice3bG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice3bDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice3bFormBean form) throws DatabaseException {
        Practice3bG1CardItem items = form.INFO.G1.CARD;
        Practice3bCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.CUSNAME);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE3B_（その他の動作）（PRACTICE3B_ETC)
         */
        PRACTICE3B_ETC,
        /**
         * @param なし
         */
        None
    }
}
