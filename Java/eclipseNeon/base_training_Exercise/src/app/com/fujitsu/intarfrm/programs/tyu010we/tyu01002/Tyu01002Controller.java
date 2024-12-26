
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002ControllerBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 *
 * @author INTARFRM
 */
public class Tyu01002Controller extends Tyu01002ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Tyu01002Controller() {
        //共通処理を継承する
        super();
    }
    // ZSG 20211025 Uncomment (Start)
    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
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
    // ZSG 20211028 Uncomment (End)
    
    // フォームアクションの処理を拡張する Extend the processing of form actions
    // ZSG 20211025 Uncomment (Start)
    /**
     * フォームアクション [TYU01002_FRM_ADD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_add(FormActionContext context) {
        this.invokeFacade(context);
        context.getUserMap().put(Tyu010weConstants.DISPLAY_MODE, Tyu010weConstants.ADD_MODE); //ZSG 20211025 
        return this.result(context);
    }
    // ZSG 20211025 Uncomment (End)
    ///**
    // * フォームアクション [TYU01002_FRM_DEL] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult tyu01002_frm_del(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}
    // ZSG 20211025 Uncomment (Start)
    /**
     * フォームアクション [TYU01002_FRM_UPD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_upd(FormActionContext context) {
        this.invokeFacade(context);
        context.getUserMap().put(Tyu010weConstants.ContextMapKey.DISPLAY_MODE, Tyu010weConstants.EDIT_MODE);
        return this.result(context);
    }
    // ZSG 20211025 Uncomment (End)
    ///**
    // * フォームアクション [TYU01002_GBFR_CANCEL] を実行する
    // * アクション: 前グループ(GBFR)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult tyu01002_gbfr_cancel(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    /**
     * フォームアクション [TYU01002_GNXT_DEF] を実行する
     * アクション: 次グループ(GNXT)
     * @param context
     * @return
     */
    // ZSG 20211025 Uncomment (Start)
    @Override
    public ActionResult tyu01002_gnxt_def(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211025 Uncomment (End)
}
