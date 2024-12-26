
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade;

import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[Customer Master List]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Tyu01002Facade extends Tyu01002FacadeBase {

    /**
     * <p>ロード処理を実行する。</p> //Execute the load process.
     *
     * @param context コンテキストオブジェクト Context object
     * @throws Exception 例外  Exception 
     */
    public void do_Load(ModelContext<Tyu01002FormBean> context) throws Exception {
    	context.getUserMap().put(Tyu010weConstants.DISPLAY_MODE, Tyu010weConstants.ADD_MODE);
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する (Start a transaction)
            transaction = context.getTransaction();
//            Tyu01002M1RowData row = new Tyu01002M1RowData(context.getFormBean().M1);
//            row.set
            // コネクションを取得する (Get a connection)
            IfmConnection conn = transaction.getConnection();
            super.loadInternal(context, conn);
            // トランザクションを確定する (Confirm the transaction)
            transaction.commit();
        } catch (DatabaseException ex) {
            // トランザクションをリセットする。(Revert the transaction.)
            transaction.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。 (Close the transaction.)
            transaction.end();
        }
    }

    /**
     * <p>明細M1のページ遷移処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_M1_Paging(ModelContext<Tyu01002FormBean> context) throws Exception {

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
    public void do_M1_Sorting(ModelContext<Tyu01002FormBean> context) throws Exception {

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
     * <p>フォームアクション[TYU01002_Other_Form_Add(TYU01002_FRM_ADD)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_frm_add(ModelContext<Tyu01002FormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[TYU01002_Other_Form_Delete(TYU01002_FRM_DEL)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_frm_del(ModelContext<Tyu01002FormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[TYU01002_Other_Form_Edit(TYU01002_FRM_UPD)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_frm_upd(ModelContext<Tyu01002FormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[TYU01002_Prev_Group_Cancel(TYU01002_GBFR_CANCEL)]の処理を実行する。</p>
     *
     * アクション: 前グループ(GBFR)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_gbfr_cancel(ModelContext<Tyu01002FormBean> context) throws Exception {
        this.executeGBFR(context);

    }

    /**
     * <p>フォームアクション[TYU01002_Next_Group_Confirm(TYU01002_GNXT_DEF)]の処理を実行する。</p>
     *
     * アクション: 次グループ(GNXT)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_gnxt_def(ModelContext<Tyu01002FormBean> context) throws Exception {
        this.executeGNXT(context);
        this.do_Load(context);
    }

}
