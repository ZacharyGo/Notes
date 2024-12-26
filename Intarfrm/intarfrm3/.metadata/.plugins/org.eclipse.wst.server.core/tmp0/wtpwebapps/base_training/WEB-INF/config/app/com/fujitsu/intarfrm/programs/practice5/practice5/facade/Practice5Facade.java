
package com.fujitsu.intarfrm.programs.practice5.practice5.facade;

// ADD START---------------------------------------------------
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessage;
// ADD END-----------------------------------------------------
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5FormBean;
// ADD START---------------------------------------------------
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;
// ADD END-----------------------------------------------------
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習５]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice5Facade extends Practice5FacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice5FormBean> context) throws Exception {
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
     * <p>フォームアクション[PRACTICE5_他フォーム(PRACTICE5_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice5_frm(ModelContext<Practice5FormBean> context) throws Exception {
        // ADD START---------------------------------------------------
        // formBeanを取得する
        Practice5FormBean formBean =  context.getFormBean();
        // メッセージを作成する
        ServerMessage serverMessage = new ServerMessage(MessageInfos.ITEM.I001);
        // formBeanのメッセージリストに追加する
        formBean.addServerMessage(serverMessage);
        // ADD END-----------------------------------------------------
    }

}
