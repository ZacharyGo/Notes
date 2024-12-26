// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7.inherits;

import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7CardBean;
import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7M1Bean;
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
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[Exercise７]のデータクラス。<p>
 *
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice7FormBean extends ProjectFormDataSet<Practice7FormBean.Practice7FormInfo, Practice7CardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>明細[M1]のデータオブジェクト。</p>
     *
     * 明細標題：[List1]<br>
     * 明細モード：[明細モード２（全件データ取得）]<br>
     * 表示件数：[5]<br>
     * 明細のデータ保持及び明細定義情報参照が可能です。<br>
     */
    public final Practice7M1Bean M1;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice7FormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice7FormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice7CardBean(this);
        super.setCard(this.CARD);

        //明細[M1]データ生成
        this.M1 = new Practice7M1Bean(this);
        this.getListDataMap().put(FormBorderType.M1, this.M1);

    }

    /**
     * <p>フォーム[Exercise７]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7FormInfo extends FormInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループ[G1]の定義情報。</p>
         * 
         * グループ標題：[Group1]<br>
         * このグループに属するカード項目、明細、明細項目の情報を保持します。
         */
        public final Practice7G1Info G1;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[Mode1]<br>
         */
        public final FormModeInfo MODE1;
        
        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[List1]<br>
         * 明細モード：[明細モード２（全件データ取得）]<br>
         * 表示件数：[5]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するグループ情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Practice7M1Info M1;


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
        public Practice7FormInfo(Practice7FormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice7");
            super.setFormId("practice7");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice7");
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
            this.G1 = new Practice7G1Info(this);
            this.G1.getItems().sort();

            //モード1情報生成
            this.MODE1 = new FormModeInfo(this.getModes(), FormModeType.MODE1);
            super.getModes().put(FormModeType.MODE1, this.MODE1);
            
            //有効モードを設定
            this.setCurrentMode(this.MODE1);
            //有効グループを設定
            this.setCurrentGroup(this.G1);

            //明細M1情報生成
            this.M1 = this.G1.M1;
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
         * フォームアクション[PRACTICE4_ETC]
         */
        public FormActionInfo practice4_etc = new FormActionInfo("PRACTICE4_ETC");
        {
            practice4_etc.setActionId("ETC");
            practice4_etc.setActionTarget(ActionTargetType.EntireForm);
            practice4_etc.setSubmitAction(true);
            practice4_etc.setValidation(true);
        }
        
        /**
         * フォームアクション[PRACTICE7_DBU_DELETE]
         */
        public FormActionInfo practice7_dbu_delete = new FormActionInfo("PRACTICE7_DBU_DELETE");
        {
            practice7_dbu_delete.setActionId("DBU");
            practice7_dbu_delete.setActionTarget(ActionTargetType.EntireForm);
            practice7_dbu_delete.setSubmitAction(false);
            practice7_dbu_delete.setValidation(false);
            practice7_dbu_delete.setForwardFormId("practice7");
        }
        
        /**
         * フォームアクション[PRACTICE7_FRM_ADD]
         */
        public FormActionInfo practice7_frm_add = new FormActionInfo("PRACTICE7_FRM_ADD");
        {
            practice7_frm_add.setActionId("FRM");
            practice7_frm_add.setActionTarget(ActionTargetType.EntireForm);
            practice7_frm_add.setSubmitAction(false);
            practice7_frm_add.setValidation(false);
            practice7_frm_add.setForwardFormId("practice7a");
        }
        
        /**
         * フォームアクション[PRACTICE7_FRM_DETAILS]
         */
        public FormActionInfo practice7_frm_details = new FormActionInfo("PRACTICE7_FRM_DETAILS");
        {
            practice7_frm_details.setActionId("FRM");
            practice7_frm_details.setActionTarget(ActionTargetType.EntireForm);
            practice7_frm_details.setSubmitAction(false);
            practice7_frm_details.setValidation(false);
            practice7_frm_details.setForwardFormId("practice7b");
        }
        
        /**
         * フォームアクション[PRACTICE7_FRM_EDIT]
         */
        public FormActionInfo practice7_frm_edit = new FormActionInfo("PRACTICE7_FRM_EDIT");
        {
            practice7_frm_edit.setActionId("FRM");
            practice7_frm_edit.setActionTarget(ActionTargetType.EntireForm);
            practice7_frm_edit.setSubmitAction(false);
            practice7_frm_edit.setValidation(false);
            practice7_frm_edit.setForwardFormId("practice7a");
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice7FormInfo owner) {

            owner.getFormActions().put("PRACTICE4_ETC", practice4_etc);
            owner.getFormActions().put("PRACTICE7_DBU_DELETE", practice7_dbu_delete);
            owner.getFormActions().put("PRACTICE7_FRM_ADD", practice7_frm_add);
            owner.getFormActions().put("PRACTICE7_FRM_DETAILS", practice7_frm_details);
            owner.getFormActions().put("PRACTICE7_FRM_EDIT", practice7_frm_edit);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
     * グループID：[G1]、グループ標題：[Group1]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7G1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice7G1CardItem CARD;

        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[List1]<br>
         * 明細モード：[明細モード２（全件データ取得）]<br>
         * 表示件数：[5]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するフォーム情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Practice7M1Info M1;
    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Practice7G1Info(Practice7FormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice7G1CardItem(this);
            //明細情報生成
            this.M1 = new Practice7M1Info(this);
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
         * グループID：[G1]、グループ標題：[Group1]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice7G1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Practice7G1CardItem(Practice7G1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.SEARCHPRICE = super.items().get("SEARCHPRICE");
                this.BTNREF = super.items().get("BTNREF");
                this.BTNADD = super.items().get("BTNADD");
            }

            /**
             * <p>項目[Search Value]（標題：Search Value (Price)）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=100, id="searchprice", name="Search Value", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=false)
            @ItemBasicDataInfo(total=10, format="31")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=false)})
            public final FormItemInfo SEARCHPRICE;

            /**
             * <p>項目[Button Reference]（標題：Search）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=200, id="btnref", name="Button Reference", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE4_ETC")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNREF;

            /**
             * <p>項目[BTNADD]（標題：Add）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=900, id="btnadd", name="BTNADD", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7_FRM_ADD")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNADD;

        }
    }



    /**
     * <p>明細[M1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE7]、フォーム名：[Exercise７]、グループID：[G1]<br>
     * 明細ID：[M1]、明細標題：[List1]<br>
     * 明細モード：[明細モード２（全件データ取得）]、表示件数：[5]
     * このクラスは明細、明細項目の情報を保持します。<br>
     * また、このクラスから明細データを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice7M1Info extends FormListInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>明細に属する明細項目定義。</p>
         * 
         * この明細に属する明細項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice7M1Item ITEM;

        /**
         * <p>コンストラクタ。</p>
         * @param owner グループ情報
         */
        Practice7M1Info(FormGroupInfo owner) {
            super(owner, FormBorderType.M1);
            super.setListMode(FormListMode.MODE_2);            
            super.setDisplayRowCount(5);
            this.ITEM = new Practice7M1Item(this);
        }


        /**
         * <p>明細[M1]に属する明細項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE7]、フォーム名：[Exercise７]、グループID：[G1]<br>
         * 明細ID：[M1]、明細標題：[List1]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice7M1Item extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner 明細情報
             */
            Practice7M1Item(Practice7M1Info owner) {
                super(owner);
                this.PRODUCTID = super.items().get("PRODUCTID");
                this.PRODUCTNAME = super.items().get("PRODUCTNAME");
                this.PRICE = super.items().get("PRICE");
                this.BTNDETAILS = super.items().get("BTNDETAILS");
                this.BTNUPDATE = super.items().get("BTNUPDATE");
                this.BTNDELETE = super.items().get("BTNDELETE");
            }

            /**
             * <p>項目[Product ID]（標題：Product ID）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=300, id="productid", name="Product ID", group=FormGroupType.G1, border=FormBorderType.M1, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=7)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRODUCTID;

            /**
             * <p>項目[Product Name]（標題：Product Name）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=400, id="productname", name="Product Name", group=FormGroupType.G1, border=FormBorderType.M1, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=100)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRODUCTNAME;

            /**
             * <p>項目[Price]（標題：Price）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=500, id="price", name="Price", group=FormGroupType.G1, border=FormBorderType.M1, attribute="NA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=10, format="31")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo PRICE;

            /**
             * <p>項目[BTNDETAILS]（標題：）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=600, id="btndetails", name="BTNDETAILS", group=FormGroupType.G1, border=FormBorderType.M1, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7_FRM_DETAILS")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDETAILS;

            /**
             * <p>項目[BTNUPDATE]（標題：）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=700, id="btnupdate", name="BTNUPDATE", group=FormGroupType.G1, border=FormBorderType.M1, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7_FRM_EDIT")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNUPDATE;

            /**
             * <p>項目[BTNDELETE]（標題：）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=800, id="btndelete", name="BTNDELETE", group=FormGroupType.G1, border=FormBorderType.M1, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE7_DBU_DELETE")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDELETE;

        }
    }


    /**
     * フォームグループの定義情報
     */
    public static class Practice7FormGroups {
        /**
         * フォームグループ[G1]:[Exercise７]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice7FormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}
