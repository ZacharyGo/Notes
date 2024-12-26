// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice2.practice2.inherits;

import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2CardBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1Bean;
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
import com.fujitsu.intarfrm.helpers.commons.items.ImeMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[演習２]のデータクラス。<p>
 *
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice2FormBean extends ProjectFormDataSet<Practice2FormBean.Practice2FormInfo, Practice2CardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>明細[M1]のデータオブジェクト。</p>
     *
     * 明細標題：[]<br>
     * 明細モード：[明細モード２（全件データ取得）]<br>
     * 表示件数：[0]<br>
     * 明細のデータ保持及び明細定義情報参照が可能です。<br>
     */
    public final Practice2M1Bean M1;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice2FormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice2FormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice2CardBean(this);
        super.setCard(this.CARD);

        //明細[M1]データ生成
        this.M1 = new Practice2M1Bean(this);
        this.getListDataMap().put(FormBorderType.M1, this.M1);

    }

    /**
     * <p>フォーム[演習２]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice2FormInfo extends FormInfo {

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
        public final Practice2G1Info G1;

        /**
         * <p>モード[MODE1]の定義情報。</p>
         * 
         * モード標題：[モード１]<br>
         */
        public final FormModeInfo MODE1;
        
        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[]<br>
         * 明細モード：[明細モード２（全件データ取得）]<br>
         * 表示件数：[0]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するグループ情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Practice2M1Info M1;


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
        public Practice2FormInfo(Practice2FormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice2");
            super.setFormId("practice2");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice2");
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
            m1_Paging.setValidation(true);
            m1_Paging.setTargetBorder(FormBorderType.M1);
            this.getFormActions().put("_M1_PAGING", m1_Paging);
            
            // 明細M1ソーティング(画面明細共通アクション)
            FormActionInfo m1_Sorting = new FormActionInfo("_M1_SORTING");
            m1_Sorting.setActionTarget(ActionTargetType.FormList);
            m1_Sorting.setSubmitAction(true);
            m1_Sorting.setActionId("_SORTING_");
            m1_Sorting.setAsync(true);
            m1_Sorting.setValidation(true);
            m1_Sorting.setTargetBorder(FormBorderType.M1);
            this.getFormActions().put("_M1_SORTING", m1_Sorting);
            
            this.formActions = this.getFormActions();
            this.formActions.putAll(new FormActionInfos(this));

            //グループG1情報生成
            this.G1 = new Practice2G1Info(this);
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
         * フォームアクション[PRACTICE2_FRM]
         */
        public FormActionInfo practice2_frm = new FormActionInfo("PRACTICE2_FRM");
        {
            practice2_frm.setActionId("FRM");
            practice2_frm.setActionTarget(ActionTargetType.EntireForm);
            practice2_frm.setSubmitAction(true);
            practice2_frm.setValidation(true);
            practice2_frm.setForwardFormId("practice2");
        }
        
        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice2FormInfo owner) {

            owner.getFormActions().put("PRACTICE2_FRM", practice2_frm);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice2G1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice2G1CardItem CARD;

        /**
         * <p>明細[M1]の設計定義情報。</p>
         * 
         * 明細標題：[]<br>
         * 明細モード：[明細モード２（全件データ取得）]<br>
         * 表示件数：[0]<br>
         * この明細の設計定義情報と明細に属する項目情報を保持します。<br>
         * また、この明細の明細データを参照することも可能です。<br>
         * この明細が属するフォーム情報で参照する明細情報とこのフィールドの明細情報は等価です。<br>
         */
        public final Practice2M1Info M1;
    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Practice2G1Info(Practice2FormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice2G1CardItem(this);
            //明細情報生成
            this.M1 = new Practice2M1Info(this);
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice2G1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Practice2G1CardItem(Practice2G1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.DEPARTMENT = super.items().get("DEPARTMENT");
                this.BTNDEF = super.items().get("BTNDEF");
            }

            /**
             * <p>項目[部署]（標題：部署）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=100, id="department", name="部署", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=20)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo DEPARTMENT;

            /**
             * <p>項目[ボタン確定]（標題：登録）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=500, id="btndef", name="ボタン確定", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE2_FRM")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDEF;

        }
    }



    /**
     * <p>明細[M1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE2]、フォーム名：[演習２]、グループID：[G1]<br>
     * 明細ID：[M1]、明細標題：[]<br>
     * 明細モード：[明細モード２（全件データ取得）]、表示件数：[0]
     * このクラスは明細、明細項目の情報を保持します。<br>
     * また、このクラスから明細データを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice2M1Info extends FormListInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>明細に属する明細項目定義。</p>
         * 
         * この明細に属する明細項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice2M1Item ITEM;

        /**
         * <p>コンストラクタ。</p>
         * @param owner グループ情報
         */
        Practice2M1Info(FormGroupInfo owner) {
            super(owner, FormBorderType.M1);
            super.setListMode(FormListMode.MODE_2);            
            super.setDisplayRowCount(0);
            this.ITEM = new Practice2M1Item(this);
        }


        /**
         * <p>明細[M1]に属する明細項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE2]、フォーム名：[演習２]、グループID：[G1]<br>
         * 明細ID：[M1]、明細標題：[]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice2M1Item extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner 明細情報
             */
            Practice2M1Item(Practice2M1Info owner) {
                super(owner);
                this.MNO = super.items().get("MNO");
                this.ID = super.items().get("ID");
                this.MEI = super.items().get("MEI");
            }

            /**
             * <p>項目[明細NO]（標題：NO）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=200, id="mno", name="明細NO", group=FormGroupType.G1, border=FormBorderType.M1, attribute="NA", control=ItemControl.LBL)
            @ItemBasicDataInfo(total=3, format="11")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo MNO;

            /**
             * <p>項目[ID]（標題：従業員番号）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=300, id="id", name="ID", group=FormGroupType.G1, border=FormBorderType.M1, attribute="NA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=6, format="11", ime=ImeMode.OFF, maxLength=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo ID;

            /**
             * <p>項目[名前]（標題：従業員名）の定義情報。</p>
             * 
             * グループ：[G1]、領域：明細[M1]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=400, id="mei", name="名前", group=FormGroupType.G1, border=FormBorderType.M1, attribute="SN5", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=10, ime=ImeMode.ON)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo MEI;

        }
    }


    /**
     * フォームグループの定義情報
     */
    public static class Practice2FormGroups {
        /**
         * フォームグループ[G1]:[演習２]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice2FormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}
