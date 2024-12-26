
package com.fujitsu.intarfrm.programs.practice5.practice5.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice5.practice5.beans.Practice5CardBean;
import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5FormBean;
import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5FormBean.Practice5G1Info.Practice5G1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice5DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice5FormBean form) throws DatabaseException {
        Practice5G1CardItem items = form.INFO.G1.CARD;
        Practice5CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.DEPARTMENT);
        DataTransfer.get(rs, data, items.ID);
        DataTransfer.get(rs, data, items.MEI);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE5_他フォーム（PRACTICE5_FRM)
         */
        PRACTICE5_FRM,
        /**
         * @param なし
         */
        None
    }
}
