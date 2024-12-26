// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice3.practice3a.inherits;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean.Practice3aFormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE3A]、フォーム名：[演習３－１]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice3aCardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice3aFormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice3aCardBeanBase(Practice3aFormBean owner) {
        super(owner);
        formInfo = (Practice3aFormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[従業員名]の値を取得する。</p>
     *
     * 項目標題：[従業員名]
     * @return 値
     */
    public String getCUSNAME() {
        return super.castValue(formInfo.G1.CARD.CUSNAME);
    }

    /**
     * <p>項目[従業員名]の値を設定する。</p>
     *
     * 項目標題：[従業員名]
     *
     * @param value 値
     */
    public void setCUSNAME(String value) {
        super.put(formInfo.G1.CARD.CUSNAME, value);
    }


}
