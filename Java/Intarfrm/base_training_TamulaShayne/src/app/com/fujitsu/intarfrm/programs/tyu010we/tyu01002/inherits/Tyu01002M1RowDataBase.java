// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1Bean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002M1Info;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;

/**
 * <p>明細[M1]の行データクラス。</p>
 *
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 * 明細名：[明細部１]、フォーム名：[Customer List]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Tyu01002M1RowDataBase extends ListRowData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * 明細データ
     */
    protected Tyu01002M1Bean owner;

    /**
     * 明細の設計情報
     */
    protected Tyu01002M1Info listInfo;

    /**
     * <p>コンストラクタ。</p>
     *
     * @param owner 明細データ
     */
    protected Tyu01002M1RowDataBase(Tyu01002M1Bean owner) {
        super(owner.getInfo());
        this.owner = owner;
        listInfo = (Tyu01002M1Info)owner.getInfo();
    }

    /**
     * <p>項目[ListNo.]の値を取得する。</p>
     *
     * 項目標題：[ListNo.]
     * @return 値
     */
    public BigDecimal getMEINO() {
        return super.castValue(listInfo.ITEM.MEINO);
    }

    /**
     * <p>項目[ListNo.]の値を設定する。</p>
     *
     * 項目標題：[ListNo.]
     *
     * @param value 値
     */
    public void setMEINO(BigDecimal value) {
        super.put(listInfo.ITEM.MEINO, value);
    }

    /**
     * <p>項目[ListNo.]の値を設定する。</p>
     *
     * 項目標題：[ListNo.]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setMEINO(Number value) {
        super.put(listInfo.ITEM.MEINO, value);
    }

    /**
     * <p>項目[CustomerID]の値を取得する。</p>
     *
     * 項目標題：[CustomerID]
     * @return 値
     */
    public String getCUSID() {
        return super.castValue(listInfo.ITEM.CUSID);
    }

    /**
     * <p>項目[CustomerID]の値を設定する。</p>
     *
     * 項目標題：[CustomerID]
     *
     * @param value 値
     */
    public void setCUSID(String value) {
        super.put(listInfo.ITEM.CUSID, value);
    }


    /**
     * <p>項目[CustomerName]の値を取得する。</p>
     *
     * 項目標題：[CustomerName]
     * @return 値
     */
    public String getCUSNAME() {
        return super.castValue(listInfo.ITEM.CUSNAME);
    }

    /**
     * <p>項目[CustomerName]の値を設定する。</p>
     *
     * 項目標題：[CustomerName]
     *
     * @param value 値
     */
    public void setCUSNAME(String value) {
        super.put(listInfo.ITEM.CUSNAME, value);
    }


    /**
     * <p>項目[Email Address]の値を取得する。</p>
     *
     * 項目標題：[Email Address]
     * @return 値
     */
    public String getEMAIL() {
        return super.castValue(listInfo.ITEM.EMAIL);
    }

    /**
     * <p>項目[Email Address]の値を設定する。</p>
     *
     * 項目標題：[Email Address]
     *
     * @param value 値
     */
    public void setEMAIL(String value) {
        super.put(listInfo.ITEM.EMAIL, value);
    }


    /**
     * <p>項目[TelephoneNo.]の値を取得する。</p>
     *
     * 項目標題：[TelephoneNo.]
     * @return 値
     */
    public String getTELNO() {
        return super.castValue(listInfo.ITEM.TELNO);
    }

    /**
     * <p>項目[TelephoneNo.]の値を設定する。</p>
     *
     * 項目標題：[TelephoneNo.]
     *
     * @param value 値
     */
    public void setTELNO(String value) {
        super.put(listInfo.ITEM.TELNO, value);
    }


}
