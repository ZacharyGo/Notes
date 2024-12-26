// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean.Practice7FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice7CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice7FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice7CardBeanBase(Practice7FormBean owner) {
        super(owner);
        formInfo = (Practice7FormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[Search Value]の値を取得する。</p>
     *
     * 項目標題：[Search Value (Price)]
     * @return 値
     */
    public BigDecimal getSEARCHPRICE() {
        return super.castValue(formInfo.G1.CARD.SEARCHPRICE);
    }

    /**
     * <p>項目[Search Value]の値を設定する。</p>
     *
     * 項目標題：[Search Value (Price)]
     *
     * @param value 値
     */
    public void setSEARCHPRICE(BigDecimal value) {
        super.put(formInfo.G1.CARD.SEARCHPRICE, value);
    }

    /**
     * <p>項目[Search Value]の値を設定する。</p>
     *
     * 項目標題：[Search Value (Price)]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setSEARCHPRICE(Number value) {
        super.put(formInfo.G1.CARD.SEARCHPRICE, value);
    }

}
