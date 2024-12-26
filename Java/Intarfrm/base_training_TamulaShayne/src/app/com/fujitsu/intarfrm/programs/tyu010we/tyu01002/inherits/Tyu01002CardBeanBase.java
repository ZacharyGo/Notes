// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits;

import java.sql.Timestamp;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean.Tyu01002FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Tyu01002CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Tyu01002FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Tyu01002CardBeanBase(Tyu01002FormBean owner) {
        super(owner);
        formInfo = (Tyu01002FormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[LogonDate]の値を取得する。</p>
     *
     * 項目標題：[LogonDate]
     * @return 値
     */
    public Timestamp getLOGONDATE() {
        return super.castValue(formInfo.G1.CARD.LOGONDATE);
    }

    /**
     * <p>項目[LogonDate]の値を設定する。</p>
     *
     * 項目標題：[LogonDate]
     *
     * @param value 値
     */
    public void setLOGONDATE(Timestamp value) {
        super.put(formInfo.G1.CARD.LOGONDATE, value);
    }

    /**
     * <p>項目[LogonDate]の値を文字列から設定する。</p>
     *
     * 項目標題：[LogonDate]<br>
     * この項目のフォーマット書式[hh:mm:ss(～23:59:59)]の文字列を元に値を設定します。<br>
     * 空文字を指定した場合はnullを設定します。
     * この項目のフォーマッタが値をパースできない場合（無効な値の場合）は例外をスローします。<br>
     *
     * @param value 値（書式は[hh:mm:ss(～23:59:59)]）
     */
    public void setLOGONDATE(String value) {
        super.put(formInfo.G1.CARD.LOGONDATE, value);
    }

    /**
     * <p>項目[LogonUser]の値を取得する。</p>
     *
     * 項目標題：[LogonUser]
     * @return 値
     */
    public String getLOGONUSER() {
        return super.castValue(formInfo.G1.CARD.LOGONUSER);
    }

    /**
     * <p>項目[LogonUser]の値を設定する。</p>
     *
     * 項目標題：[LogonUser]
     *
     * @param value 値
     */
    public void setLOGONUSER(String value) {
        super.put(formInfo.G1.CARD.LOGONUSER, value);
    }


    /**
     * <p>項目[StoreID]の値を取得する。</p>
     *
     * 項目標題：[StoreID]
     * @return 値
     */
    public String getSTOREID() {
        return super.castValue(formInfo.G1.CARD.STOREID);
    }

    /**
     * <p>項目[StoreID]の値を設定する。</p>
     *
     * 項目標題：[StoreID]
     *
     * @param value 値
     */
    public void setSTOREID(String value) {
        super.put(formInfo.G1.CARD.STOREID, value);
    }


    /**
     * <p>項目[StoreName]の値を取得する。</p>
     *
     * 項目標題：[StoreName]
     * @return 値
     */
    public String getSTORENAME() {
        return super.castValue(formInfo.G1.CARD.STORENAME);
    }

    /**
     * <p>項目[StoreName]の値を設定する。</p>
     *
     * 項目標題：[StoreName]
     *
     * @param value 値
     */
    public void setSTORENAME(String value) {
        super.put(formInfo.G1.CARD.STORENAME, value);
    }


}
