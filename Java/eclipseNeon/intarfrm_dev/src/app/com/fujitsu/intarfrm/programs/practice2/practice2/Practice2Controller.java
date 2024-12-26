
package com.fujitsu.intarfrm.programs.practice2.practice2;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1RowData;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2ControllerBase;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 *
 * @author INTARFRM
 */
public class Practice2Controller extends Practice2ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice2Controller() {
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
            Practice2FormBean bean = (Practice2FormBean)this.createFormDataInstance(context, Practice2FormBean.class);
            
            //ADD START---------------------------------------------------
            //Card: Set the department name in the department
            bean.CARD.setDEPARTMENT("System Development Department");
            //Create the list
            //1st list data
            Practice2M1RowData row = bean.M1.newRow(true);
            row.setID(100000);
            row.setMNO(1);
            row.setMEI("Fujitsu Taro");
            //2nd list data
            Practice2M1RowData row2 = bean.M1.newRow(true);
            row2.setID(200000);
            row2.setMNO(2);
            row2.setMEI("Fujitsu Hanako");
            //ADD END-----------------------------------------------------

            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    /**
     * フォームアクション [PRACTICE2_FRM] を実行する
     * アクション: 他フォーム(FRM)
     * @param context
     * @return
     */
    @Override
    public ActionResult practice2_frm(FormActionContext context) {
        this.invokeFacade(context);
        //ADD START --------------------------------------------
        //Retrieve the form data
        Practice2FormBean bean = (Practice2FormBean)context.getFormBean();
        //Output the department name to console
        System.out.println("Card:" + bean.CARD.getDEPARTMENT());

        //Output the list to console
        for (Practice2M1RowData row : bean.M1.displayRows()) {
        	System.out.println("Row Number:" + row.getMNO());
        	System.out.println("Employee Number:" + row.getID());
        	System.out.println("Employee Name:" + row.getMEI());
        }
        //ADD END----------------------------------------------
        return this.result(context);
    }

}
