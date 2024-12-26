
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001;

import java.util.Objects;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormInfo;
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
    // ZSG 20211025 Uncomment (Start)
    /**
     * 画面のロード処理
     * @param context コンテキスト
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Tyu01001FormBean bean = (Tyu01001FormBean)this.createFormDataInstance(context, Tyu01001FormBean.class);
            // FormBeanを保存する
            context.setFormBean(bean);
            // ZSG 20211025 Add (Start)
            FormInfo formInfo = context.getFormBean().INFO;
            String displayMode = (String) context.getUserMap().get(Tyu010weConstants.ContextMapKey.DISPLAY_MODE);
            
            if(Objects.equals(displayMode, Tyu010weConstants.ADD_MODE)) {
            	bean.CARD.setSYOMODENAME(Tyu010weConstants.ADD_MODE);
            } else {
            	formInfo.setCurrentMode(FormModeType.MODE2);
            }
            // ZSG 20211025 Add (End)
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }
    // ZSG 20211025 Uncomment (End)
    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [TYU01001_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult tyu01001_frm(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
