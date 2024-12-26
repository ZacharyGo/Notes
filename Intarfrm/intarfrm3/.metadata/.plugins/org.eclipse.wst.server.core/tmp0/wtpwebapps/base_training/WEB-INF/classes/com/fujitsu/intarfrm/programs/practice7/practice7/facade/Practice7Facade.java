
package com.fujitsu.intarfrm.programs.practice7.practice7.facade;

import java.math.BigDecimal;
import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_productEntity;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOperatorType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.StatementSelect;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.practice7.practice7.beans.Practice7M1RowData;
import com.fujitsu.intarfrm.programs.practice7.practice7.facade.Practice7DataMapper.DataMapperType;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[Exercise７]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice7Facade extends Practice7FacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice7FormBean> context) throws Exception {
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
    public void do_M1_Paging(ModelContext<Practice7FormBean> context) throws Exception {

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
    public void do_M1_Sorting(ModelContext<Practice7FormBean> context) throws Exception {

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
     * <p>フォームアクション[PRACTICE4_ETC(PRACTICE4_ETC)]の処理を実行する。</p>
     *
     * アクション: （その他の動作）(ETC)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice4_etc(ModelContext<Practice7FormBean> context) throws Exception {
    	// ADD START---------------------------------------------------
    			Practice7FormBean form = context.getFormBean();
    			DbTransaction tran = null;
    			StatementSelect statement = null;
    			ResultSet result = null;
    			SqlSelectBuilder builder = null;

    			try {
    				// Start the transaction
    				tran = context.getTransaction();
    				// Retrieves the DB connect
    				IfmConnection conn = tran.getConnection();

    				// Clears the current list data and page information.
    				form.M1.clear();

    				// Entity of product master
    				M_productEntity productMst = new M_productEntity();

    				// Builder class using SELECT 
    				builder = new SqlSelectBuilder(productMst);
    				builder.addColumn(productMst.columns());

    				BigDecimal searchVal =form.CARD.getSEARCHPRICE();
    				// Addition of WHERE condition
    				if (searchVal != null) {
    					// Sets the condition [inputted value and below] to product master’s [Price] 
    					builder.addWhereBindParam(productMst.PRICE, SqlOperatorType.LESS_THAN_EQUAL, searchVal);
    				}
    				
    				// Creation of SQL execution object
    				statement = builder.toStatement(conn);
    				// Search condition
    				result = statement.executeSelect();

    				while (result.next()) {
    					// Set the data of details row unit
    					Practice7M1RowData row = new Practice7M1RowData(form.M1);
    					row.setPRODUCTID(result.getString(productMst.PRODUCTID.getPhysicalName()));
    					row.setPRODUCTNAME(result.getString(productMst.PRODUCTNAME.getPhysicalName()));
    					row.setPRICE(result.getBigDecimal(productMst.PRICE.getPhysicalName()));
    					form.M1.addRow(row);
    				}
    			} catch (Exception ex) {
    				throw ex;
    			} finally {
    				// Closes ResultSet
    				super.closeResultSet(result);
    				// Closes Statement
    				super.closeStatement(statement);
    				// Ends transaction
    				tran.end();
    			}
    			// ADD END-----------------------------------------------------
    }

    /**
     * <p>フォームアクション[PRACTICE7_DBU_DELETE(PRACTICE7_DBU_DELETE)]の処理を実行する。</p>
     *
     * アクション: DB更新(DBU)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7_dbu_delete(ModelContext<Practice7FormBean> context) throws Exception {
        DbTransaction transaction = null;
        try {
            // トランザクションを開始する
            transaction = context.getTransaction();
            // コネクションを取得する
            IfmConnection conn = transaction.getConnection();
            super.update(context, conn, DataMapperType.PRACTICE7_DBU_DELETE);
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
     * <p>フォームアクション[PRACTICE7_FRM_ADD(PRACTICE7_FRM_ADD)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7_frm_add(ModelContext<Practice7FormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[PRACTICE7_FRM_DETAILS(PRACTICE7_FRM_DETAILS)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7_frm_details(ModelContext<Practice7FormBean> context) throws Exception {
    }

    /**
     * <p>フォームアクション[PRACTICE7_FRM_EDIT(PRACTICE7_FRM_EDIT)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice7_frm_edit(ModelContext<Practice7FormBean> context) throws Exception {
    }

}
