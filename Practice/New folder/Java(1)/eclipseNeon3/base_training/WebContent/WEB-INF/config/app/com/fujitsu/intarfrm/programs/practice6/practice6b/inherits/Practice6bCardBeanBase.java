// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice6.practice6b.inherits;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bFormBean.Practice6bFormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice6bCardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice6bFormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice6bCardBeanBase(Practice6bFormBean owner) {
        super(owner);
        formInfo = (Practice6bFormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[説明]の値を取得する。</p>
     *
     * 項目標題：[説明]
     * @return 値
     */
    public String getDESCRIPTION() {
        return super.castValue(formInfo.G1.CARD.DESCRIPTION);
    }

    /**
     * <p>項目[説明]の値を設定する。</p>
     *
     * 項目標題：[説明]
     *
     * @param value 値
     */
    public void setDESCRIPTION(String value) {
        super.put(formInfo.G1.CARD.DESCRIPTION, value);
    }


}
