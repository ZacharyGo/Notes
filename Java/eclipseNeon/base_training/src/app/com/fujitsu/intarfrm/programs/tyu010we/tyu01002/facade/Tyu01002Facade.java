
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.entities.M_customerEntity;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.SqlDeleteBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOperatorType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOrderByType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.StatementDelete;
import com.fujitsu.intarfrm.helpers.models.entity.StatementSelect;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans.Tyu01002M1RowData;
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
//               IfmConnection conn = transaction.getConnection();
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
     * <p>フォームアクション[TYU01002_Other_Form_Delete(TYU01002_FRM_DEL)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01002_frm_del(ModelContext<Tyu01002FormBean> context) throws Exception {
    	
    	if(!context.getUserMap().containsKey(Tyu010weConstants.ContextMapKey.CUSTOMER_ID) && 
    			StringHelper.isNullOrEmpty(context.getUserMap()
    					.get(Tyu010weConstants.ContextMapKey.CUSTOMER_ID).toString())) {
    		return;
    	}
    	String cusID = context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMER_ID).toString();
    	
        DbTransaction tran = null;
        StatementDelete stmtM_customer = null;
        SqlDeleteBuilder builder = null;
        try {
        	tran = context.getTransaction();
        	
        	IfmConnection conn = tran.getConnection();
        	
        	M_customerEntity customerEntity = new M_customerEntity();
        	
        	builder = new SqlDeleteBuilder(customerEntity);
        	
        	builder.addWhereBindParam(customerEntity.CUSID,
                    SqlOperatorType.EQUAL, 5);

        	stmtM_customer = builder.toStatement(conn);
        	stmtM_customer.delete();
        	tran.commit();
        	this.doTyu01002_gnxt_def(context);
        } catch (Exception e) {
			tran.rollback();
		} finally {
			super.closeStatement(stmtM_customer);
			tran.end();
		}
       
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
     	DbTransaction tran = null;
        StatementSelect stmtM_customer = null;
        SqlSelectBuilder builder = null;
        ResultSet result = null;
    	Tyu01002FormBean form = context.getFormBean();
    	String storeID = form.CARD.getSTOREID();
    	
    
        try {
            tran = context.getTransaction();
            IfmConnection conn = tran.getConnection();
            form.M1.clear();
            M_customerEntity customerEntity = new M_customerEntity();
            
            builder = new SqlSelectBuilder(customerEntity);
            
            builder.addColumn(customerEntity.CUSID);
            builder.addColumn(customerEntity.CUSNAME);
            builder.addColumn(customerEntity.EMAIL);
            builder.addColumn(customerEntity.TELNO);
            
            if(!StringHelper.isNullOrEmpty(storeID)) {
            	builder.addWhereBindParam(customerEntity.STOREID, SqlOperatorType.EQUAL, storeID);
            }
            builder.addOrderBy(customerEntity.CUSID, SqlOrderByType.Ascending);
            
            stmtM_customer = builder.toStatement(conn);
            
            result = stmtM_customer.executeSelect();
            List<Tyu01002M1RowData> listRowData = new ArrayList<>();
            int listNo = 0;
            while (result.next()) {
            	Tyu01002M1RowData row = new Tyu01002M1RowData(form.M1);
            	listNo++;
            	row.setCUSID(result.getString(customerEntity.CUSID.getPhysicalName()));
            	row.setCUSNAME(result.getString(customerEntity.CUSNAME.getPhysicalName()));
            	row.setEMAIL(result.getString(customerEntity.EMAIL.getPhysicalName()));
            	row.setMEINO(listNo);
            	row.setTELNO(result.getString(customerEntity.TELNO.getPhysicalName()));
            	listRowData.add(row);
			}
            form.M1.addRows(listRowData);
           

        } catch (DatabaseException ex) {
        	// トランザクションをリセットする。
        	tran.rollback();
            throw ex;
        } finally {
            // トランザクションを閉じる。
        	super.closeStatement(stmtM_customer);
        	super.closeResultSet(result);
        	tran.end();
        }
    }

}
