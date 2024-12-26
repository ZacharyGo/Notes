
package com.fujitsu.intarfrm.programs.practice6.practice6a;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aControllerBase;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultAjaxData;

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

    /**
     * フォームアクション [PRACTICE6A_FRM] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice6a_frm(FormActionContext context) {
    	
        this.invokeFacade(context);

        //Retrieves unique data sent to the server.
        String param = context.getRequest().getParameter("customKey");
        
        System.out.println("Value retrieved from client : " + param);
        
        // Sends the data in the result to the client
        ResultAjaxData result = new ResultAjaxData(context);
        result.customDataMap.put("customReturnValue", "Value from server");
          
        //Commenting on the default process.
        //return this.result(context);

        return result;


    }

}
