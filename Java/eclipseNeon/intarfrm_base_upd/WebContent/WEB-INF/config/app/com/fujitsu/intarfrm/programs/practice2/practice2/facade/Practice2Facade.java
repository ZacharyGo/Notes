
package com.fujitsu.intarfrm.programs.practice2.practice2.facade;

import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;
import com.fujitsu.intarfrm.programs.practice2.practice2.facade.Practice2DataMapper.DataMapperType;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習２]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice2Facade extends Practice2FacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice2FormBean> context) throws Exception {
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
     * <p>明細M1のページ遷移処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_M1_Paging(ModelContext<Practice2FormBean> context) throws Exception {

        // ソートする対象の明細情報を取得する
        AbstractListData<?, ?> listData = context.getFormBean().getListData(FormBorderType.M1);

        // 遷移先ページ番号を取得する
        Integer tempPageNo = context.getClicked().getPageNo();
        int pageNo = tempPageNo == null ? 0 : tempPageNo;

        if (context.getFormBean().M1.getInfo().getListMode() == FormListMode.MODE_1) {
            // 明細モード１の場合、再検索を行う。
            DbTransaction transaction = null;
            try {
                //トランザクションを開始する
                transaction = context.getTransaction();
                // コネクションを取得する
                // IfmConnection conn = transaction.getConnection();
                // トランザクションを確定する
                transaction.commit();
            } catch (Exception ex) {
                // トランザクションをリセットする。
                transaction.rollback();
                throw ex;
            } finally {
                // トランザクションを閉じる。
                transaction.end();
            }
        } else {
            // ページ遷移を実行する
            context.getFormBean().M1.getPage().pageAbsolute(pageNo);
        }

        // フォーカスの位置を設定する
        super.setFocusListTop(context, listData);
    }

    /**
     * <p>明細M1のソート処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_M1_Sorting(ModelContext<Practice2FormBean> context) throws Exception {

        // ソートする対象の明細情報を取得する
        AbstractListData<?, ?> listData = context.getFormBean().getListData(FormBorderType.M1);

        // ソート状態を設定する
        super.setSortState(listData, context);

        if (context.getFormBean().M1.getInfo().getListMode() == FormListMode.MODE_1) {
            // 明細モード１の場合、再検索を行う。
            DbTransaction transaction = null;
            try {
                // トランザクションを開始する
                transaction = context.getTransaction();
                // コネクションを取得する
                // IfmConnection conn = transaction.getConnection();
                // トランザクションを確定する
                transaction.commit();
            } catch (Exception ex) {
                // トランザクションをリセットする。
                transaction.rollback();
                throw ex;
            } finally {
                // トランザクションを閉じる。
                transaction.end();
            }
        }

        // フォーカスの位置を設定する
        super.setFocusListTop(context, listData);
    }

    /**
     * <p>フォームアクション[PRACTICE2_他フォーム(PRACTICE2_FRM)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice2_frm(ModelContext<Practice2FormBean> context) throws Exception {
    }

}
