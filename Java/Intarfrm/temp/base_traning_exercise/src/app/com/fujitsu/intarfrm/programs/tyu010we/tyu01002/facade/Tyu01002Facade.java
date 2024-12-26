
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1RowData;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade.Tyu01002DataMapper.DataMapperType;

import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_customerEntity;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOperatorType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.StatementSelect;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
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
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Tyu01002FormBean> context) throws Exception {
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
    	DbTransaction transaction = null;
 	   	try {
          // トランザクションを開始する
 	   		transaction = context.getTransaction();
          // コネクションを取得する
//           IfmConnection conn = transaction.getConnection();
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

    /**
     * <p>フォームアクション[TYU01002_Next_Group_Confirm(TYU01002_GNXT_DEF)]の処理を実行する。</p>
     *
     * アクション: 次グループ(GNXT)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_gnxt_def(ModelContext<Tyu01002FormBean> context) throws Exception {
    	// ZSG Code (20211209) {Begin}
    	Tyu01002FormBean form = context.getFormBean();
        DbTransaction tran = null;
        StatementSelect stmtM_store = null;
        ResultSet rsM_store = null;
        SqlSelectBuilder builder = null;
        try {
            // Start the transaction
            tran = context.getTransaction();

            // Gets connection
            IfmConnection conn = tran.getConnection();

            // Clears the current list data and page information.
            form.M1.clear();  

            // Creates the instance of the entity.
            M_customerEntity entity = new M_customerEntity();
            
            // Generate the SqlSelectBuilder Class
            builder = new SqlSelectBuilder(entity);

               
            // Set the column to be retrieved
            builder.addColumn(entity.CUSID);
            builder.addColumn(entity.CUSNAME);
            builder.addColumn(entity.EMAIL);
            builder.addColumn(entity.TELNO);


            // Add the where clause of the search condition.
            // The store ID (STOREID) is added to where clause when the search condition is specified.
            if (!StringHelper.isNullOrEmpty(form.CARD.getSTOREID())) {
                builder.addWhereBindParam(entity.STOREID, SqlOperatorType.EQUAL,  
                                            form.CARD.getSTOREID());
            }

            //Generate the Statement class to execute Select
            stmtM_store = builder.toStatement(conn);
            //Select Execution in Statement class
            rsM_store = stmtM_store.executeSelect();
            int listNumber = 0;
            while (rsM_store.next()) {
            	Tyu01002M1RowData row = (Tyu01002M1RowData)form.M1.newRow();
            	row.put(form.INFO.M1.ITEM.MEINO,
                		++listNumber);
            	row.put(form.INFO.M1.ITEM.CUSID,
                		rsM_store.getString(entity.CUSID.getPhysicalName()));
            	row.put(form.INFO.M1.ITEM.CUSNAME,
                		rsM_store.getString(entity.CUSNAME.getPhysicalName()));
            	row.put(form.INFO.M1.ITEM.TELNO,
                		rsM_store.getString(entity.TELNO.getPhysicalName()));
            }

        } catch (Exception ex) {

            throw ex;
        } finally {

            //Close ResultSet
            super.closeResultSet(rsM_store);

            //Close Statement
            super.closeStatement(stmtM_store);

            //End transaction
            tran.end();

        }
    	// ZSG Code (20211209) {End}
        this.executeGNXT(context);
        this.do_Load(context);
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
     * <p>フォームアクション[TYU01002_Other_Form_Delete(TYU01002_FRM_DEL)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_frm_del(ModelContext<Tyu01002FormBean> context) throws Exception {
    }

}
