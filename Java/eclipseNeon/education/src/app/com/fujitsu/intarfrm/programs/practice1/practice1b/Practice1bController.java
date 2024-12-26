
package com.fujitsu.intarfrm.programs.practice1.practice1b;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bControllerBase;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE1B]、フォーム名：[演習１－２]<br>
 *
 * @author INTARFRM
 */
public class Practice1bController extends Practice1bControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice1bController() {
        //共通処理を継承する
        super();
    }

    ///**
    // * 画面のロード処理
    // * @param context コンテキスト
    // */
    // ZSG 20211024 Uncomment (Start)
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice1bFormBean bean = (Practice1bFormBean)this.createFormDataInstance(context, Practice1bFormBean.class);
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }
    // ZSG 20211024 Uncomment (End)
    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE1B_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    // ZSG 20211024 Uncomment (Start)
    @Override
    public ActionResult practice1b_frm(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211024 Uncomment (End)
}
