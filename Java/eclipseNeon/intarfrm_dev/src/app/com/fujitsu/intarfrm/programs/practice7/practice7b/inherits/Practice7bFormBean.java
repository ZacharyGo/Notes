// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7b.inherits;

import com.fujitsu.intarfrm.programs.practice7.practice7b.beans.Practice7bCardBean;
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
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[Exercise７-２]のデータクラス。<p>
 *
 * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice7bFormBean extends ProjectFormDataSet<Practice7bFormBean.Practice7bFormInfo, Practice7bCardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice7bFormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice7bFormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice7bCardBean(this);
        super.setCard(this.CARD);

    }

    /**
     * <p>フォーム[Exercise７-２]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7bFormInfo extends FormInfo {

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
        public final Practice7bG1Info G1;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[モード１]<br>
         */
        public final FormModeInfo MODE1;
        

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
        public Practice7bFormInfo(Practice7bFormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice7");
            super.setFormId("practice7b");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice7b");
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
            this.G1 = new Practice7bG1Info(this);
            this.G1.getItems().sort();

            //モード1情報生成
            this.MODE1 = new FormModeInfo(this.getModes(), FormModeType.MODE1);
            super.getModes().put(FormModeType.MODE1, this.MODE1);
            
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
         * フォームアクション[PRACTICE7B_FRM_CANCEL]
         */
        public FormActionInfo practice7b_frm_cancel = new FormActionInfo("PRACTICE7B_FRM_CANCEL");
        {
            practice7b_frm_cancel.setActionId("FRM");
            practice7b_frm_cancel.setActionTarget(ActionTargetType.EntireForm);
            practice7b_frm_cancel.setSubmitAction(false);
            practice7b_frm_cancel.setValidation(false);
            practice7b_frm_cancel.setForwardFormId("practice7");
        }
        
        /**
         * フォームアクション[PRACTICE7B_FRM_EDIT]
         */
        public FormActionInfo practice7b_frm_edit = new FormActionInfo("PRACTICE7B_FRM_EDIT");
        {
            practice7b_frm_edit.setActionId("FRM");
            practice7b_frm_edit.setActionTarget(ActionTargetType.EntireForm);
            practice7b_frm_edit.setSubmitAction(false);
            practice7b_frm_edit.setValidation(false);
            practice7b_frm_edit.setForwardFormId("practice7a");
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice7bFormInfo owner) {

            owner.getFormActions().put("PRACTICE7B_FRM_CANCEL", practice7b_frm_cancel);
            owner.getFormActions().put("PRACTICE7B_FRM_EDIT", practice7b_frm_edit);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7bG1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice7bG1CardItem CARD;

    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Practice7bG1Info(Practice7bFormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice7bG1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice7bG1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Practice7bG1CardItem(Practice7bG1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.PRODUCTID = super.items().get("PRODUCTID");
                this.PRODUCTNAME = super.items().get("PRODUCTNAME");
                this.PRICE = super.items().get("PRICE");
                this.BTNUPD = super.items().get("BTNUPD");
                this.BTNCANCEL = super.items().get("BTNCANCEL");
            }

            /**
             * <p>項目[PRODUCT ID]（標題：PRODUCT ID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=100, id="productid", name="PRODUCT ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=7)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRODUCTID;

            /**
             * <p>項目[PRODUCT NAME]（標題：PRODUCT NAME）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=200, id="productname", name="PRODUCT NAME", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRODUCTNAME;

            /**
             * <p>項目[PRICE]（標題：PRICE）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=300, id="price", name="PRICE", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=10, format="11")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRICE;

            /**
             * <p>項目[BTNEDIT]（標題：EDIT）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=400, id="btnupd", name="BTNEDIT", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7B_FRM_EDIT")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNUPD;

            /**
             * <p>項目[BTNCANCEL]（標題：Cancel）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=500, id="btncancel", name="BTNCANCEL", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7B_FRM_CANCEL")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNCANCEL;

        }
    }





    /**
     * フォームグループの定義情報
     */
    public static class Practice7bFormGroups {
        /**
         * フォームグループ[G1]:[Exercise７-２]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice7bFormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}
