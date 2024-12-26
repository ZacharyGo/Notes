// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7b.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bFormBean.Practice7bFormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice7bCardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice7bFormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice7bCardBeanBase(Practice7bFormBean owner) {
        super(owner);
        formInfo = (Practice7bFormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[PRODUCT ID]の値を取得する。</p>
     *
     * 項目標題：[PRODUCT ID]
     * @return 値
     */
    public String getPRODUCTID() {
        return super.castValue(formInfo.G1.CARD.PRODUCTID);
    }

    /**
     * <p>項目[PRODUCT ID]の値を設定する。</p>
     *
     * 項目標題：[PRODUCT ID]
     *
     * @param value 値
     */
    public void setPRODUCTID(String value) {
        super.put(formInfo.G1.CARD.PRODUCTID, value);
    }


    /**
     * <p>項目[PRODUCT NAME]の値を取得する。</p>
     *
     * 項目標題：[PRODUCT NAME]
     * @return 値
     */
    public String getPRODUCTNAME() {
        return super.castValue(formInfo.G1.CARD.PRODUCTNAME);
    }

    /**
     * <p>項目[PRODUCT NAME]の値を設定する。</p>
     *
     * 項目標題：[PRODUCT NAME]
     *
     * @param value 値
     */
    public void setPRODUCTNAME(String value) {
        super.put(formInfo.G1.CARD.PRODUCTNAME, value);
    }


    /**
     * <p>項目[PRICE]の値を取得する。</p>
     *
     * 項目標題：[PRICE]
     * @return 値
     */
    public BigDecimal getPRICE() {
        return super.castValue(formInfo.G1.CARD.PRICE);
    }

    /**
     * <p>項目[PRICE]の値を設定する。</p>
     *
     * 項目標題：[PRICE]
     *
     * @param value 値
     */
    public void setPRICE(BigDecimal value) {
        super.put(formInfo.G1.CARD.PRICE, value);
    }

    /**
     * <p>項目[PRICE]の値を設定する。</p>
     *
     * 項目標題：[PRICE]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setPRICE(Number value) {
        super.put(formInfo.G1.CARD.PRICE, value);
    }

}
