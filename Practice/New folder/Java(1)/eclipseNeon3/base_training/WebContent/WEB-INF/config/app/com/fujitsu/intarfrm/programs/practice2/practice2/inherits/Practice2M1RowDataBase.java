// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice2.practice2.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1Bean;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean.Practice2M1Info;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;

/**
 * <p>明細[M1]の行データクラス。</p>
 *
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 * 明細名：[明細部１]、フォーム名：[]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Practice2M1RowDataBase extends ListRowData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * 明細データ
     */
    protected Practice2M1Bean owner;

    /**
     * 明細の設計情報
     */
    protected Practice2M1Info listInfo;

    /**
     * <p>コンストラクタ。</p>
     *
     * @param owner 明細データ
     */
    protected Practice2M1RowDataBase(Practice2M1Bean owner) {
        super(owner.getInfo());
        this.owner = owner;
        listInfo = (Practice2M1Info)owner.getInfo();
    }

    /**
     * <p>項目[明細NO]の値を取得する。</p>
     *
     * 項目標題：[NO]
     * @return 値
     */
    public BigDecimal getMNO() {
        return super.castValue(listInfo.ITEM.MNO);
    }

    /**
     * <p>項目[明細NO]の値を設定する。</p>
     *
     * 項目標題：[NO]
     *
     * @param value 値
     */
    public void setMNO(BigDecimal value) {
        super.put(listInfo.ITEM.MNO, value);
    }

    /**
     * <p>項目[明細NO]の値を設定する。</p>
     *
     * 項目標題：[NO]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setMNO(Number value) {
        super.put(listInfo.ITEM.MNO, value);
    }

    /**
     * <p>項目[ID]の値を取得する。</p>
     *
     * 項目標題：[従業員番号]
     * @return 値
     */
    public BigDecimal getID() {
        return super.castValue(listInfo.ITEM.ID);
    }

    /**
     * <p>項目[ID]の値を設定する。</p>
     *
     * 項目標題：[従業員番号]
     *
     * @param value 値
     */
    public void setID(BigDecimal value) {
        super.put(listInfo.ITEM.ID, value);
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
        super.put(listInfo.ITEM.ID, value);
    }

    /**
     * <p>項目[名前]の値を取得する。</p>
     *
     * 項目標題：[従業員名]
     * @return 値
     */
    public String getMEI() {
        return super.castValue(listInfo.ITEM.MEI);
    }

    /**
     * <p>項目[名前]の値を設定する。</p>
     *
     * 項目標題：[従業員名]
     *
     * @param value 値
     */
    public void setMEI(String value) {
        super.put(listInfo.ITEM.MEI, value);
    }


}
