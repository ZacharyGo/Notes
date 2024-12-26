
package com.fujitsu.intarfrm.programs.practice6.practice6a;

import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE6A]、フォーム名：[演習６ー１]<br>
 *
 * @author INTARFRM
 */
public class Practice6aController extends Practice6aControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice6aController() {
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
            //Practice6aFormBean bean = (Practice6aFormBean)this.createFormDataInstance(context, Practice6aFormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE6A_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice6a_frm(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
