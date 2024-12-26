// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7a.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean.Practice7aFormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice7aCardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice7aFormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice7aCardBeanBase(Practice7aFormBean owner) {
        super(owner);
        formInfo = (Practice7aFormInfo)this.owner.INFO;
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

    /**
     * <p>項目[DRLCODE]の値を取得する。</p>
     *
     * 項目標題：[Dropdown using Code (key value display)]
     * @return 値
     */
    public String getDRLCODE() {
        return super.castValue(formInfo.G1.CARD.DRLCODE);
    }

    /**
     * <p>項目[DRLCODE]の値を設定する。</p>
     *
     * 項目標題：[Dropdown using Code (key value display)]
     *
     * @param value 値
     */
    public void setDRLCODE(String value) {
        super.put(formInfo.G1.CARD.DRLCODE, value);
    }


    /**
     * <p>項目[DRLCOND]の値を取得する。</p>
     *
     * 項目標題：[Dropdown using Condition (key value display)]
     * @return 値
     */
    public String getDRLCOND() {
        return super.castValue(formInfo.G1.CARD.DRLCOND);
    }

    /**
     * <p>項目[DRLCOND]の値を設定する。</p>
     *
     * 項目標題：[Dropdown using Condition (key value display)]
     *
     * @param value 値
     */
    public void setDRLCOND(String value) {
        super.put(formInfo.G1.CARD.DRLCOND, value);
    }


    /**
     * <p>項目[DRLDYNAMIC]の値を取得する。</p>
     *
     * 項目標題：[Dynamic Dropdown (key value display)]
     * @return 値
     */
    public String getDRLDYNAMIC() {
        return super.castValue(formInfo.G1.CARD.DRLDYNAMIC);
    }

    /**
     * <p>項目[DRLDYNAMIC]の値を設定する。</p>
     *
     * 項目標題：[Dynamic Dropdown (key value display)]
     *
     * @param value 値
     */
    public void setDRLDYNAMIC(String value) {
        super.put(formInfo.G1.CARD.DRLDYNAMIC, value);
    }


    /**
     * <p>項目[DRLCODE2]の値を取得する。</p>
     *
     * 項目標題：[Dropdown using Code]
     * @return 値
     */
    public String getDRLCODE2() {
        return super.castValue(formInfo.G1.CARD.DRLCODE2);
    }

    /**
     * <p>項目[DRLCODE2]の値を設定する。</p>
     *
     * 項目標題：[Dropdown using Code]
     *
     * @param value 値
     */
    public void setDRLCODE2(String value) {
        super.put(formInfo.G1.CARD.DRLCODE2, value);
    }


    /**
     * <p>項目[DRLCOND2]の値を取得する。</p>
     *
     * 項目標題：[Dropdown using Condition]
     * @return 値
     */
    public String getDRLCOND2() {
        return super.castValue(formInfo.G1.CARD.DRLCOND2);
    }

    /**
     * <p>項目[DRLCOND2]の値を設定する。</p>
     *
     * 項目標題：[Dropdown using Condition]
     *
     * @param value 値
     */
    public void setDRLCOND2(String value) {
        super.put(formInfo.G1.CARD.DRLCOND2, value);
    }


    /**
     * <p>項目[DRLDYNAMIC2]の値を取得する。</p>
     *
     * 項目標題：[Dynamic Dropdown]
     * @return 値
     */
    public String getDRLDYNAMIC2() {
        return super.castValue(formInfo.G1.CARD.DRLDYNAMIC2);
    }

    /**
     * <p>項目[DRLDYNAMIC2]の値を設定する。</p>
     *
     * 項目標題：[Dynamic Dropdown]
     *
     * @param value 値
     */
    public void setDRLDYNAMIC2(String value) {
        super.put(formInfo.G1.CARD.DRLDYNAMIC2, value);
    }


}
