// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.Tyu01002Controller;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.controllers.ProjectFormControllerBase;

/**
 * <p>フォーム[Customer Master List]のフォームアクションの親クラス。<p>
 * 
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 * <br>
 * 対象フォームで発生した全てのアクション（リクエスト要求）は、<br>
 * このクラスの{@link #perform(FormActionContext)}メソッド内で各アクションの処理クラスに振り分けられ実行されます。<br>
 * 
 * @author INTARFRM継承ファイル
 */
public abstract class Tyu01002ControllerBase extends ProjectFormControllerBase {

    /**
     * <p>コンストラクタ。</p>
     */
    protected Tyu01002ControllerBase() {
        super("tyu010we", "tyu01002", Tyu01002Controller.class);
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
                case "TYU01002_FRM_ADD" : result = this.tyu01002_frm_add(context); break;
                case "TYU01002_FRM_DEL" : result = this.tyu01002_frm_del(context); break;
                case "TYU01002_FRM_UPD" : result = this.tyu01002_frm_upd(context); break;
                case "TYU01002_GBFR_CANCEL" : result = this.tyu01002_gbfr_cancel(context); break;
                case "TYU01002_GNXT_DEF" : result = this.tyu01002_gnxt_def(context); break;
                default : try {
                    result = (ActionResult)this.getClass().getMethod(formActId, FormActionContext.class).
                            invoke(this, context);
                } catch (Exception e) {
                    Throwable ex = e.getCause() == null ? e : e.getCause();
                    throw new SystemErrorException(e.getMessage(), ex);
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
            Tyu01002FormBean bean = (Tyu01002FormBean)this.createFormDataInstance(context, Tyu01002FormBean.class);

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
     * フォームアクション [TYU01002_FRM_ADD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult tyu01002_frm_add(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_FRM_DEL] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult tyu01002_frm_del(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_FRM_UPD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    public ActionResult tyu01002_frm_upd(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_GBFR_CANCEL] を実行する
     * アクション: 前グループ(GBFR)
     * @param context
     * @return
     */
    public ActionResult tyu01002_gbfr_cancel(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_GNXT_DEF] を実行する
     * アクション: 次グループ(GNXT)
     * @param context
     * @return
     */
    public ActionResult tyu01002_gnxt_def(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

}
