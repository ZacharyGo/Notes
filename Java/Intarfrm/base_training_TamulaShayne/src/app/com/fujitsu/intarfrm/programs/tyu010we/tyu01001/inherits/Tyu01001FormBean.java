// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.beans.Tyu01001CardBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.beans.ProjectFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.configurations.IfmInheritSourceCode;
import com.fujitsu.intarfrm.helpers.commons.items.ActionTargetType;
import com.fujitsu.intarfrm.helpers.commons.items.ControlDisplayMode;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfoCollection;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupType;
import com.fujitsu.intarfrm.helpers.commons.items.FormInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemConstant;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeType;
import com.fujitsu.intarfrm.helpers.commons.items.ImeMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicConditionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[Customer Master Maintenance]のデータクラス。<p>
 *
 * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Tyu01001FormBean extends ProjectFormDataSet<Tyu01001FormBean.Tyu01001FormInfo, Tyu01001CardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Tyu01001FormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Tyu01001FormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Tyu01001CardBean(this);
        super.setCard(this.CARD);

    }

    /**
     * <p>フォーム[Customer Master Maintenance]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01001FormInfo extends FormInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループ[G1]の定義情報。</p>
         * 
         * グループ標題：[グループ１]<br>
         * このグループに属するカード項目、明細、明細項目の情報を保持します。
         */
        public final Tyu01001G1Info G1;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[Add]<br>
         */
        public final FormModeInfo MODE1;
        
        /**
         * <p>モード[MODE2]の定義情報。</p>
         * 
         * モード標題：[EditMode]<br>
         */
        public final FormModeInfo MODE2;
        

        /**
         * <p>フォームアクションの定義情報。</p>
         */
        public FormActionInfoCollection formActions;

        /**
         * <p>コンストラクタ。</p>
         * 
         * @param bean このフォームのデータ
         * @param language 言語情報
         */
        public Tyu01001FormInfo(Tyu01001FormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("tyu010we");
            super.setFormId("tyu01001");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("tyu01001");
            this.getFormActions().put("_Load", _Load);
            
            // コード参照アクション(画面共通アクション)
            FormActionInfo _Code_ReferenceActionInfo = new FormActionInfo("_Code_Reference");
            _Code_ReferenceActionInfo.setActionId("_CODE_REFERENCE");
            _Code_ReferenceActionInfo.setSubmitAction(true);
            _Code_ReferenceActionInfo.setValidation(false);
            this.getFormActions().put("_CODE_REFERENCE", _Code_ReferenceActionInfo);
            
            // コード取得アクション(画面共通アクション)
            FormActionInfo _Code_GetActionInfo = new FormActionInfo("_Code_Get");
            _Code_GetActionInfo.setActionId("_CODE_GET");
            _Code_GetActionInfo.setSubmitAction(true);
            _Code_GetActionInfo.setValidation(false);
            this.getFormActions().put("_CODE_GET", _Code_GetActionInfo);

            this.formActions = this.getFormActions();
            this.formActions.putAll(new FormActionInfos(this));

            //グループG1情報生成
            this.G1 = new Tyu01001G1Info(this);
            this.G1.getItems().sort();

            //モード1情報生成
            this.MODE1 = new FormModeInfo(this.getModes(), FormModeType.MODE1);
            super.getModes().put(FormModeType.MODE1, this.MODE1);
            
            //モード2情報生成
            this.MODE2 = new FormModeInfo(this.getModes(), FormModeType.MODE2);
            super.getModes().put(FormModeType.MODE2, this.MODE2);
            
            //有効モードを設定
            this.setCurrentMode(this.MODE1);
            //有効グループを設定
            this.setCurrentGroup(this.G1);

            //項目情報のソート
            this.getItems().sort();
        }
    }

    /**
     * フォームアクションの定義情報
     */
    public class FormActionInfos extends FormActionInfoCollection {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * フォームアクション[TYU01001_DBU]
         */
        public FormActionInfo tyu01001_dbu = new FormActionInfo("TYU01001_DBU");
        {
            tyu01001_dbu.setActionId("DBU");
            tyu01001_dbu.setActionTarget(ActionTargetType.EntireForm);
            tyu01001_dbu.setSubmitAction(true);
            tyu01001_dbu.setValidation(true);
            tyu01001_dbu.setForwardFormId("tyu01002");
        }
        
        /**
         * フォームアクション[TYU01001_FRM_BACK]
         */
        public FormActionInfo tyu01001_frm_back = new FormActionInfo("TYU01001_FRM_BACK");
        {
            tyu01001_frm_back.setActionId("FRM");
            tyu01001_frm_back.setActionTarget(ActionTargetType.EntireForm);
            tyu01001_frm_back.setSubmitAction(false);
            tyu01001_frm_back.setValidation(false);
            tyu01001_frm_back.setForwardFormId("tyu01002");
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Tyu01001FormInfo owner) {

            owner.getFormActions().put("TYU01001_DBU", tyu01001_dbu);
            owner.getFormActions().put("TYU01001_FRM_BACK", tyu01001_frm_back);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01001G1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Tyu01001G1CardItem CARD;

    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Tyu01001G1Info(Tyu01001FormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Tyu01001G1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Tyu01001G1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Tyu01001G1CardItem(Tyu01001G1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.SYOMODENAME = super.items().get("SYOMODENAME");
                this.LOGONDATE = super.items().get("LOGONDATE");
                this.LOGONUSER = super.items().get("LOGONUSER");
                this.CUSID = super.items().get("CUSID");
                this.CUSNAME = super.items().get("CUSNAME");
                this.AREA = super.items().get("AREA");
                this.TELNO = super.items().get("TELNO");
                this.EMAIL = super.items().get("EMAIL");
                this.DELIVEREMAIL = super.items().get("DELIVEREMAIL");
                this.SEX = super.items().get("SEX");
                this.BIRTHYMD = super.items().get("BIRTHYMD");
                this.JOB = super.items().get("JOB");
                this.STOREID = super.items().get("STOREID");
                this.STORENAME = super.items().get("STORENAME");
                this.POINT = super.items().get("POINT");
                this.POINTRATE = super.items().get("POINTRATE");
                this.BTNENTER = super.items().get("BTNENTER");
                this.BTNBACK = super.items().get("BTNBACK");
            }

            /**
             * <p>項目[Process Mode Name]（標題：Process Mode Name）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=100, id="syomodename", name="Process Mode Name", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=10, defaultValue="Edit")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo SYOMODENAME;

            /**
             * <p>項目[Logon Date]（標題：LogonDate）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=200, id="logondate", name="Logon Date", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="D", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=0, format="52")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo LOGONDATE;

            /**
             * <p>項目[Logon User]（標題：LogonUser）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=300, id="logonuser", name="Logon User", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=30, defaultValue="Fujitsu Tarou")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo LOGONUSER;

            /**
             * <p>項目[Customer ID]（標題：CustomerID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=400, id="cusid", name="Customer ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SB", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=5, ime=ImeMode.OFF)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.DISABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo CUSID;

            /**
             * <p>項目[Customer Name]（標題：CustomerName）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=500, id="cusname", name="Customer Name", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=30, ime=ImeMode.ON)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo CUSNAME;

            /**
             * <p>項目[Area]（標題：Area）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=600, id="area", name="Area", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN3", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=10, ime=ImeMode.ON, maxLength=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo AREA;

            /**
             * <p>項目[Telephone No.]（標題：TelephoneNo.）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=700, id="telno", name="Telephone No.", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SC", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=17, minimum=6, ime=ImeMode.OFF)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo TELNO;

            /**
             * <p>項目[Email Address]（標題：Email Address）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=800, id="email", name="Email Address", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SP1", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=50, ime=ImeMode.OFF)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo EMAIL;

            /**
             * <p>項目[Email Delivery Request]（標題：Email Delivery Request）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[CHK]（チェックボックス）<br>
             */
            @ItemBasicInfo(sortNo=900, id="deliveremail", name="Email Delivery Request", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.CHK)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=1, format="10")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo DELIVEREMAIL;

            /**
             * <p>項目[Gender]（標題：Gender）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[RDO]（ラジオボタン）<br>
             */
            @ItemBasicInfo(sortNo=1000, id="sex", name="Gender", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.RDO)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicConditionInfo(conditionType=com.fujitsu.intarfrm.conditions.Sexdata.class, showKeyItem=false, useStaticItem=false)
            @ItemBasicDataInfo(total=1, format="10")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo SEX;

            /**
             * <p>項目[Birthday]（標題：Birthday）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=1100, id="birthymd", name="Birthday", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="D", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=0, format="52", ime=ImeMode.OFF, autoTab=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo BIRTHYMD;

            /**
             * <p>項目[Job]（標題：Job）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=1200, id="job", name="Job", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SB", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicConditionInfo(conditionType=com.fujitsu.intarfrm.conditions.Jobdata.class, showKeyItem=false, useStaticItem=true)
            @ItemBasicDataInfo(total=2)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo JOB;

            /**
             * <p>項目[Store ID]（標題：StoreID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXR]（テキストボックスリードオンリー）<br>
             */
            @ItemBasicInfo(sortNo=1300, id="storeid", name="Store ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SB", control=ItemControl.TXR)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=5)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo STOREID;

            /**
             * <p>項目[Store Name]（標題：StoreName）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXR]（テキストボックスリードオンリー）<br>
             */
            @ItemBasicInfo(sortNo=1400, id="storename", name="Store Name", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.TXR)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=30)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo STORENAME;

            /**
             * <p>項目[Point]（標題：Point）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=1500, id="point", name="Point", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=7, format="11", ime=ImeMode.OFF, maxLength=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo POINT;

            /**
             * <p>項目[Point Rate]（標題：PointRate）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=1600, id="pointrate", name="Point Rate", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NB", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=6, fraction=2, format="31", ime=ImeMode.OFF)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo POINTRATE;

            /**
             * <p>項目[Enter]（標題：Enter）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=1700, id="btnenter", name="Enter", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01001_DBU")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNENTER;

            /**
             * <p>項目[Back]（標題：Back）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=1800, id="btnback", name="Back", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01001_FRM_BACK")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNBACK;

        }
    }





    /**
     * フォームグループの定義情報
     */
    public static class Tyu01001FormGroups {
        /**
         * フォームグループ[G1]:[Customer Master Maintenance]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Tyu01001FormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
        /**
         * フォームモード[2]:[MODE2]
         */
        public static final FormModeType Mode2 = FormModeType.MODE2;
    }

}
