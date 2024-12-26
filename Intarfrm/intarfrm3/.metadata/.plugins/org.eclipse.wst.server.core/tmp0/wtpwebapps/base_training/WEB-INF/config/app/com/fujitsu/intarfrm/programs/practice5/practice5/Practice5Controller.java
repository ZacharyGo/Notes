
package com.fujitsu.intarfrm.programs.practice5.practice5;

import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5ControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
 *
 * @author INTARFRM
 */
public class Practice5Controller extends Practice5ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice5Controller() {
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
            //Practice5FormBean bean = (Practice5FormBean)this.createFormDataInstance(context, Practice5FormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE5_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice5_frm(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
