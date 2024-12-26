
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupType;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002ControllerBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.inherits.ProgramIds;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 *
 * @author INTARFRM
 */
public class Tyu01002Controller extends Tyu01002ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Tyu01002Controller() {
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
            Tyu01002FormBean bean = (Tyu01002FormBean)this.createFormDataInstance(context, Tyu01002FormBean.class);

           // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
            
            bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    /**
     * フォームアクション [TYU01002_FRM_ADD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_add(FormActionContext context) {
    	System.out.print("2 Before Control 2:");
    	System.out.print("ContextMapKey.MODE=" + Tyu010weConstants.ContextMapKey.MODE + " , ");
    	System.out.print("Add_Mode=" + Tyu010weConstants.ADD_MODE + " , ");
    	context.getUserMap().put(Tyu010weConstants.ContextMapKey.MODE, Tyu010weConstants.ADD_MODE);
    	System.out.print("Control 2:");
    	System.out.print("ContextMapKey.MODE=" + Tyu010weConstants.ContextMapKey.MODE + " , ");
    	System.out.print("Add_Mode=" + Tyu010weConstants.ADD_MODE + " , ");
    	System.out.println(Tyu010weConstants.ContextMapKey.MODE);
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_FRM_DEL] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_del(FormActionContext context) {
    	String rowIndex = context.getRequest().getParameter(Tyu010weConstants.ROW_INDEX);
    	Tyu01002FormBean form = (Tyu01002FormBean) context.getFormBean();
    	
    	if(!StringHelper.isNullOrEmpty(rowIndex)) {
    		String cusID = form.M1.displayRowAt(Integer.parseInt(rowIndex)).getCUSID();
    		context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMER_ID, cusID);
            
    	}
        this.invokeFacade(context);
        form.INFO.setCurrentGroup(FormGroupType.G2);
        context.setNextForm(ProgramIds.tyu010we.tyu01002);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_FRM_UPD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_upd(FormActionContext context) {
    	String rowIndex = context.getRequest().getParameter(Tyu010weConstants.ROW_INDEX);
    	Tyu01002FormBean form = (Tyu01002FormBean) context.getFormBean();
    	
    	if(!StringHelper.isNullOrEmpty(rowIndex)) {
    		String cusID = form.M1.displayRowAt(Integer.parseInt(rowIndex)).getCUSID();
    		context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMER_ID, cusID);
            
    	}
    	context.getUserMap().put(Tyu010weConstants.ContextMapKey.MODE, Tyu010weConstants.EDIT_MODE);
        this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_GBFR_CANCEL] を実行する
     * アクション: 前グループ(GBFR)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_gbfr_cancel(FormActionContext context) {
      	this.invokeFacade(context);
        return this.result(context);
    }

    /**
     * フォームアクション [TYU01002_GNXT_DEF] を実行する
     * アクション: 次グループ(GNXT)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_gnxt_def(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }



}
