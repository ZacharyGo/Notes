// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice2.practice2.inherits;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice2CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice2FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice2CardBeanBase(Practice2FormBean owner) {
        super(owner);
        formInfo = (Practice2FormInfo)this.owner.INFO;
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


}
