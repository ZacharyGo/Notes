
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

    ///**
    // * 画面のロード処理
    // * @param context コンテキスト
    // */
    // ZSG 20211024 Uncomment (Start)
    @Override
    public ActionResult _Load(FormActionContext context) {
        if (context.createNewFormBean()) {
            //FormBeanを作成する
            Practice2FormBean bean = (Practice2FormBean)this.createFormDataInstance(context, Practice2FormBean.class);
            // ZSG Add Code 20211024 (Start)
            bean.CARD.setDEPARTMENT("System Development Department");
            Practice2M1RowData row = bean.M1.newRow();
            row.setID(100000);
            row.setMNO(1);
            row.setMEI("Fujitsu Taro");
            row = bean.M1.newRow();
            row.setID(200001);
            row.setMNO(2);
            row.setMEI("Fujitsu Hanako");
            // ZSG Add Code 20211024 (End)
            // FormBeanを保存する
            context.setFormBean(bean);

            // ロード処理を実行する
            this.invokeFacade(context);
        }
        return this.result(context);
    }
    // ZSG 20211024 Uncomment (End)
    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE2_FRM] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    // ZSG 20211024 Uncomment (Start)
    @Override
    public ActionResult practice2_frm(FormActionContext context) {
        this.invokeFacade(context);
        // ZSG Add Code 20211024 (Start)
        Practice2FormBean bean = (Practice2FormBean) context.getFormBean();
        System.out.println(bean.CARD.getDEPARTMENT());
//        for (int i=0; i< bean.M1.displayRowCount(); i++) {
//        	Practice2M1RowData row = bean.M1.displayRowAt(i);
//        	System.out.println(row.getMNO().toString() + ", " + row.getID().toString() + ", " + row.getMEI());
//        }
        for(Practice2M1RowData row: bean.M1.displayRows()) {
        	System.out.println(row.getMNO().toString() + ", " + row.getID().toString() + ", " + row.getMEI());
        }
        
        // ZSG Add Code 20211024 (End)
        return this.result(context);
    }
    // ZSG 20211024 Uncomment (End)
    
}
