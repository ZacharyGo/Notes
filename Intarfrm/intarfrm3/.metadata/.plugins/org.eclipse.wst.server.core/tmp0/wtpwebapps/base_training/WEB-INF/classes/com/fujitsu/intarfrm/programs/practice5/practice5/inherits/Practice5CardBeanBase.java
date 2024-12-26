// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice5.practice5.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5FormBean.Practice5FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice5CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice5FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice5CardBeanBase(Practice5FormBean owner) {
        super(owner);
        formInfo = (Practice5FormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[部署]の値を取得する。</p>
     *
     * 項目標題：[部署]
     * @return 値
     */
    public String getDEPARTMENT() {
        return super.castValue(formInfo.G1.CARD.DEPARTMENT);
    }

    /**
     * <p>項目[部署]の値を設定する。</p>
     *
     * 項目標題：[部署]
     *
     * @param value 値
     */
    public void setDEPARTMENT(String value) {
        super.put(formInfo.G1.CARD.DEPARTMENT, value);
    }


    /**
     * <p>項目[ID]の値を取得する。</p>
     *
     * 項目標題：[従業員番号]
     * @return 値
     */
    public BigDecimal getID() {
        return super.castValue(formInfo.G1.CARD.ID);
    }

    /**
     * <p>項目[ID]の値を設定する。</p>
     *
     * 項目標題：[従業員番号]
     *
     * @param value 値
     */
    public void setID(BigDecimal value) {
        super.put(formInfo.G1.CARD.ID, value);
    }

    /**
     * <p>項目[ID]の値を設定する。</p>
     *
     * 項目標題：[従業員番号]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setID(Number value) {
        super.put(formInfo.G1.CARD.ID, value);
    }

    /**
     * <p>項目[名前]の値を取得する。</p>
     *
     * 項目標題：[従業員名]
     * @return 値
     */
    public String getMEI() {
        return super.castValue(formInfo.G1.CARD.MEI);
    }

    /**
     * <p>項目[名前]の値を設定する。</p>
     *
     * 項目標題：[従業員名]
     *
     * @param value 値
     */
    public void setMEI(String value) {
        super.put(formInfo.G1.CARD.MEI, value);
    }


}
