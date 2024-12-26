
package com.fujitsu.intarfrm.programs.practice6.practice6b;

import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
 *
 * @author INTARFRM
 */
public class Practice6bController extends Practice6bControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice6bController() {
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
            //Practice6bFormBean bean = (Practice6bFormBean)this.createFormDataInstance(context, Practice6bFormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

}
