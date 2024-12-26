// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice6.practice6a.inherits;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean.Practice6aFormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE6A]、フォーム名：[演習６ー１]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice6aCardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice6aFormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice6aCardBeanBase(Practice6aFormBean owner) {
        super(owner);
        formInfo = (Practice6aFormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[ログインID]の値を取得する。</p>
     *
     * 項目標題：[ログインID]
     * @return 値
     */
    public String getLOGINID() {
        return super.castValue(formInfo.G1.CARD.LOGINID);
    }

    /**
     * <p>項目[ログインID]の値を設定する。</p>
     *
     * 項目標題：[ログインID]
     *
     * @param value 値
     */
    public void setLOGINID(String value) {
        super.put(formInfo.G1.CARD.LOGINID, value);
    }


    /**
     * <p>項目[パスワード]の値を取得する。</p>
     *
     * 項目標題：[パスワード]
     * @return 値
     */
    public String getPASSWORD() {
        return super.castValue(formInfo.G1.CARD.PASSWORD);
    }

    /**
     * <p>項目[パスワード]の値を設定する。</p>
     *
     * 項目標題：[パスワード]
     *
     * @param value 値
     */
    public void setPASSWORD(String value) {
        super.put(formInfo.G1.CARD.PASSWORD, value);
    }


}
