
package com.fujitsu.intarfrm.programs.practice4.practice4;

import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4ControllerBase;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE4]、フォーム名：[演習４]<br>
 *
 * @author INTARFRM
 */
public class Practice4Controller extends Practice4ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice4Controller() {
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
            //Practice4FormBean bean = (Practice4FormBean)this.createFormDataInstance(context, Practice4FormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE4_ETC] を実行する
    // * アクション: （その他の動作）(ETC)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice4_etc(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
