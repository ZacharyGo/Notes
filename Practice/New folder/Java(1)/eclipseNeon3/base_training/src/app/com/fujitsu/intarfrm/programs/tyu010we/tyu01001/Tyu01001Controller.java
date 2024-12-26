
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeType;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants.ContextMapKey;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001ControllerBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
 *
 * @author INTARFRM
 */
public class Tyu01001Controller extends Tyu01001ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Tyu01001Controller() {
        //共通処理を継承する
        super();
    }

    ///**
    // * 画面のロード処理
    // * @param context コンテキスト
    // */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Tyu01001FormBean bean = (Tyu01001FormBean)this.createFormDataInstance(context, Tyu01001FormBean.class);
//            bean.CARD.setSYOMODENAME(Tyu010weConstants.ContextMapKey.MODE);
            // ZSG 20211029 Add (Start)
            //Set the Logon Date
            bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));
            
            
            System.out.print("Control 1:");
            System.out.println(Tyu010weConstants.ContextMapKey.MODE);
//            bean.CARD.setSYOMODENAME(Tyu010weConstants.ADD_MODE);
            
            
            String mode = null;
//            Tyu010weConstants.ADD_MODE;
            System.out.println("getSYOMODENAMe" + bean.CARD.getSYOMODENAME());
            //Check if userMap Mode exist
            if(context.getUserMap().containsKey(Tyu010weConstants.ContextMapKey.MODE)) {
            	mode = context.getUserMap().get(Tyu010weConstants.ContextMapKey.MODE).toString(); 
            }
            
        	if(Tyu010weConstants.ADD_MODE.equalsIgnoreCase(mode)) {
            	bean.CARD.setSYOMODENAME(Tyu010weConstants.ADD_MODE.toUpperCase());
            	bean.INFO.setCurrentMode(FormModeType.MODE2);
            } else {
            	bean.INFO.setCurrentMode(FormModeType.MODE1);
            	bean.CARD.setCUSID(context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMERID).toString());
            	bean.CARD.setSYOMODENAME(Tyu010weConstants.EDIT_MODE.toUpperCase());
            }
            
            // FormBeanを保存する
            context.setFormBean(bean);
            
            
            //ZSG-V 20211019 Start
//            FormInfo formInfo = context.getFormBean().INFO;
//            String displayMode = (String) context.getUserMap().get(Tyu010weConstants.ContextMapKey.MODE);
//            if (Objects.equals(displayMode, Tyu010weConstants.ADD_MODE)) {
//            	bean.CARD.setSYOMODENAME("Add");
//            } else {
//            	formInfo.setCurrentMode(FormModeType.MODE2);
//            }
//        	
            //ZSG-V 20211019 (End)
            // ZSG 20211029 Add (Start)
//            if (context.getUserMap().
//            		.containsKey(Tyu010weConstants.ContextMapKey.MODE)) {
                // Gets the mode information set in the transition origin.
//            	if (Tyu010weConstants.ContextMapKey.MODE != Tyu010weConstants.ADD_MODE) {
//            		context.getFormBean().INFO.setCurrentMode(FormModeType.MODE2);
//            	}
//            }


//            context.setNextForm(ProgramIds.tyu010we.tyu01001);
            // ZSG 20211029 Add (End)
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する
    
    // ZSG 20211028 Uncomment (Start)
    /**
     * フォームアクション [TYU01001_Back] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01001_back(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211028 Uncomment (End)
    // ZSG 20211028 Uncomment (Start)
    /**
     * フォームアクション [TYU01001_DBU] を実行する
     * アクション: DB更新(DBU)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01001_dbu(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }
    // ZSG 20211028 Uncomment (End)
}
