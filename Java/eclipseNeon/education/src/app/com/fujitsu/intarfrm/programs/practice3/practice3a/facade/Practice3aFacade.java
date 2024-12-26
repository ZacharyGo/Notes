
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
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice3aFormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する
            transaction = context.getTransaction();
            // コネクションを取得する
            IfmConnection conn = transaction.getConnection();
            super.loadInternal(context, conn);
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
     * <p>フォームアクション[PRACTICE3A_他フォーム(PRACTICE3A_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice3a_frm(ModelContext<Practice3aFormBean> context) throws Exception {
    }

}
