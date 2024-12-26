// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice5.practice5.inherits;

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
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttribute;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicModeInfoAttributes;
import com.fujitsu.intarfrm.helpers.commons.items.ItemBasicValidationInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.programs.practice5.practice5.beans.Practice5CardBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.beans.ProjectFormDataSet;

/**
 * <p>フォーム[演習５]のデータクラス。<p>
 *
 * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
 * このクラスはフォーム（カード部、明細部）の全データを管理します。<br>
 * また、このクラスからフォーム設計情報を参照することも可能です。<br>
 *
 * @author INTARFRM継承ファイル
 */
@IfmInheritSourceCode()
public final class Practice5FormBean extends ProjectFormDataSet<Practice5FormBean.Practice5FormInfo, Practice5CardBean> {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;


    /**
     * <p>コンストラクタ。</p>
     *
     * @param language 言語情報
     */
    public Practice5FormBean(LanguageInfo language) {

        //画面情報を生成する。
        this.INFO = new Practice5FormInfo(this, language);
        super.setInfo(this.INFO);

        //カードデータ生成
        this.CARD = new Practice5CardBean(this);
        super.setCard(this.CARD);

    }

    /**
     * <p>フォーム[演習５]のフォーム設計情報定義クラス。</p>
     *
     * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
     * このクラスはフォームの設計定義情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     *
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice5FormInfo extends FormInfo {

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
        public final Practice5G1Info G1;

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
        public Practice5FormInfo(Practice5FormBean bean, LanguageInfo language) {
            super(bean);
            super.setProgramId("practice5");
            super.setFormId("practice5");
            super.setLanguage(language);

            // Loadアクション(画面共通アクション)
            FormActionInfo _Load = new FormActionInfo("_Load");
            _Load.setActionId("_Load");
            _Load.setActionTarget(ActionTargetType.EntireForm);
            _Load.setForwardFormId("practice5");
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
            this.G1 = new Practice5G1Info(this);
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
         * フォームアクション[PRACTICE5_FRM]
         */
        public FormActionInfo practice5_frm = new FormActionInfo("PRACTICE5_FRM");
        {
            practice5_frm.setActionId("FRM");
            practice5_frm.setActionTarget(ActionTargetType.EntireForm);
            practice5_frm.setSubmitAction(true);
            practice5_frm.setValidation(true);
            practice5_frm.setForwardFormId("practice5");
        }

        /**
         * コンストラクタ
         * @param owner 親フォーム
         */
        public FormActionInfos(Practice5FormInfo owner) {

            owner.getFormActions().put("PRACTICE5_FRM", practice5_frm);
        }
    }


    /**
     * <p>グループ[G1]の設計定義情報クラス。</p>
     *
     * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
     * グループID：[G1]、グループ標題：[グループ１]<br>
     * このクラスはグループに属するカード項目、明細、明細項目の情報を保持します。<br>
     * また、このクラスからフォームデータを参照することも可能です。<br>
     *
     * @author INTARFRM継承ファイル
     */
    @IfmInheritSourceCode()
    public final class Practice5G1Info extends FormGroupInfo {

        /**
         * シリアルバージョンID
         */
        private static final long serialVersionUID = 1L;

        /**
         * <p>グループに属するカード項目定義。</p>
         *
         * このグループに属するカード項目の項目定義情報の参照が可能です。<br>
         */
        public final Practice5G1CardItem CARD;


        /**
         * <p>コンストラクタ。</p>
         *
         * @param owner フォーム情報
         */
        Practice5G1Info(Practice5FormInfo owner) {
            super(FormGroupType.G1, owner);
            //グループ内カード情報生成
            this.CARD = new Practice5G1CardItem(this);
            //明細情報生成
        }

        /**
         * <p>グループ[G1]に属するカード項目の項目情報定義クラス。</p>
         *
         * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
         * グループID：[G1]、グループ標題：[グループ１]<br>
         *
         * @author INTARFRM継承ファイル
         */
        @IfmInheritSourceCode()
        public final class Practice5G1CardItem extends FormItemConstant {

            /**
             * シリアルバージョンID
             */
            private static final long serialVersionUID = 1L;

            /**
             * <p>コンストラクタ。</p>
             *
             * @param owner グループ情報
             */
            Practice5G1CardItem(Practice5G1Info owner) {
                super(owner.getOwnerForm().getCardInfo());

                this.DEPARTMENT = super.items().get("DEPARTMENT");
                this.ID = super.items().get("ID");
                this.MEI = super.items().get("MEI");
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
             * <p>項目[ID]（標題：従業員番号）の定義情報。</p>
             *
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=200, id="id", name="ID", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="NA", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=6, format="11", ime=ImeMode.OFF, maxLength=true)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo ID;

            /**
             * <p>項目[名前]（標題：従業員名）の定義情報。</p>
             *
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[TXT]（１行テキストボックス）<br>
             */
            @ItemBasicInfo(sortNo=300, id="mei", name="名前", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="SN5", control=ItemControl.TXT)
            @ItemBasicValidationInfo(required=true)
            @ItemBasicDataInfo(total=15, ime=ImeMode.ON)
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=true, requiredCheck=true)})
            public final FormItemInfo MEI;

            /**
             * <p>項目[ボタン確定]（標題：削除）の定義情報。</p>
             *
             * グループ：[G1]、領域：[カード]<br>
             * コントロール：[BTN]（ボタン）<br>
             */
            @ItemBasicInfo(sortNo=400, id="btndef", name="ボタン確定", group=FormGroupType.G1, border=FormBorderType.CARD, attribute="B", control=ItemControl.BTN)
            @ItemBasicActionInfo(formActionId="PRACTICE5_FRM")
            @ItemBasicModeInfoAttributes(values = {@ItemBasicModeInfoAttribute(modeType=FormModeType.MODE1, displayMode=ControlDisplayMode.ENABLE, itemCheck=false, requiredCheck=false)})
            public final FormItemInfo BTNDEF;

        }
    }





    /**
     * フォームグループの定義情報
     */
    public static class Practice5FormGroups {
        /**
         * フォームグループ[G1]:[演習５]
         */
        public static final FormGroupType G1 = FormGroupType.G1;
    }

    /**
     * フォームモードの定義情報
     */
    public static class Practice5FormModes {
        /**
         * フォームモード[1]:[MODE1]
         */
        public static final FormModeType Mode1 = FormModeType.MODE1;
    }

}
