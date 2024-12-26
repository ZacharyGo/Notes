
package com.fujitsu.intarfrm.programs.practice6.practice6a.facade;

// ADD START---------------------------------------------------
import com.fujitsu.intarfrm.helpers.commons.messages.MessageFormItem;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessage;
// ADD END-----------------------------------------------------
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean;
// ADD START---------------------------------------------------
import com.fujitsu.intarfrm.skeletons.commons.exceptions.BusinessException;
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;
// ADD END-----------------------------------------------------
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習６ー１]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice6aFacade extends Practice6aFacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice6aFormBean> context) throws Exception {
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
     * <p>フォームアクション[PRACTICE6A_他フォーム(PRACTICE6A_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice6a_frm(ModelContext<Practice6aFormBean> context) throws Exception {
        // ADD START---------------------------------------------------
        Practice6aFormBean bean = (Practice6aFormBean) context.getFormBean();
        // ログインIDとパスワードの入力値を取得する
        String id = bean.CARD.getLOGINID();
        String pwd = bean.CARD.getPASSWORD();
        // ログインIDとパスワードのいずれかが"INTARFRM"では無い場合にはエラーを発生させる
        if (!"INTARFRM".equals(id)||!"INTARFRM".equals(pwd)) {
            ServerMessage msg = new ServerMessage(MessageInfos.ITEM.E001);
            msg.getMessageFormItems().add(new MessageFormItem(
                    bean.INFO.G1.CARD.LOGINID.getId()));
            msg.getMessageFormItems().add(new MessageFormItem(
                    bean.INFO.G1.CARD.PASSWORD.getId()));
            throw new BusinessException(msg);
        }
        // ADD END-----------------------------------------------------
    }

}
