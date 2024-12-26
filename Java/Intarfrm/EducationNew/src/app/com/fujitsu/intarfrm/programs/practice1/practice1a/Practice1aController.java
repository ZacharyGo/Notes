
package com.fujitsu.intarfrm.programs.practice1.practice1a;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aControllerBase;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE1A]、フォーム名：[演習１－１]<br>
 *
 * @author INTARFRM
 */
public class Practice1aController extends Practice1aControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice1aController() {
        //共通処理を継承する Inherit common processing
        super();
    }

    // ZG (20211207) Uncomment (Begin)
    /**
            * 画面のロード処理 
     * @param context コンテキスト
     * Screen loading process
     * @param context Context
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する Create a Form Bean
            Practice1aFormBean bean = (Practice1aFormBean)this.createFormDataInstance(context, Practice1aFormBean.class);
            // FormBeanを保存する Create a Form Bean
            context.setFormBean(bean);
            // ロード処理を実行する Perform load processing
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する Extend the handling of form actions

    /**
            * フォームアクション [PRACTICE1A_FRM] を実行する
            * アクション: 他フォーム(FRM)
     * Perform the form action [PRACTICE1A_FRM]
     * Action: Other form (FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice1a_frm(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
           * フォームアクション [PRACTICE1A_FRM1] を実行する
            * アクション: 他フォーム(FRM)
     * Perform the form action [PRACTICE1A_FRM1]
     * Action: Other form (FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice1a_frm1(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZG (20211207) Uncomment (End)
}
