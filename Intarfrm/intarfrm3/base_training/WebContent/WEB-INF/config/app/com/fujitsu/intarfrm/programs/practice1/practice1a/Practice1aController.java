
package com.fujitsu.intarfrm.programs.practice1.practice1a;

import javax.servlet.http.HttpServletRequest;

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
        //共通処理を継承する
        super();
    }

    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
    	//System.out.println("**** UserAgent ******* : " + context.getRequest().getHeader("User-Agent"));
//    	System.out.println("**** Header data *******");
//    	Enumeration headerNames = context.getRequest().getHeaderNames();
//        while (headerNames.hasMoreElements()) {
//            String key = (String) headerNames.nextElement();
//            String value = context.getRequest().getHeader(key);
//            System.out.println(key + " : " + value);
//        }
    	//System.out.println("**** client hint ******* : " + context.getRequest().getHeader("sec-ch-ua"));
    	HttpServletRequest req = context.getRequest();
    	System.out.println("**** Header data start*******");
    	boolean isChrome = false;
    	boolean isChromium = false;
    	if (req.getHeader("sec-ch-ua") != null) {
    		isChrome = req.getHeader("sec-ch-ua").contains("Chrome");
    		isChromium = req.getHeader("sec-ch-ua").contains("Chromium");
    	}
    	System.out.println("user-agent: " + req.getHeader("user-agent").contains("Chrome") + 
    			", chromium: " + isChromium + ", chrome: " + isChrome);
    	System.out.println("**** Header data end*******");
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice1aFormBean bean = (Practice1aFormBean)this.createFormDataInstance(context, Practice1aFormBean.class);
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE1A_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice1a_frm(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE1A_FRM1] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice1a_frm1(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
