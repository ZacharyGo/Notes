
package com.fujitsu.intarfrm.programs.practice7.practice7;

import java.math.BigDecimal;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7ControllerBase;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>フォームアクション処理を拡張するクラスです。</p>
 *
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 *
 * @author INTARFRM
 */
public class Practice7Controller extends Practice7ControllerBase {

    /**
     * コンストラクタ
     *
     */
    public Practice7Controller() {
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
            Practice7FormBean bean = (Practice7FormBean)this.createFormDataInstance(context, Practice7FormBean.class);
            // FormBeanを保存する
            context.setFormBean(bean);
            // ロード処理を実行する
            this.invokeFacade(context);
            
//            System.out.println("----- Reviewer #20 START ----- ");
//            List<String> list = Arrays.asList("abc","def","ghi");
//            int count = 0;
//            while( list.get(count).equals("abc") ){
//                System.out.print("list 1 : " + list.get(count));
//                count++;
//            }
//            List<String> list1 = Arrays.asList("abc","def","ghi");
//            for (String str : list1){
//                System.out.print("list 2 : " + str);
//                break;
//            }
//            List<String> list2 = Arrays.asList("abc","def","ghi");
//            for (String str : list2){
//                System.out.print("list 3 : " + str);
//                continue;
//            }
//            List<String> list3 = Arrays.asList("abc","def","ghi");
//            int count2 = 0;
//            do{
//                System.out.print("list 4 : " + list3.get(count2));
//                count2++;
//            }while(list3.get(count2).equals("ghi"));
//            System.out.println("----- Reviewer #20 END ----- ");
            
//            System.out.println("----- Reviewer #23 START ----- ");
//            List<String> list23 = new ArrayList<>(Arrays.asList("AA","BB", "CC", "DD"));
//            for(String s : list23) {
//                if(Objects.equals("BB", s)){
//                    list23.remove(s);
//                }
//            }
//            for(String s: list23){
//                System.out.print("list 23 : " + s);
//            }
//            System.out.println("----- Reviewer #23 END ----- ");
            

        }
        return this.result(context);
    }

    // フォームアクションの処理を拡張する

    ///**
    // * フォームアクション [PRACTICE4_ETC] を実行する
    // * アクション: （その他の動作）(ETC)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice4_etc(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7_DBU_DELETE] を実行する
    // * アクション: DB更新(DBU)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7_dbu_delete(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7_FRM_ADD] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7_frm_add(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7_FRM_DETAILS] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7_frm_details(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

    ///**
    // * フォームアクション [PRACTICE7_FRM_EDIT] を実行する
    // * アクション: 他フォーム(FRM)
    // * @param context
    // * @return
    // */
    //@Override
    //public ActionResult practice7_frm_edit(FormActionContext context) {
        //this.invokeFacade(context);
        //return this.result(context);
    //}

}
