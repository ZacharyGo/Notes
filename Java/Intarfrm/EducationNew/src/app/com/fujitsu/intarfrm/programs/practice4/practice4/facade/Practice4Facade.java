
package com.fujitsu.intarfrm.programs.practice4.practice4.facade;

import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_productEntity;
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
import com.fujitsu.intarfrm.programs.practice4.practice4.beans.Practice4M1RowData;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[演習４]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Practice4Facade extends Practice4FacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Practice4FormBean> context) throws Exception {
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
    public void do_M1_Paging(ModelContext<Practice4FormBean> context) throws Exception {

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
    public void do_M1_Sorting(ModelContext<Practice4FormBean> context) throws Exception {

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
     * <p>フォームアクション[PRACTICE4_（その他の動作）(PRACTICE4_ETC)]の処理を実行する。</p>
     *
     * アクション: （その他の動作）(ETC)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doPractice4_etc(ModelContext<Practice4FormBean> context) throws Exception {

    	// ZG Code Added (20211208) {Begin}
    	Practice4FormBean form = context.getFormBean();
        DbTransaction tran = null;
        StatementSelect stmtM_customer = null;
        ResultSet rsM_customer = null;
        SqlSelectBuilder builder = null;
        try {
            // Start the transaction
            tran = context.getTransaction();

            // Gets connection
            IfmConnection conn = tran.getConnection();

            // Clears the current list data and page information.
            form.M1.clear();  

            // Creates the instance of the entity.
            M_productEntity entity = new M_productEntity();
            
            // Generate the SqlSelectBuilder Class
            builder = new SqlSelectBuilder(entity);

               
            // Set the column to be retrieved
            builder.addColumn(entity.PRODUCTID);
            builder.addColumn(entity.PRODUCTNAME);
            builder.addColumn(entity.PRICE);


            // Add the where clause of the search condition.
            // The customer ID (CUSID) is added to where clause when the search condition is specified.
            if (!StringHelper.isNullOrEmpty(form.CARD.getSEARCHPRICE().toString())) {
                builder.addWhereBindParam(entity.PRICE, SqlOperatorType.LESS_THAN_EQUAL, form.CARD.getSEARCHPRICE());
            }


             //Generate the Statement class to execute Select
            stmtM_customer = builder.toStatement(conn);

            //Select Execution in Statement class
            rsM_customer = stmtM_customer.executeSelect();

            while (rsM_customer.next()) {
            	Practice4M1RowData row = (Practice4M1RowData)form.M1.newRow();
                row.put(form.INFO.M1.ITEM.PRODUCTID,
                        rsM_customer.getString(entity.PRODUCTID.getPhysicalName()));
                row.put(form.INFO.M1.ITEM.PRODUCTNAME,
                               rsM_customer.getString(entity.PRODUCTNAME.getPhysicalName()));
                row.put(form.INFO.M1.ITEM.PRICE,
                                rsM_customer.getString(entity.PRICE.getPhysicalName()));
            }

        } catch (Exception ex) {

            throw ex;
        } finally {

            //Close ResultSet
            super.closeResultSet(rsM_customer);

            //Close Statement
            super.closeStatement(stmtM_customer);

            //End transaction
            tran.end();

        }

    	// ZG Code Added (20211208) {End}
    }

}
