
package com.fujitsu.intarfrm.programs.practice3.practice3a.facade;

import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean;
import com.fujitsu.intarfrm.programs.practice3.practice3a.facade.Practice3aDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習３－１]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice3aFacade extends Practice3aFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>				<p> Execute the load process. </ p>
     *
     * @param context コンテキストオブジェクト		@param context Context object
     * @throws Exception 例外				@throws Exception Exception 
     */
    public void do_Load(ModelContext<Practice3aFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する									Start a transaction
            transaction = context.getTransaction();
            // コネクションを取得する									Get a connection
            IfmConnection conn = transaction.getConnection();
            super.loadInternal(context, conn);
            // トランザクションを確定する									Confirm the transaction
            transaction.commit();
        } catch (DatabaseException ex) {
            // トランザクションをリセットする。									Reset the transaction.
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。									Close the transaction. 
            transaction.end();
        }
    }


    /**
     * <p>フォームアクション[PRACTICE3A_他フォーム(PRACTICE3A_FRM)]の処理を実行する。</p>	
     * <p> Executes the processing of the form action [PRACTICE3A_other form (PRACTICE3A_FRM)]. </ p>
     *
             * アクション: 他フォーム(FRM)<br>						Action: Other Form (FRM) <br>
     *
     * @param context コンテキストオブジェクト				@param context Context object
     * @throws Exception 例外						@throws Exception Exception 
     */
    public void doPractice3a_frm(ModelContext<Practice3aFormBean> context) throws Exception {
    }

}
