// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits;

import java.math.BigDecimal;
import java.sql.Timestamp;

import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean.Tyu01001FormInfo;

/**
 * <p>カード部のデータクラス。</p>
 *
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public abstract class Tyu01001CardBeanBase extends CardData {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * フォームの設計情報
     */
    private Tyu01001FormInfo formInfo;

    /**
     * コンストラクタ。
     * @param owner フォームデータ
     */
    protected Tyu01001CardBeanBase(Tyu01001FormBean owner) {
        super(owner);
        formInfo = (Tyu01001FormInfo)this.owner.INFO;
    }

    /**
     * <p>項目[Process Mode Name]の値を取得する。</p>
     *
     * 項目標題：[Process Mode Name]
     * @return 値
     */
    public String getSYOMODENAME() {
        return super.castValue(formInfo.G1.CARD.SYOMODENAME);
    }

    /**
     * <p>項目[Process Mode Name]の値を設定する。</p>
     *
     * 項目標題：[Process Mode Name]
     *
     * @param value 値
     */
    public void setSYOMODENAME(String value) {
        super.put(formInfo.G1.CARD.SYOMODENAME, value);
    }


    /**
     * <p>項目[Logon Date]の値を取得する。</p>
     *
     * 項目標題：[Logon Date]
     * @return 値
     */
    public Timestamp getLOGONDATE() {
        return super.castValue(formInfo.G1.CARD.LOGONDATE);
    }

    /**
     * <p>項目[Logon Date]の値を設定する。</p>
     *
     * 項目標題：[Logon Date]
     *
     * @param value 値
     */
    public void setLOGONDATE(Timestamp value) {
        super.put(formInfo.G1.CARD.LOGONDATE, value);
    }

    /**
     * <p>項目[Logon Date]の値を文字列から設定する。</p>
     *
     * 項目標題：[Logon Date]<br>
     * この項目のフォーマット書式[yyyy/mm/dd]の文字列を元に値を設定します。<br>
     * 空文字を指定した場合はnullを設定します。
     * この項目のフォーマッタが値をパースできない場合（無効な値の場合）は例外をスローします。<br>
     *
     * @param value 値（書式は[yyyy/mm/dd]）
     */
    public void setLOGONDATE(String value) {
        super.put(formInfo.G1.CARD.LOGONDATE, value);
    }

    /**
     * <p>項目[Logon User]の値を取得する。</p>
     *
     * 項目標題：[Logon User]
     * @return 値
     */
    public String getLOGONUSER() {
        return super.castValue(formInfo.G1.CARD.LOGONUSER);
    }

    /**
     * <p>項目[Logon User]の値を設定する。</p>
     *
     * 項目標題：[Logon User]
     *
     * @param value 値
     */
    public void setLOGONUSER(String value) {
        super.put(formInfo.G1.CARD.LOGONUSER, value);
    }


    /**
     * <p>項目[Customer ID]の値を取得する。</p>
     *
     * 項目標題：[Customer ID]
     * @return 値
     */
    public String getCUSID() {
        return super.castValue(formInfo.G1.CARD.CUSID);
    }

    /**
     * <p>項目[Customer ID]の値を設定する。</p>
     *
     * 項目標題：[Customer ID]
     *
     * @param value 値
     */
    public void setCUSID(String value) {
        super.put(formInfo.G1.CARD.CUSID, value);
    }


    /**
     * <p>項目[Customer Name]の値を取得する。</p>
     *
     * 項目標題：[Customer Name]
     * @return 値
     */
    public String getCUSNAME() {
        return super.castValue(formInfo.G1.CARD.CUSNAME);
    }

    /**
     * <p>項目[Customer Name]の値を設定する。</p>
     *
     * 項目標題：[Customer Name]
     *
     * @param value 値
     */
    public void setCUSNAME(String value) {
        super.put(formInfo.G1.CARD.CUSNAME, value);
    }


    /**
     * <p>項目[Area]の値を取得する。</p>
     *
     * 項目標題：[Area]
     * @return 値
     */
    public String getAREA() {
        return super.castValue(formInfo.G1.CARD.AREA);
    }

    /**
     * <p>項目[Area]の値を設定する。</p>
     *
     * 項目標題：[Area]
     *
     * @param value 値
     */
    public void setAREA(String value) {
        super.put(formInfo.G1.CARD.AREA, value);
    }


    /**
     * <p>項目[Telephone No.]の値を取得する。</p>
     *
     * 項目標題：[Telephone No.]
     * @return 値
     */
    public String getTELNO() {
        return super.castValue(formInfo.G1.CARD.TELNO);
    }

    /**
     * <p>項目[Telephone No.]の値を設定する。</p>
     *
     * 項目標題：[Telephone No.]
     *
     * @param value 値
     */
    public void setTELNO(String value) {
        super.put(formInfo.G1.CARD.TELNO, value);
    }


    /**
     * <p>項目[Email Address]の値を取得する。</p>
     *
     * 項目標題：[Email Address]
     * @return 値
     */
    public String getEMAIL() {
        return super.castValue(formInfo.G1.CARD.EMAIL);
    }

    /**
     * <p>項目[Email Address]の値を設定する。</p>
     *
     * 項目標題：[Email Address]
     *
     * @param value 値
     */
    public void setEMAIL(String value) {
        super.put(formInfo.G1.CARD.EMAIL, value);
    }


    /**
     * <p>項目[Email Delivery Request]の値を取得する。</p>
     *
     * 項目標題：[Email Delivery Request]
     * @return 値
     */
    public BigDecimal getDELIVEREMAIL() {
        return super.castValue(formInfo.G1.CARD.DELIVEREMAIL);
    }

    /**
     * <p>項目[Email Delivery Request]の値を設定する。</p>
     *
     * 項目標題：[Email Delivery Request]
     *
     * @param value 値
     */
    public void setDELIVEREMAIL(BigDecimal value) {
        super.put(formInfo.G1.CARD.DELIVEREMAIL, value);
    }

    /**
     * <p>項目[Email Delivery Request]の値を設定する。</p>
     *
     * 項目標題：[Email Delivery Request]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setDELIVEREMAIL(Number value) {
        super.put(formInfo.G1.CARD.DELIVEREMAIL, value);
    }

    /**
     * <p>項目[Gender]の値を取得する。</p>
     *
     * 項目標題：[Gender]
     * @return 値
     */
    public BigDecimal getSEX() {
        return super.castValue(formInfo.G1.CARD.SEX);
    }

    /**
     * <p>項目[Gender]の値を設定する。</p>
     *
     * 項目標題：[Gender]
     *
     * @param value 値
     */
    public void setSEX(BigDecimal value) {
        super.put(formInfo.G1.CARD.SEX, value);
    }

    /**
     * <p>項目[Gender]の値を設定する。</p>
     *
     * 項目標題：[Gender]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setSEX(Number value) {
        super.put(formInfo.G1.CARD.SEX, value);
    }

    /**
     * <p>項目[Birthday]の値を取得する。</p>
     *
     * 項目標題：[Birthday]
     * @return 値
     */
    public Timestamp getBIRTHYMD() {
        return super.castValue(formInfo.G1.CARD.BIRTHYMD);
    }

    /**
     * <p>項目[Birthday]の値を設定する。</p>
     *
     * 項目標題：[Birthday]
     *
     * @param value 値
     */
    public void setBIRTHYMD(Timestamp value) {
        super.put(formInfo.G1.CARD.BIRTHYMD, value);
    }

    /**
     * <p>項目[Birthday]の値を文字列から設定する。</p>
     *
     * 項目標題：[Birthday]<br>
     * この項目のフォーマット書式[yyyy/mm/dd]の文字列を元に値を設定します。<br>
     * 空文字を指定した場合はnullを設定します。
     * この項目のフォーマッタが値をパースできない場合（無効な値の場合）は例外をスローします。<br>
     *
     * @param value 値（書式は[yyyy/mm/dd]）
     */
    public void setBIRTHYMD(String value) {
        super.put(formInfo.G1.CARD.BIRTHYMD, value);
    }

    /**
     * <p>項目[Job]の値を取得する。</p>
     *
     * 項目標題：[Job]
     * @return 値
     */
    public String getJOB() {
        return super.castValue(formInfo.G1.CARD.JOB);
    }

    /**
     * <p>項目[Job]の値を設定する。</p>
     *
     * 項目標題：[Job]
     *
     * @param value 値
     */
    public void setJOB(String value) {
        super.put(formInfo.G1.CARD.JOB, value);
    }


    /**
     * <p>項目[Store ID]の値を取得する。</p>
     *
     * 項目標題：[Store ID]
     * @return 値
     */
    public String getSTOREID() {
        return super.castValue(formInfo.G1.CARD.STOREID);
    }

    /**
     * <p>項目[Store ID]の値を設定する。</p>
     *
     * 項目標題：[Store ID]
     *
     * @param value 値
     */
    public void setSTOREID(String value) {
        super.put(formInfo.G1.CARD.STOREID, value);
    }


    /**
     * <p>項目[Store Name]の値を取得する。</p>
     *
     * 項目標題：[Store Name]
     * @return 値
     */
    public String getSTORENAME() {
        return super.castValue(formInfo.G1.CARD.STORENAME);
    }

    /**
     * <p>項目[Store Name]の値を設定する。</p>
     *
     * 項目標題：[Store Name]
     *
     * @param value 値
     */
    public void setSTORENAME(String value) {
        super.put(formInfo.G1.CARD.STORENAME, value);
    }


    /**
     * <p>項目[Point]の値を取得する。</p>
     *
     * 項目標題：[Point]
     * @return 値
     */
    public BigDecimal getPOINT() {
        return super.castValue(formInfo.G1.CARD.POINT);
    }

    /**
     * <p>項目[Point]の値を設定する。</p>
     *
     * 項目標題：[Point]
     *
     * @param value 値
     */
    public void setPOINT(BigDecimal value) {
        super.put(formInfo.G1.CARD.POINT, value);
    }

    /**
     * <p>項目[Point]の値を設定する。</p>
     *
     * 項目標題：[Point]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setPOINT(Number value) {
        super.put(formInfo.G1.CARD.POINT, value);
    }

    /**
     * <p>項目[Point Rate]の値を取得する。</p>
     *
     * 項目標題：[Point Rate]
     * @return 値
     */
    public BigDecimal getPOINTRATE() {
        return super.castValue(formInfo.G1.CARD.POINTRATE);
    }

    /**
     * <p>項目[Point Rate]の値を設定する。</p>
     *
     * 項目標題：[Point Rate]
     *
     * @param value 値
     */
    public void setPOINTRATE(BigDecimal value) {
        super.put(formInfo.G1.CARD.POINTRATE, value);
    }

    /**
     * <p>項目[Point Rate]の値を設定する。</p>
     *
     * 項目標題：[Point Rate]<br>
     * BigDecimal以外の数値型を元に値を設定します。<br>
     *
     * @param value 値
     */
    public void setPOINTRATE(Number value) {
        super.put(formInfo.G1.CARD.POINTRATE, value);
    }

}
