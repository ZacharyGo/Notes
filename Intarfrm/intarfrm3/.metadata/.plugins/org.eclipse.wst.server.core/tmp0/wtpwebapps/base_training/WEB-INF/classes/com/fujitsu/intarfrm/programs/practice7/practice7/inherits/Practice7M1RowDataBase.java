// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7M1Bean;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean.Practice7M1Info;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;

/**
 * <p>明細[M1]の行データクラス。</p>
 *
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 * 明細名：[明細部１]、フォーム名：[List1]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice7M1RowDataBase extends ListRowData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * 明細データ
     */
    protected Practice7M1Bean owner;

    /**
     * 明細の設計情報
     */
    protected Practice7M1Info listInfo;

    /**
     * <p>コンストラクタ。</p>
     *
     * @param owner 明細データ
     */
    protected Practice7M1RowDataBase(Practice7M1Bean owner) {
        super(owner.getInfo());
        this.owner = owner;
        listInfo = (Practice7M1Info)owner.getInfo();
    }

    /**
     * <p>項目[Product ID]の値を取得する。</p>
     *
     * 項目標題：[Product ID]
     * @return 値
     */
    public String getPRODUCTID() {
        return super.castValue(listInfo.ITEM.PRODUCTID);
    }

    /**
     * <p>項目[Product ID]の値を設定する。</p>
     *
     * 項目標題：[Product ID]
     *
     * @param value 値
     */
    public void setPRODUCTID(String value) {
        super.put(listInfo.ITEM.PRODUCTID, value);
    }


    /**
     * <p>項目[Product Name]の値を取得する。</p>
     *
     * 項目標題：[Product Name]
     * @return 値
     */
    public String getPRODUCTNAME() {
        return super.castValue(listInfo.ITEM.PRODUCTNAME);
    }

    /**
     * <p>項目[Product Name]の値を設定する。</p>
     *
     * 項目標題：[Product Name]
     *
     * @param value 値
     */
    public void setPRODUCTNAME(String value) {
        super.put(listInfo.ITEM.PRODUCTNAME, value);
    }


    /**
     * <p>項目[Price]の値を取得する。</p>
     *
     * 項目標題：[Price]
     * @return 値
     */
    public BigDecimal getPRICE() {
        return super.castValue(listInfo.ITEM.PRICE);
    }

    /**
     * <p>項目[Price]の値を設定する。</p>
     *
     * 項目標題：[Price]
     *
     * @param value 値
     */
    public void setPRICE(BigDecimal value) {
        super.put(listInfo.ITEM.PRICE, value);
    }

    /**
     * <p>項目[Price]の値を設定する。</p>
     *
     * 項目標題：[Price]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setPRICE(Number value) {
        super.put(listInfo.ITEM.PRICE, value);
    }

}
