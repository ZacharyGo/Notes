
package com.fujitsu.intarfrm.programs.practice6.practice6b.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice6.practice6b.beans.Practice6bCardBean;
import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bFormBean;
import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bFormBean.Practice6bG1Info.Practice6bG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice6bDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice6bFormBean form) throws DatabaseException {
        Practice6bG1CardItem items = form.INFO.G1.CARD;
        Practice6bCardBean data = form.CARD;
        DataTransfer.get(rs, data, items.DESCRIPTION);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param なし
         */
        None
    }
}
