// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice6.practice6b.inherits;

import com.fujitsu.intarfrm.programs.practice6.practice6b.beans.Practice6bCardBean;
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
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;

/**
 * <p>フォーム[演習６－２]のデータクラス。<p>
 *
 * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice6bFormBean extends ProjectFormDataSet<Practice6bFormBean.Practice6bFormInfo, Practice6bCardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice6bFormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice6bFormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice6bCardBean(this);
        super.setCard(this.CARD);

    }

    /**
     * <p>フォーム[演習６－２]のフォーム設計情報定義クラス。</p>
     * 
     * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice6bFormInfo extends FormInfo {

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
        public final Practice6bG1Info G1;

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
        public Practice6bFormInfo(Practice6bFormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice6");
            super.setFormId("practice6b");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice6b");
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
            this.G1 = new Practice6bG1Info(this);
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
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice6bFormInfo owner) {

        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     * 
     * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     * 
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice6bG1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         * 
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice6bG1CardItem CARD;

    	
        /**
         * <p>コンストラクタ。</p>
         * 
         * @param owner フォーム情報
         */
        Practice6bG1Info(Practice6bFormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice6bG1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         * 
         * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         * 
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice6bG1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             * 
             * @param owner グループ情報
             */
            Practice6bG1CardItem(Practice6bG1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.DESCRIPTION = super.items().get("DESCRIPTION");
            }

            /**
             * <p>項目[説明]（標題：説明）の定義情報。</p>
             * 
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[LBL]（ラベル）<br>
             */
            @ItemBasicInfo(sortNo=100, id="description", name="説明", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.LBL, isStaticLabel=true)
            @ItemBasicDataInfo(total=0, trim=false)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo DESCRIPTION;

        }
    }





    /**
     * フォームグループの定義情報
     */
    public static class Practice6bFormGroups {
        /**
         * フォームグループ[G1]:[演習６－２]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice6bFormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}