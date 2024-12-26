
package com.fujitsu.intarfrm.programs.practice7.practice7b;

import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
 *
 * @author INTARFRM
 */
public class Practice7bController extends Practice7bControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice7bController() {
        //共通処理を継承する
        super();
    }

    ///**
    // * 画面のロード処理
    // * @param context コンテキスト
    // */
    //@Override
    //public ActionResult _Load(FormActionContext context) {
        //if (context.createNewFormBean()) {
            ////FormBeanを作成する
            //Practice7bFormBean bean = (Practice7bFormBean)this.createFormDataInstance(context, Practice7bFormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE7B_FRM_CANCEL] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7b_frm_cancel(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7B_FRM_EDIT] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7b_frm_edit(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
