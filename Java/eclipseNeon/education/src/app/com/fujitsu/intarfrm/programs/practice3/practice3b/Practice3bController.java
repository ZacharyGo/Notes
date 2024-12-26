
package com.fujitsu.intarfrm.programs.practice3.practice3b;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice3.Practice3Constants;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bControllerBase;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE3B]、フォーム名：[演習３－２]<br>
 *
 * @author INTARFRM
 */
public class Practice3bController extends Practice3bControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice3bController() {
        //共通処理を継承する
        super();
    }

    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice3bFormBean bean = (Practice3bFormBean)this.createFormDataInstance(context, Practice3bFormBean.class);
            //ZSG 20211027 Added Code (Start)
            // Get the virtual session key from the constant class
            String vSessionKey  = Practice3Constants.VirtualSessionKey.CUSNAME;

            // Checks if the virtual session stores the VKEY key
            if(context.getVirtualSession().containsKey(vSessionKey))
            {
                // Gets the value from virtual session (Gets the invoice number)
                String custId = (String)context.getVirtualSession().get(vSessionKey);
                bean.CARD.setCUSNAME(custId);
            }

            //ZSG 20211027 Added Code (End)
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    /**
     * フォームアクション [PRACTICE3B_ETC] を実行する
     * アクション: （その他の動作）(ETC)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice3b_etc(FormActionContext context) {
    	// ZSG 20211027 Added Code (Start)
    	//Deletes the virtual session space linked to form.
        context.getVirtualSession().setDeleteFlg(true);
        //ZSG 20211027 Added Code (End)
        
        this.invokeFacade(context);
        return this.result(context);
    }

}
