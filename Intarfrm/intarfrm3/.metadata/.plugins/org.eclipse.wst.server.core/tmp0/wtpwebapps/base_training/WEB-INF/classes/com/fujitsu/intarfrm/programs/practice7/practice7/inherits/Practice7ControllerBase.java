// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.programs.practice7.practice7.Practice7Controller;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.controllers.ProjectFormControllerBase;

/**
 * <p>フォーム[Exercise７]のフォームアクションの親クラス。<p>
 * 
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 * <br>
 * 対象フォームで発生した全てのアクション（リクエスト要求）は、<br>
 * このクラスの{@link #perform(FormActionContext)}メソッド内で各アクションの処理クラスに振り分けられ実行されます。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public abstract class Practice7ControllerBase extends ProjectFormControllerBase {

    /**
     * <p>コンストラクタ。</p>
     */
    protected Practice7ControllerBase() {
        super("practice7", "practice7", Practice7Controller.class);
    }

    /**
     * <p>アクション処理を実行する。</p>
     * 
     * @param context コンテキスト
     */
    @Override
    public ActionResult processBody(FormActionContext context) {
        ArgumentValidator.checkNull(context, "context");
        ActionResult result = null;
        if (context.getFormAction() != null) {
            String formActId = context.getFormAction().getFormActionId();
            switch (formActId) {
                case "_Load" : result = this._Load(context); break;
                case "_Code_Reference" : result = this._Code_Reference(context); break;
                case "_Code_Get" : result = this._Code_Get(context); break;
                case "_M1_PAGING" : result = this.M1_Paging(context); break;
                case "_M1_SORTING" : result = this.M1_Sorting(context); break;
                case "PRACTICE4_ETC" : result = this.practice4_etc(context); break;
                case "PRACTICE7_DBU_DELETE" : result = this.practice7_dbu_delete(context); break;
                case "PRACTICE7_FRM_ADD" : result = this.practice7_frm_add(context); break;
                case "PRACTICE7_FRM_DETAILS" : result = this.practice7_frm_details(context); break;
                case "PRACTICE7_FRM_EDIT" : result = this.practice7_frm_edit(context); break;
                default : try {
                    result = (ActionResult)this.getClass().getMethod(formActId, FormActionContext.class).
                            invoke(this, context);
                } catch (Exception e) {
                    throw new SystemErrorException(e.getMessage(), e.getCause());
                }
            }
        }
        return result;
    }

    /**
     * 画面のロード処理
     * @param context
     */
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice7FormBean bean = (Practice7FormBean)this.createFormDataInstance(context, Practice7FormBean.class);

            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    /**
     * 明細 M1 のページ切り替え処理
     * @param context
     * @return
     */
    public ActionResult M1_Paging(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    
    /**
     * 明細 M1 のソート処理
     * @param context
     * @return
     */
    public ActionResult M1_Sorting(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE4_ETC] を実行する
     * アクション: （その他の動作）(ETC)
     * @param context
     * @return
     */
    public ActionResult practice4_etc(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7_DBU_DELETE] を実行する
     * アクション: DB更新(DBU)
     * @param context
     * @return
     */
    public ActionResult practice7_dbu_delete(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7_FRM_ADD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult practice7_frm_add(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7_FRM_DETAILS] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult practice7_frm_details(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7_FRM_EDIT] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult practice7_frm_edit(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

}
