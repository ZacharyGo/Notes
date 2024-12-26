
package com.fujitsu.intarfrm.programs.practice4.practice4.facade;

import java.sql.ResultSet;
import com.fujitsu.intarfrm.helpers.models.entity.DataTransfer;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.programs.practice4.practice4.beans.Practice4CardBean;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean.Practice4G1Info.Practice4G1CardItem;
import com.fujitsu.intarfrm.programs.practice4.practice4.beans.Practice4M1RowData;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean.Practice4M1Info.Practice4M1Item;

/**
 * <p>画面とDB情報のマッピングを行うクラス<p>
 */
public class Practice4DataMapper {

    /**
     * <p>グループ[G1]のカード部のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setG1CardData(ResultSet rs, Practice4FormBean form) throws DatabaseException {
        Practice4G1CardItem items = form.INFO.G1.CARD;
        Practice4CardBean data = form.CARD;
        DataTransfer.get(rs, data, items.SEARCHPRICE);
    }

    /**
     * <p>明細部[M1]のデータを設定します。</p>
     * @param rs 結果セット
     * @param form フォーム情報
     * @param row 明細行データ
     * @throws DatabaseException データベース操作で失敗した場合
     */
    public static void setM1Data(ResultSet rs, Practice4FormBean form, Practice4M1RowData row) throws DatabaseException {
       Practice4M1Item items = form.INFO.M1.ITEM;
       DataTransfer.get(rs, row, items.PRODUCTID);
       DataTransfer.get(rs, row, items.PRODUCTNAME);
       DataTransfer.get(rs, row, items.PRICE);
    }
    
    /**
     * <p>フォームアクションの列挙型</p>
     */
    public enum DataMapperType {
        /**
         * @param PRACTICE4_（その他の動作）（PRACTICE4_ETC)
         */
        PRACTICE4_ETC,
        /**
         * @param なし
         */
        None
    }
}
