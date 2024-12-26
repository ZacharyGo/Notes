
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001ControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
 *
 * @author INTARFRM
 */
public class Tyu01001Controller extends Tyu01001ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Tyu01001Controller() {
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
            //Tyu01001FormBean bean = (Tyu01001FormBean)this.createFormDataInstance(context, Tyu01001FormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [TYU01001_Back] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult tyu01001_back(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [TYU01001_DBU] を実行する
    // * アクション: DB更新(DBU)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult tyu01001_dbu(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
