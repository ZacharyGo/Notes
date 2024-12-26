
package com.fujitsu.intarfrm.programs.practice1.practice1b.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice1.practice1b.beans.Practice1bCardBean;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean.Practice1bG1Info.Practice1bG1CardItem;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice1bDataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice1bFormBean form) throws DatabaseException {
        Practice1bG1CardItem items = form.INFO.G1.CARD;
        Practice1bCardBean data = form.CARD;
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE1B_戻る（PRACTICE1B_FRM)
         */
        PRACTICE1B_FRM,
        /**
         * @param なし
         */
        None
    }
}
