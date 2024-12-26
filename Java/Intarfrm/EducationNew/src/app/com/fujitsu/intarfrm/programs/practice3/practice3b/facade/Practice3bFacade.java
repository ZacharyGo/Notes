
package com.fujitsu.intarfrm.programs.practice3.practice3b.facade;

import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean;
import com.fujitsu.intarfrm.programs.practice3.practice3b.facade.Practice3bDataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習３－２]の業務処理クラス。</p>					<p> Business processing class of form [Practice 3-2]. </ p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>			Performs row processing for each action defined in this form. <br> 
 *
 * @author INTARFRM
 */
public final class Practice3bFacade extends Practice3bFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>							<p> Execute the load process. </ p>
     *
     * @param context コンテキストオブジェクト					@param context Context object
     * @throws Exception 例外							@throws Exception Exception 
     */
    public void do_Load(ModelContext<Practice3bFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する							Start a transaction
            transaction = context.getTransaction();
            // コネクションを取得する							Get a connection
            IfmConnection conn = transaction.getConnection();
            super.loadInternal(context, conn);
            // トランザクションを確定する							Confirm the transaction
            transaction.commit();
        } catch (DatabaseException ex) {
            // トランザクションをリセットする。							Reset the transaction.
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。							Close the transaction. 
            transaction.end();
        }
    }


    /**
     * <p>フォームアクション[PRACTICE3B_（その他の動作）(PRACTICE3B_ETC)]の処理を実行する。</p>
     *
     * アクション: （その他の動作）(ETC)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice3b_etc(ModelContext<Practice3bFormBean> context) throws Exception {
    }

}
