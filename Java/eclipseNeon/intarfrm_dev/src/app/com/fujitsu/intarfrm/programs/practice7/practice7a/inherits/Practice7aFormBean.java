// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7a.inherits;

import com.fujitsu.intarfrm.programs.practice7.practice7a.beans.Practice7aCardBean;
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
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicCodeDropdownInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicCodeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicConditionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[Exercise７-１]のデータクラス。<p>
 *
 * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice7aFormBean extends ProjectFormDataSet<Practice7aFormBean.Practice7aFormInfo, Practice7aCardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice7aFormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice7aFormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice7aCardBean(this);
        super.setCard(this.CARD);

    }

    /**
     * <p>フォーム[Exercise７-１]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7aFormInfo extends FormInfo {

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
        public final Practice7aG1Info G1;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[Add Mode]<br>
         */
        public final FormModeInfo MODE1;
        
        /**
         * <p>モード[MODE2]の定義情報。</p>
         * 
         * モード標題：[Edit Mode]<br>
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
        public Practice7aFormInfo(Practice7aFormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice7");
            super.setFormId("practice7a");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice7a");
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
            this.G1 = new Practice7aG1Info(this);
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
         * フォームアクション[PRACTICE7A_DBU_REGISTER]
         */
        public FormActionInfo practice7a_dbu_register = new FormActionInfo("PRACTICE7A_DBU_REGISTER");
        {
            practice7a_dbu_register.setActionId("DBU");
            practice7a_dbu_register.setActionTarget(ActionTargetType.EntireForm);
            practice7a_dbu_register.setSubmitAction(false);
            practice7a_dbu_register.setValidation(false);
            practice7a_dbu_register.setForwardFormId("practice7");
        }
        
        /**
         * フォームアクション[PRACTICE7A_DBU_UPDATE]
         */
        public FormActionInfo practice7a_dbu_update = new FormActionInfo("PRACTICE7A_DBU_UPDATE");
        {
            practice7a_dbu_update.setActionId("DBU");
            practice7a_dbu_update.setActionTarget(ActionTargetType.EntireForm);
            practice7a_dbu_update.setSubmitAction(false);
            practice7a_dbu_update.setValidation(false);
            practice7a_dbu_update.setForwardFormId("practice7a");
        }
        
        /**
         * フォームアクション[PRACTICE7A_FRM_CANCEL]
         */
        public FormActionInfo practice7a_frm_cancel = new FormActionInfo("PRACTICE7A_FRM_CANCEL");
        {
            practice7a_frm_cancel.setActionId("FRM");
            practice7a_frm_cancel.setActionTarget(ActionTargetType.EntireForm);
            practice7a_frm_cancel.setSubmitAction(false);
            practice7a_frm_cancel.setValidation(false);
            practice7a_frm_cancel.setForwardFormId("practice7");
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice7aFormInfo owner) {

            owner.getFormActions().put("PRACTICE7A_DBU_REGISTER", practice7a_dbu_register);
            owner.getFormActions().put("PRACTICE7A_DBU_UPDATE", practice7a_dbu_update);
            owner.getFormActions().put("PRACTICE7A_FRM_CANCEL", practice7a_frm_cancel);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7aG1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice7aG1CardItem CARD;

    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Practice7aG1Info(Practice7aFormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice7aG1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice7aG1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Practice7aG1CardItem(Practice7aG1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.PRODUCTID = super.items().get("PRODUCTID");
                this.PRODUCTNAME = super.items().get("PRODUCTNAME");
                this.PRICE = super.items().get("PRICE");
                this.BTNREGISTER = super.items().get("BTNREGISTER");
                this.BTNCANCEL = super.items().get("BTNCANCEL");
                this.BTNUPD = super.items().get("BTNUPD");
                this.DRLCODE = super.items().get("DRLCODE");
                this.DRLCOND = super.items().get("DRLCOND");
                this.DRLDYNAMIC = super.items().get("DRLDYNAMIC");
                this.DRLCODE2 = super.items().get("DRLCODE2");
                this.DRLCOND2 = super.items().get("DRLCOND2");
                this.DRLDYNAMIC2 = super.items().get("DRLDYNAMIC2");
            }

            /**
             * <p>項目[PRODUCT ID]（標題：PRODUCT ID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=100, id="productid", name="PRODUCT ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=7, maxLength=true, autoTab=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.DISABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo PRODUCTID;

            /**
             * <p>項目[PRODUCT NAME]（標題：PRODUCT NAME）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=200, id="productname", name="PRODUCT NAME", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo PRODUCTNAME;

            /**
             * <p>項目[PRICE]（標題：PRICE）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=300, id="price", name="PRICE", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=10, format="11")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo PRICE;

            /**
             * <p>項目[BTNREGISTER]（標題：Register）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=400, id="btnregister", name="BTNREGISTER", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7A_DBU_REGISTER")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.NONCONTROL, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNREGISTER;

            /**
             * <p>項目[BTNCANCEL]（標題：Cancel）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=500, id="btncancel", name="BTNCANCEL", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7A_FRM_CANCEL")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNCANCEL;

            /**
             * <p>項目[BTNUPDATE]（標題：Update）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=600, id="btnupd", name="BTNUPDATE", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7A_DBU_UPDATE")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.NONCONTROL, itemCheck=false, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNUPD;

            /**
             * <p>項目[DRLCODE]（標題：Dropdown using Code (key value display)）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=700, id="drlcode", name="DRLCODE", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicCodeInfo(id="PRODUCT_COD", code=com.fujitsu.intarfrm.programs.practice7.practice7a.codes.DrlcodeCodeAction.class, codeType=CodeType.COD, autoCodeNameGet = false)
            @ItemBasicCodeDropdownInfo(useStaticItem=false, showKeyItem=true)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLCODE;

            /**
             * <p>項目[DRLCOND]（標題：Dropdown using Condition (key value display)）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=800, id="drlcond", name="DRLCOND", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicConditionInfo(conditionType=com.fujitsu.intarfrm.conditions.Cond_tf.class, showKeyItem=true, useStaticItem=false)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLCOND;

            /**
             * <p>項目[DRLDYNAMIC]（標題：Dynamic Dropdown (key value display)）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=900, id="drldynamic", name="DRLDYNAMIC", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLDYNAMIC;

            /**
             * <p>項目[DRLCODE2]（標題：Dropdown using Code）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=1000, id="drlcode2", name="DRLCODE2", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicCodeInfo(id="PRODUCT_COD", code=com.fujitsu.intarfrm.programs.practice7.practice7a.codes.Drlcode2CodeAction.class, codeType=CodeType.COD, autoCodeNameGet = false)
            @ItemBasicCodeDropdownInfo(useStaticItem=false, showKeyItem=false)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLCODE2;

            /**
             * <p>項目[DRLCOND2]（標題：Dropdown using Condition）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=1100, id="drlcond2", name="DRLCOND2", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicConditionInfo(conditionType=com.fujitsu.intarfrm.conditions.Cond_tf.class, showKeyItem=false, useStaticItem=false)
            @ItemBasicDataInfo(total=10)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLCOND2;

            /**
             * <p>項目[DRLDYNAMIC2]（標題：Dynamic Dropdown）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[DRL]（ドロップダウンリスト）<br>
             */
            @ItemBasicInfo(sortNo=1200, id="drldynamic2", name="DRLDYNAMIC2", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.DRL)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false), @ItemBasicModeInfoAttribute(modeType=FormModeType.MODE2, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo DRLDYNAMIC2;

        }
    }





    /**
     * フォームグループの定義情報
     */
    public static class Practice7aFormGroups {
        /**
         * フォームグループ[G1]:[Exercise７-１]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice7aFormModes {
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
