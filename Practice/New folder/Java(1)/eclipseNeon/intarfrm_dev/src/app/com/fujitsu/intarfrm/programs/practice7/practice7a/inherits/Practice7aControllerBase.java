// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.practice7a.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.programs.practice7.practice7a.Practice7aController;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.controllers.ProjectFormControllerBase;

/**
 * <p>フォーム[Exercise７-１]のフォームアクションの親クラス。<p>
 * 
 * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
 * <br>
 * 対象フォームで発生した全てのアクション（リクエスト要求）は、<br>
 * このクラスの{@link #perform(FormActionContext)}メソッド内で各アクションの処理クラスに振り分けられ実行されます。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public abstract class Practice7aControllerBase extends ProjectFormControllerBase {

    /**
     * <p>コンストラクタ。</p>
     */
    protected Practice7aControllerBase() {
        super("practice7", "practice7a", Practice7aController.class);
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
                case "PRACTICE7A_DBU_REGISTER" : result = this.practice7a_dbu_register(context); break;
                case "PRACTICE7A_DBU_UPDATE" : result = this.practice7a_dbu_update(context); break;
                case "PRACTICE7A_FRM_CANCEL" : result = this.practice7a_frm_cancel(context); break;
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
            Practice7aFormBean bean = (Practice7aFormBean)this.createFormDataInstance(context, Practice7aFormBean.class);

            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7A_DBU_REGISTER] を実行する
     * アクション: DB更新(DBU)
     * @param context
     * @return
     */
    public ActionResult practice7a_dbu_register(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7A_DBU_UPDATE] を実行する
     * アクション: DB更新(DBU)
     * @param context
     * @return
     */
    public ActionResult practice7a_dbu_update(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [PRACTICE7A_FRM_CANCEL] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult practice7a_frm_cancel(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

}
