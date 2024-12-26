
package com.fujitsu.intarfrm.programs.practice7.practice7a.facade;

import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.items.SelectableItem;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.practice7.practice7a.facade.Practice7aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[Exercise７-１]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice7aFacade extends Practice7aFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice7aFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する
            transaction = context.getTransaction();
            // コネクションを取得する
            IfmConnection conn = transaction.getConnection();
            super.loadInternal(context, conn);
            
            // DYNAMIC DROPDOWN - START
            // Create the selections
            List<SelectableItem> items = new ArrayList<SelectableItem>();
            items.add(new SelectableItem("value1", "caption1"));
            items.add(new SelectableItem("value2", "caption2"));
            items.add(new SelectableItem("value3", "caption3"));
            // Set the created list of selections in the item information dynamic dropdown 
            context.getFormBean().INFO.G1.CARD.DRLDYNAMIC2.getSelectableListHolder().setCustomItems(items);
            // DYNAMIC DROPDOWN - END
            
            // USER_DATA START
            context.getFormBean().USER_DATA.put("jspAttribute", "getting attribute value in jsp");
            // USER_DATA END
            
            // トランザクションを確定する
            transaction.commit();
        } catch (DatabaseException ex) {
            // トランザクションをリセットする。
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。
            transaction.end();
        }
    }


    /**
     * <p>フォームアクション[PRACTICE7A_DBU_REGISTER(PRACTICE7A_DBU_REGISTER)]の処理を実行する。</p>
     *
     * アクション: DB更新(DBU)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7a_dbu_register(ModelContext<Practice7aFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する
            transaction = context.getTransaction();
            // コネクションを取得する
            IfmConnection conn = transaction.getConnection();
            super.update(context, conn, DataMapperType.PRACTICE7A_DBU_REGISTER);
            // トランザクションを確定する
            transaction.commit();
            
            // CLIENTUSERDATA - START
            Practice7aFormBean form = context.getFormBean();
            form.CLIENT_USER_DATA.put("clientUserDataKey", "get data in JS using client user data (ajax data) from facade");
            // CLIENTUSERDATA - END
            
            
        } catch (DatabaseException ex) {
        	// トランザクションをリセットする。
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。
            transaction.end();
        }

    }

    /**
     * <p>フォームアクション[PRACTICE7A_DBU_UPDATE(PRACTICE7A_DBU_UPDATE)]の処理を実行する。</p>
     *
     * アクション: DB更新(DBU)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7a_dbu_update(ModelContext<Practice7aFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する
            transaction = context.getTransaction();
            // コネクションを取得する
            IfmConnection conn = transaction.getConnection();
            super.update(context, conn, DataMapperType.PRACTICE7A_DBU_UPDATE);
            // トランザクションを確定する
            transaction.commit();
        } catch (DatabaseException ex) {
        	// トランザクションをリセットする。
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。
            transaction.end();
        }

    }

    /**
     * <p>フォームアクション[PRACTICE7A_FRM_CANCEL(PRACTICE7A_FRM_CANCEL)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7a_frm_cancel(ModelContext<Practice7aFormBean> context) throws Exception {
    }

}
