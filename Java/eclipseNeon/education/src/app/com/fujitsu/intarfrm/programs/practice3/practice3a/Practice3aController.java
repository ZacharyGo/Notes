
package com.fujitsu.intarfrm.programs.practice3.practice3a;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice3.Practice3Constants;
import com.fujitsu.intarfrm.programs.practice3.practice3a.beans.Practice3aCardBean;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aControllerBase;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE3A]、フォーム名：[演習３－１]<br>
 *
 * @author INTARFRM
 */
public class Practice3aController extends Practice3aControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice3aController() {
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
            //Practice3aFormBean bean = (Practice3aFormBean)this.createFormDataInstance(context, Practice3aFormBean.class);
            //// FormBeanを保存する
            //context.setFormBean(bean);
            //// ロード処理を実行する
            //this.invokeFacade(context);
        //}
        //return this.result(context);
    //}

    // フォームアクションの処理を拡張する

    /**
     * フォームアクション [PRACTICE3A_FRM] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice3a_frm(FormActionContext context) {
    	// ZSG 20211027 Added Code (Start)
    	// Get the FormBean
    	Practice3aFormBean formBean = (Practice3aFormBean) context.getFormBean();
    	// Get value from CUSTNAME
    	String custName = formBean.CARD.getCUSNAME(); 
//    			
//    	// Save custName to Virtual Session
        // Creates the new virtual session.
        context.asNewWindow();

        // Gets the virtual session key from the constant class.
        String vSessionKey = Practice3Constants.VirtualSessionKey.CUSNAME;

        // Stores the value in virtual session (screen invoice number).
        context.getVirtualSession().put(vSessionKey , custName);
        //ZSG 20211027 Added Code (End)
        
    	this.invokeFacade(context);
        return this.result(context);
    }

}
