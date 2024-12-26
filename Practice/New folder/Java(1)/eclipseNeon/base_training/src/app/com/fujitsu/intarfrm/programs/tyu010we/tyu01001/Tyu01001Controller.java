
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeType;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
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

    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
        	String mode = Tyu010weConstants.ADD_MODE;
        	Tyu01001FormBean bean = (Tyu01001FormBean)this.createFormDataInstance(context, Tyu01001FormBean.class);
        	//Check if userMap Mode exist
            if(context.getUserMap().containsKey(Tyu010weConstants.ContextMapKey.MODE)) {
            	mode = context.getUserMap().get(Tyu010weConstants.ContextMapKey.MODE).toString(); 
            }
             
            bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));
           
        	if(Tyu010weConstants.ADD_MODE.equalsIgnoreCase(mode)) {
            	bean.CARD.setSYOMODENAME(Tyu010weConstants.ADD_MODE.toUpperCase());
            } else {
            	bean.INFO.setCurrentMode(FormModeType.MODE2);
            	bean.CARD.setCUSID(context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMER_ID).toString());
            	bean.CARD.setSYOMODENAME(Tyu010weConstants.EDIT_MODE.toUpperCase());
            }
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

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

    /**
     * フォームアクション [TYU01001_FRM_BACK] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult tyu01001_frm_back(FormActionContext context) {
        this.invokeFacade(context);
        return this.result(context);
    }

}
