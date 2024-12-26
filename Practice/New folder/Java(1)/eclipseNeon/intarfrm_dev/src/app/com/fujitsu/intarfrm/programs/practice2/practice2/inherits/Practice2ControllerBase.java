// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice2.practice2.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.programs.practice2.practice2.Practice2Controller;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.controllers.ProjectFormControllerBase;

/**
 * <p>フォーム[演習２]のフォームアクションの親クラス。<p>
 * 
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 * <br>
 * 対象フォームで発生した全てのアクション（リクエスト要求）は、<br>
 * このクラスの{@link #perform(FormActionContext)}メソッド内で各アクションの処理クラスに振り分けられ実行されます。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public abstract class Practice2ControllerBase extends ProjectFormControllerBase {

    /**
     * <p>コンストラクタ。</p>
     */
    protected Practice2ControllerBase() {
        super("practice2", "practice2", Practice2Controller.class);
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
                case "PRACTICE2_FRM" : result = this.practice2_frm(context); break;
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
            Practice2FormBean bean = (Practice2FormBean)this.createFormDataInstance(context, Practice2FormBean.class);

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
     * フォームアクション [PRACTICE2_FRM] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult practice2_frm(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

}
