
package com.fujitsu.intarfrm.programs.practice2.practice2;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2CardBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.beans.Practice2M1Bean;
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
    // ZG Uncomment Codes (20211208) {Begin}
    /**
          * 画面のロード処理
     * @param context コンテキスト
     * Screen loading process
     * @param context Context
     */
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する Create a Form Bean
            Practice2FormBean formBean = (Practice2FormBean)this.createFormDataInstance(context, Practice2FormBean.class);
            // FormBeanを保存する Save the Form Bean
            context.setFormBean(formBean);
            // ZG Code Added (20211208) {Begin}
            // Get and set the value of the card item.
            Practice2CardBean card= formBean.CARD;
            card.setDEPARTMENT("System Development Department");
            // Get the list data of the list [M1] from the form data.
            Practice2M1Bean m1 = formBean.M1;

            //Create new list row data and register to the list part.
            Practice2M1RowData row = formBean.M1.newRow(true);
 
            //Set the value to item towards the newly created list row.
            row.setMNO(1);
            row.setID(100000);
            row.setMEI("Fujitsu Taro");

            // Repeat for second row
            row = formBean.M1.newRow(true);
            row.setMNO(2);
            row.setID(200000);
            row.setMEI("Fujitsu Hanako");
            
           
            // ZG Code Added (20211208) {End}
            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    /**
           * フォームアクション [PRACTICE2_FRM] を実行する
           * アクション: 他フォーム(FRM)
     * Perform the form action [PRACTICE2_FRM]
     * Action: Other form (FRM) 
     * @param context
     * @return
     */
    @Override
    public ActionResult practice2_frm(FormActionContext context) {
        this.invokeFacade(context);
		// ZG Code Added (20211208) {Begin}
        // Get the FormBean.
        Practice2FormBean formBean = (Practice2FormBean) context.getFormBean();

        // Get the card data from the form data.
        Practice2CardBean card = formBean.CARD;
        // Get and set the value of the card item.
        int rows = formBean.M1.rowCount();
        for(Practice2M1RowData row: formBean.M1.displayRows()) {
        	System.out.println("Row Number :" + row.getMNO().toString());
        	System.out.println("Employee Number :" + row.getID().toString());
        	System.out.println("Employee Name :" + row.getMEI());        	
        }		
		// ZG Code Added (20211208) {End}
        return this.result(context);
    }
    // ZG Uncomment Codes (20211208) {End}
}
