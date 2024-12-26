
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupType;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1RowData;
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
    // ZSG 20211028 Uncomment (Start)
    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Tyu01002FormBean bean = (Tyu01002FormBean)this.createFormDataInstance(context, Tyu01002FormBean.class);
            // ZSG 20211028 Add (Start)
//            String dateTime = LocalDateTime.now().toString();
            bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));
            // ZSG 20211028 Add (End)
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }
 // ZSG 20211028 Uncomment (End)
    // フォームアクションの処理を拡張する Extend the processing of form actions 
    // ZSG 20211028 Uncomment (Start)
    /**
     * フォームアクション [TYU01002_FRM_Add] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_add(FormActionContext context) {
    	// ZSG 20211028 Add (Start)
    	context.setNextForm(ProgramIds.tyu010we.tyu01001);
    	context.getUserMap().put(Tyu010weConstants.ContextMapKey.MODE, Tyu010weConstants.ADD_MODE);
//    			Tyu01001FormModes.Mode1);
    	// ZSG 20211028 Add (End)
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211028 Uncomment (End)
    // ZSG 20211028 Uncomment (Start)
    /**
     * フォームアクション [TYU01002_FRM_DEL] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_del(FormActionContext context) {
    	// ZSG 20211029 Add (Start)
//    	context.setNextForm(ProgramIds.tyu010we.tyu01002);
    	// ZSG 20211029 Add (End)
    	//ZSG Plan (Start)
//    	String rowIndex = context.getRequest().getParameter(Tyu010weConstants.ROW_INDEX);
//    	Tyu01002FormBean form = (Tyu01002FormBean)this.createFormDataInstance(context, Tyu01002FormBean.class);
    	
    	

//    	context.getRequest().getp
    	Tyu01002FormBean form = (Tyu01002FormBean) context.getFormBean();
    	Tyu01002M1RowData rowData = form.M1.displayRowAt(context.getClicked().getRowNo().intValue());   
    	int rowNo = context.getClicked().getRowNo();
    	String custID = form.M1.displayRowAt(context.getClicked().getRowNo().intValue()).getCUSID();
//    	if(!StringHelper.isNullOrEmpty(rowIndex)) {
//    		String cusID = form.M1.displayRowAt(Integer.parseInt(rowIndex)).getCUSID();
    		context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMERID, custID);
//    		context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMERID, form.M1.displayRowAt(Integer.parseInt(rowIndex)).getCUSID());
            
//    	}
        this.invokeFacade(context);
        form.INFO.setCurrentGroup(FormGroupType.G2);
        context.setNextForm(ProgramIds.tyu010we.tyu01002);
        return this.result(context);
    	//ZSG Plan (End)
//        this.invokeFacade(context);
//        return this.result(context);
    }
    // ZSG 20211028 Uncomment (End)
    // ZSG 20211028 Uncomment (Start)
    /**
     * フォームアクション [TYU01002_FRM_UPD] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01002_frm_upd(FormActionContext context) {
    	//ZSG 20211029z (Start)
    	Tyu01002FormBean form = (Tyu01002FormBean) context.getFormBean();
    	String customerID = form.M1.displayRowAt(context.getClicked().getRowNo().intValue()).getCUSID();

		context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMERID, customerID);
    	context.getUserMap().put(Tyu010weConstants.ContextMapKey.MODE, Tyu010weConstants.EDIT_MODE);
    	//ZSG 20211029z (End)
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211028 Uncomment (End)
    // ZSG 20211028 Uncomment (Start)
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
    // ZSG 20211028 Uncomment (End)
    // ZSG 20211028 Uncomment (Start)
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
    // ZSG 20211028 Uncomment (End)
}
