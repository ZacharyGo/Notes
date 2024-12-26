// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002CardBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1Bean;
import com.fujitsu.intarfrm.skeletons.projectCommons.beans.ProjectFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
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
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicCodeCheckInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicCodeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[Customer Master List]のデータクラス。<p>
 *
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Tyu01002FormBean extends ProjectFormDataSet<Tyu01002FormBean.Tyu01002FormInfo, Tyu01002CardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>明細[M1]のデータオブジェクト。</p>
     *
     * 明細標題：[Customer List]<br>
     * 明細モード：[明細モード１（ページ毎のデータ取得）]<br>
     * 表示件数：[10]<br>
     * 明細のデータ保持及び明細定義情報参照が可能です。<br>
     */
    public final Tyu01002M1Bean M1;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Tyu01002FormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Tyu01002FormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Tyu01002CardBean(this);
        super.setCard(this.CARD);

        //明細[M1]データ生成
        this.M1 = new Tyu01002M1Bean(this);
        this.getListDataMap().put(FormBorderType.M1, this.M1);

    }

    /**
     * <p>フォーム[Customer Master List]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01002FormInfo extends FormInfo {

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
        public final Tyu01002G1Info G1;

        /**
         * <p>グループ[G2]の定義情報。</p>
         * 
         * グループ標題：[Group 2]<br>
         * このグループに属するカード項目、明細、明細項目の情報を保持します。
         */
        public final Tyu01002G2Info G2;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[モード１]<br>
         */
        public final FormModeInfo MODE1;
        
        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[Customer List]<br>
         * 明細モード：[明細モード１（ページ毎のデータ取得）]<br>
         * 表示件数：[10]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するグループ情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Tyu01002M1Info M1;


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
        public Tyu01002FormInfo(Tyu01002FormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("tyu010we");
            super.setFormId("tyu01002");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("tyu01002");
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

            // 明細M1ページング(画面明細共通アクション)
            FormActionInfo m1_Paging = new FormActionInfo("_M1_PAGING");
            m1_Paging.setActionTarget(ActionTargetType.FormList);
            m1_Paging.setSubmitAction(true);
            m1_Paging.setActionId("_PAGING_");
            m1_Paging.setAsync(true);
            m1_Paging.setValidation(false);
            m1_Paging.setTargetBorder(FormBorderType.M1);
            this.getFormActions().put("_M1_PAGING", m1_Paging);
            
            // 明細M1ソーティング(画面明細共通アクション)
            FormActionInfo m1_Sorting = new FormActionInfo("_M1_SORTING");
            m1_Sorting.setActionTarget(ActionTargetType.FormList);
            m1_Sorting.setSubmitAction(true);
            m1_Sorting.setActionId("_SORTING_");
            m1_Sorting.setAsync(true);
            m1_Sorting.setValidation(false);
            m1_Sorting.setTargetBorder(FormBorderType.M1);
            this.getFormActions().put("_M1_SORTING", m1_Sorting);
            
            this.formActions = this.getFormActions();
            this.formActions.putAll(new FormActionInfos(this));

            //グループG1情報生成
            this.G1 = new Tyu01002G1Info(this);
            this.G1.getItems().sort();
            //グループG2情報生成
            this.G2 = new Tyu01002G2Info(this);
            this.G2.getItems().sort();

            //モード1情報生成
            this.MODE1 = new FormModeInfo(this.getModes(), FormModeType.MODE1);
            super.getModes().put(FormModeType.MODE1, this.MODE1);
            
            //有効モードを設定
            this.setCurrentMode(this.MODE1);
            //有効グループを設定
            this.setCurrentGroup(this.G1);

            //明細M1情報生成
            this.M1 = this.G2.M1;
            this.M1.getItems().sort();
            
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
         * フォームアクション[TYU01002_FRM_Add]
         */
        public FormActionInfo tyu01002_frm_add = new FormActionInfo("TYU01002_FRM_ADD");
        {
            tyu01002_frm_add.setActionId("FRM");
            tyu01002_frm_add.setActionTarget(ActionTargetType.EntireForm);
            tyu01002_frm_add.setSubmitAction(true);
            tyu01002_frm_add.setValidation(false);
            tyu01002_frm_add.setForwardFormId("tyu01001");
        }
        
        /**
         * フォームアクション[TYU01002_FRM_DEL]
         */
        public FormActionInfo tyu01002_frm_del = new FormActionInfo("TYU01002_FRM_DEL");
        {
            tyu01002_frm_del.setActionId("FRM");
            tyu01002_frm_del.setActionTarget(ActionTargetType.EntireForm);
            tyu01002_frm_del.setSubmitAction(true);
            tyu01002_frm_del.setValidation(false);
            tyu01002_frm_del.setForwardFormId("tyu01001");
        }
        
        /**
         * フォームアクション[TYU01002_FRM_UPD]
         */
        public FormActionInfo tyu01002_frm_upd = new FormActionInfo("TYU01002_FRM_UPD");
        {
            tyu01002_frm_upd.setActionId("FRM");
            tyu01002_frm_upd.setActionTarget(ActionTargetType.EntireForm);
            tyu01002_frm_upd.setSubmitAction(true);
            tyu01002_frm_upd.setValidation(false);
            tyu01002_frm_upd.setForwardFormId("tyu01001");
        }
        
        /**
         * フォームアクション[TYU01002_GBFR_CANCEL]
         */
        public FormActionInfo tyu01002_gbfr_cancel = new FormActionInfo("TYU01002_GBFR_CANCEL");
        {
            tyu01002_gbfr_cancel.setActionId("GBFR");
            tyu01002_gbfr_cancel.setActionTarget(ActionTargetType.EntireForm);
            tyu01002_gbfr_cancel.setSubmitAction(false);
            tyu01002_gbfr_cancel.setValidation(false);
        }
        
        /**
         * フォームアクション[TYU01002_GNXT_DEF]
         */
        public FormActionInfo tyu01002_gnxt_def = new FormActionInfo("TYU01002_GNXT_DEF");
        {
            tyu01002_gnxt_def.setActionId("GNXT");
            tyu01002_gnxt_def.setActionTarget(ActionTargetType.EntireForm);
            tyu01002_gnxt_def.setSubmitAction(true);
            tyu01002_gnxt_def.setValidation(true);
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Tyu01002FormInfo owner) {

            owner.getFormActions().put("TYU01002_FRM_ADD", tyu01002_frm_add);
            owner.getFormActions().put("TYU01002_FRM_DEL", tyu01002_frm_del);
            owner.getFormActions().put("TYU01002_FRM_UPD", tyu01002_frm_upd);
            owner.getFormActions().put("TYU01002_GBFR_CANCEL", tyu01002_gbfr_cancel);
            owner.getFormActions().put("TYU01002_GNXT_DEF", tyu01002_gnxt_def);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01002G1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Tyu01002G1CardItem CARD;

    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Tyu01002G1Info(Tyu01002FormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Tyu01002G1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Tyu01002G1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Tyu01002G1CardItem(Tyu01002G1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.LOGONDATE = super.items().get("LOGONDATE");
                this.LOGONUSER = super.items().get("LOGONUSER");
                this.BTNADD = super.items().get("BTNADD");
                this.STOREID = super.items().get("STOREID");
                this.BTNSEARCH = super.items().get("BTNSEARCH");
                this.STORENAME = super.items().get("STORENAME");
                this.BTNDEF = super.items().get("BTNDEF");
            }

            /**
             * <p>項目[Logon Date]（標題：Logon Date）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=100, id="logondate", name="Logon Date", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="D", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=0, format="56")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo LOGONDATE;

            /**
             * <p>項目[Logon User]（標題：Logon User）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=200, id="logonuser", name="Logon User", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=30, defaultValue="Fujitsu Tarou")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo LOGONUSER;

            /**
             * <p>項目[Button New]（標題：New）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=300, id="btnadd", name="Button New", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01002_FRM_ADD")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNADD;

            /**
             * <p>項目[Store ID]（標題：Store ID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=400, id="storeid", name="Store ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SB", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=5)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo STOREID;

            /**
             * <p>項目[Button Search]（標題：Search）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=500, id="btnsearch", name="Button Search", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicCodeInfo(id="STORESCH", code=com.fujitsu.intarfrm.programs.tyu010we.tyu01002.codes.BtnsearchCodeAction.class, codeType=CodeType.COD, autoCodeNameGet = false)
            @ItemBasicCodeCheckInfo(validation=false, overwrite=false)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNSEARCH;

            /**
             * <p>項目[Store Name]（標題：Store Name）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXR]（テキストボックスリードオンリー）<br>
             */
            @ItemBasicInfo(sortNo=600, id="storename", name="Store Name", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.TXR)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=30)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo STORENAME;

            /**
             * <p>項目[Button Confirm]（標題：Confirm）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=700, id="btndef", name="Button Confirm", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01002_GNXT_DEF")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDEF;

        }
    }

    /**
     * <p>グループ[G2]の設計定義情報クラス。</p>
     * 
     * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
     * グループID：[G2]、グループ標題：[Group 2]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01002G2Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Tyu01002G2CardItem CARD;

        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[Customer List]<br>
         * 明細モード：[明細モード１（ページ毎のデータ取得）]<br>
         * 表示件数：[10]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するフォーム情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Tyu01002M1Info M1;
    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Tyu01002G2Info(Tyu01002FormInfo owner) {
            super(FormGroupType.G2, owner);
            //グループ内カード情報生成
            this.CARD = new Tyu01002G2CardItem(this);
            //明細情報生成
            this.M1 = new Tyu01002M1Info(this);
        }

        /**
         * <p>グループ[G2]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
         * グループID：[G2]、グループ標題：[Group 2]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Tyu01002G2CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Tyu01002G2CardItem(Tyu01002G2Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.BTNCANCEL = super.items().get("BTNCANCEL");
            }

            /**
             * <p>項目[Button Cancel]（標題：Cancel）の定義情報。</p>
             * 
             * グループ：[G2]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=800, id="btncancel", name="Button Cancel", group=FormGroupType.G2, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01002_GBFR_CANCEL")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNCANCEL;

        }
    }



    /**
     * <p>明細[M1]の設計定義情報クラス。</p>
     * 
     * フォームID：[TYU01002]、フォーム名：[Customer Master List]、グループID：[G2]<br>
     * 明細ID：[M1]、明細標題：[Customer List]<br>
     * 明細モード：[明細モード１（ページ毎のデータ取得）]、表示件数：[10]
     * このクラスは明細、明細項目の情報を保持します。<br>
     * また、このクラスから明細データを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Tyu01002M1Info extends FormListInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>明細に属する明細項目定義。</p>
         * 
         * この明細に属する明細項目の項目定義情報の参照が可能です。<br>
         */
        public final Tyu01002M1Item ITEM;

        /**
         * <p>コンストラクタ。</p>
         * @param owner グループ情報
         */
        Tyu01002M1Info(FormGroupInfo owner) {
            super(owner, FormBorderType.M1);
            super.setListMode(FormListMode.MODE_1);            
            super.setDisplayRowCount(10);
            this.ITEM = new Tyu01002M1Item(this);
        }


        /**
         * <p>明細[M1]に属する明細項目の項目情報定義クラス。</p>
         * 
         * フォームID：[TYU01002]、フォーム名：[Customer Master List]、グループID：[G2]<br>
         * 明細ID：[M1]、明細標題：[Customer List]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Tyu01002M1Item extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner 明細情報
             */
            Tyu01002M1Item(Tyu01002M1Info owner) {
                super(owner);
                this.MEINO = super.items().get("MEINO");
                this.CUSID = super.items().get("CUSID");
                this.CUSNAME = super.items().get("CUSNAME");
                this.EMAIL = super.items().get("EMAIL");
                this.TELNO = super.items().get("TELNO");
                this.BTNUPD = super.items().get("BTNUPD");
                this.BTNDEL = super.items().get("BTNDEL");
            }

            /**
             * <p>項目[List No.]（標題：List No.）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=900, id="meino", name="List No.", group=FormGroupType.G2, border=FormBorderType.M1, attribute="NA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=7, format="11")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo MEINO;

            /**
             * <p>項目[Customer ID]（標題：Customer ID）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=1000, id="cusid", name="Customer ID", group=FormGroupType.G2, border=FormBorderType.M1, attribute="SB", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=5)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo CUSID;

            /**
             * <p>項目[Customer Name]（標題：Customer Name）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=1100, id="cusname", name="Customer Name", group=FormGroupType.G2, border=FormBorderType.M1, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=30)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo CUSNAME;

            /**
             * <p>項目[Email Address]（標題：Email Address）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=1200, id="email", name="Email Address", group=FormGroupType.G2, border=FormBorderType.M1, attribute="SP1", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=50)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo EMAIL;

            /**
             * <p>項目[Telephone No.]（標題：Telephone No.）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=1300, id="telno", name="Telephone No.", group=FormGroupType.G2, border=FormBorderType.M1, attribute="SC", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=17)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo TELNO;

            /**
             * <p>項目[Button Update]（標題：Edit）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=1400, id="btnupd", name="Button Update", group=FormGroupType.G2, border=FormBorderType.M1, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01002_FRM_UPD")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNUPD;

            /**
             * <p>項目[Button Delete]（標題：Delete）の定義情報。</p>
             * 
             * グループ：[G2]、領域：明細[M1]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=1500, id="btndel", name="Button Delete", group=FormGroupType.G2, border=FormBorderType.M1, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="TYU01002_FRM_DEL")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDEL;

        }
    }


    /**
     * フォームグループの定義情報
     */
    public static class Tyu01002FormGroups {
        /**
         * フォームグループ[G1]:[Customer Master List]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
        /**
         * フォームグループ[G2]:[Customer Master List]
         */
        public static final FormGroupType G2 = FormGroupType.G2;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Tyu01002FormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}
