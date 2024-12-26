
package com.fujitsu.intarfrm.programs.practice7.practice7a;

import javax.servlet.http.HttpServletRequest;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aControllerBase;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultAjaxData;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
 *
 * @author INTARFRM
 */
public class Practice7aController extends Practice7aControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice7aController() {
        //共通処理を継承する
        super();
    }

//    /**
//     * 画面のロード処理
//     * @param context コンテキスト
//     */
//    @Override
//    public ActionResult _Load(FormActionContext context) {
//        if (context.createNewFormBean()) {
//            //FormBeanを作成する
//            Practice7aFormBean bean = (Practice7aFormBean)this.createFormDataInstance(context, Practice7aFormBean.class);
//            // FormBeanを保存する
//            context.setFormBean(bean);
//            // ロード処理を実行する
//            this.invokeFacade(context);
//        }
//        
//        return this.result(context);
//    }

    // フォームアクションの処理を拡張する

    /**
     * フォームアクション [PRACTICE7A_DBU_REGISTER] を実行する
     * アクション: DB更新(DBU)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice7a_dbu_register(FormActionContext context) {
        this.invokeFacade(context);
        
        // CUSTOMDATAMAP - START
        if (context.isValid()) {
    		// When there is no error, return JSON data containing the added user data to client. 
    		ResultAjaxData result = new ResultAjaxData(context);
    		result.customDataMap.put("customDataMapKey", "get data in JS using customDataMap from controller");
    		return result;
    	}
        // CUSTOMDATAMAP - END
        
        return this.result(context);
    }

    ///**
    // * フォームアクション [PRACTICE7A_DBU_UPDATE] を実行する
    // * アクション: DB更新(DBU)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7a_dbu_update(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7A_FRM_CANCEL] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7a_frm_cancel(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
