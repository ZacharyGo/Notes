
package com.fujitsu.intarfrm.programs.practice3.practice3b;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice3.Practice3Constants;
import com.fujitsu.intarfrm.programs.practice3.practice3b.beans.Practice3bCardBean;
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
            * コンストラクタ								constructor
     *
     */
    public Practice3bController() {
        //共通処理を継承する						Inherit common processing 
        super();
    }

    // ZG Uncomment Codes (20211208) {Begin}
    /**
            * 画面のロード処理					Screen loading process
     * @param context コンテキスト			@param context Context 
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice3bFormBean bean = (Practice3bFormBean)this.createFormDataInstance(context, Practice3bFormBean.class);

	        // ZG Code Added (20211208) {Begin}
            // Get the virtual session key from the constant class
            String vSessionKey  = Practice3Constants.VirtualSessionKey.CUSNAME;

            // Checks if the virtual session stores the VKEY key
            if(context.getVirtualSession().containsKey(vSessionKey))
            {
                // Gets the value from virtual session (Gets the invoice number)
                String custName = (String)context.getVirtualSession().get(vSessionKey);
                Practice3bCardBean cardBean = (Practice3bCardBean) bean.CARD;
                //cardBean.setCUSNAME(custName);
                cardBean.setCUSNAME((String)context.getVirtualSession().get("TESTKEY"));
            }
            
	        // ZG Code Added (20211208) {End}
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    /**
           * フォームアクション [PRACTICE3B_ETC] を実行する	 Perform the form action [PRACTICE3B_ETC]
           * アクション: （その他の動作）(ETC)				 Action: (Other actions) (ETC) 
     * @param context
     * @return
     */
    @Override
    public ActionResult practice3b_etc(FormActionContext context) {

    	// ZG Code Added (20211208) {Begin}

        //Deletes the virtual session space linked to form.
        context.getVirtualSession().setDeleteFlg(true);

    	// ZG Code Added (20211208) {End}
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZG Uncomment Codes (20211208) {End}
}
