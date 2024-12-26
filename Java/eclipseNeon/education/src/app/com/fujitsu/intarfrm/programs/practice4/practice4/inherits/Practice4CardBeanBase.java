// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice4.practice4.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean.Practice4FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE4]、フォーム名：[演習４]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice4CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Practice4FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Practice4CardBeanBase(Practice4FormBean owner) {
        super(owner);
        formInfo = (Practice4FormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[検索値(値段)]の値を取得する。</p>
     *
     * 項目標題：[検索値(値段)]
     * @return 値
     */
    public BigDecimal getSEARCHPRICE() {
        return super.castValue(formInfo.G1.CARD.SEARCHPRICE);
    }

    /**
     * <p>項目[検索値(値段)]の値を設定する。</p>
     *
     * 項目標題：[検索値(値段)]
     *
     * @param value 値
     */
    public void setSEARCHPRICE(BigDecimal value) {
        super.put(formInfo.G1.CARD.SEARCHPRICE, value);
    }

    /**
     * <p>項目[検索値(値段)]の値を設定する。</p>
     *
     * 項目標題：[検索値(値段)]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setSEARCHPRICE(Number value) {
        super.put(formInfo.G1.CARD.SEARCHPRICE, value);
    }

}
