
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.facade;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.facade.Tyu01001DataMapper.DataMapperType;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_customerEntity;
import com.fujitsu.intarfrm.entities.M_storeEntity;
import com.fujitsu.intarfrm.helpers.commons.messages.MessageFormItem;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessage;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessageCollection;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlInsertBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOperatorType;
import com.fujitsu.intarfrm.helpers.models.entity.SqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlUpdateBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.StatementInsert;
import com.fujitsu.intarfrm.helpers.models.entity.StatementSelect;
import com.fujitsu.intarfrm.helpers.models.entity.StatementUpdate;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.BusinessException;
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;


/**
 * <p>フォーム[Customer Master Maintenance]の業務処理クラス。</p>
 *
 * このフォームに定義した各アクションの行処理を実行します。<br>
 *
 * @author INTARFRM
 */
public final class Tyu01001Facade extends Tyu01001FacadeBase {

    /**
     * <p>ロード処理を実行する。</p>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void do_Load(ModelContext<Tyu01001FormBean> context) throws Exception {
    	// ZSG Code (20211209) {Begin}
//        DbTransaction transaction = null;
//        try {
//            // トランザクションを開始する
//            transaction = context.getTransaction();
//            // コネクションを取得する
//            IfmConnection conn = transaction.getConnection();
//            super.loadInternal(context, conn);
//            // トランザクションを確定する
//            transaction.commit();
//        } catch (DatabaseException ex) {
//            // トランザクションをリセットする。
//            transaction.rollback();
//            throw ex;
//        } finally {
//            // トランザクションを閉じる。
//            transaction.end();
//        }
    	Tyu01001FormBean form = context.getFormBean();
    	
		//Check if usermap has mode
		if(!context.getUserMap().containsKey(Tyu010weConstants.ContextMapKey.MODE)) {
			return;
		}
		//check if edit or add mode		
		if (Tyu010weConstants.ADD_MODE.equalsIgnoreCase(context.getUserMap()
				.get(Tyu010weConstants.ContextMapKey.MODE).toString())) {
			return;
		}

		// edit mode
		DbTransaction tran = null;
		RawSqlSelectBuilder builder = null;

		ResultSet result = null;
		String cusID = context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMERID).toString();
		// verify the customer id if exist
		tran = context.getTransaction();
		IfmConnection conn = tran.getConnection();

		builder = new RawSqlSelectBuilder();

		M_customerEntity customerEntity = new M_customerEntity();
		M_storeEntity storeEntity = new M_storeEntity();

		builder.appendColumn(customerEntity.CUSID.getPhysicalName());
		builder.appendColumn(customerEntity.CUSNAME.getPhysicalName());
		builder.appendColumn(customerEntity.AREA.getPhysicalName());
		builder.appendColumn(customerEntity.BIRTHYMD.getPhysicalName());
		;
		builder.appendColumn(customerEntity.DELIVEREMAIL.getPhysicalName());

		builder.appendColumn(customerEntity.EMAIL.getPhysicalName());
		builder.appendColumn(customerEntity.JOB.getPhysicalName());
		builder.appendColumn(customerEntity.POINT.getPhysicalName());
		builder.appendColumn(customerEntity.POINTRATE.getPhysicalName());
		builder.appendColumn(customerEntity.SEX.getPhysicalName());
		builder.appendColumn(customerEntity.getPhysicalName() + "." + customerEntity.CUSID.getPhysicalName());
		builder.appendColumn(storeEntity.getPhysicalName() + "." + storeEntity.STORENAME.getPhysicalName());
		builder.appendColumn(customerEntity.TELNO.getPhysicalName());

		// Add clause
		builder.from().append(customerEntity.getPhysicalName() + "," + storeEntity.getPhysicalName());

		// add condition
		builder.appendWhere("M_CUSTOMER.CUSID = '" + cusID + "'");

		builder.appendWhere("M_CUSTOMER.STOREID = M_STORE.STOREID");

		try (PreparedStatement stmt = builder.createSelectCommand(conn)) {

			result = stmt.executeQuery();

			while (result.next()) {
				form.CARD.setCUSID(result.getString(customerEntity.CUSID.getPhysicalName()));
				form.CARD.setCUSNAME(result.getString(customerEntity.CUSNAME.getPhysicalName()));
				form.CARD.setAREA(result.getString(customerEntity.AREA.getPhysicalName()));
				form.CARD.setBIRTHYMD(result.getTimestamp(customerEntity.BIRTHYMD.getPhysicalName()));
				form.CARD.setEMAIL(result.getString(customerEntity.EMAIL.getPhysicalName()));
				form.CARD.setJOB(result.getString(customerEntity.JOB.getPhysicalName()));
				form.CARD.setPOINT(result.getBigDecimal(customerEntity.POINT.getPhysicalName()));
				form.CARD.setPOINTRATE(result.getBigDecimal(customerEntity.POINTRATE.getPhysicalName()));
				form.CARD.setSEX(result.getBigDecimal(customerEntity.SEX.getPhysicalName()));
				form.CARD.setSTOREID(result.getString(customerEntity.CUSID.getPhysicalName()));
				form.CARD.setSTORENAME(result.getString(storeEntity.STORENAME.getPhysicalName()));
				form.CARD.setTELNO(result.getString(customerEntity.TELNO.getPhysicalName()));
				form.CARD.setDELIVEREMAIL(result.getBigDecimal(customerEntity.DELIVEREMAIL.getPhysicalName()));
			}
			System.out.println("done");
		} catch (

		DatabaseException ex) {
			// トランザクションをリセットする。
			tran.rollback();
			throw ex;
		} finally {
			// トランザクションを閉じる。
			super.closeResultSet(result);
			tran.end();
		}
    	// ZSG Code (20211209) {End}
    }


    /**
     * <p>フォームアクション[TYU01001_DB Update(TYU01001_DBU)]の処理を実行する。</p>
     *
     * アクション: DB更新(DBU)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01001_dbu(ModelContext<Tyu01001FormBean> context) throws Exception {
    	// ZSG Code (20211209) {Begin}
//        DbTransaction transaction = null;
//        try {
//            // トランザクションを開始する
//            transaction = context.getTransaction();
//            // コネクションを取得する
//            IfmConnection conn = transaction.getConnection();
//            super.update(context, conn, DataMapperType.TYU01001_DBU);
//            // トランザクションを確定する
//            transaction.commit();
//        } catch (DatabaseException ex) {
//        	// トランザクションをリセットする。
//            transaction.rollback();
//            throw ex;
//        } finally {
//            // トランザクションを閉じる。
//            transaction.end();
//        }
    	Tyu01001FormBean form = context.getFormBean();

		// check if edit or add
		if (Tyu010weConstants.EDIT_MODE.equalsIgnoreCase(form.CARD.getSYOMODENAME())) {
//			updateCustomerDB(context);
//			Tyu01001FormBean form = context.getFormBean();
			DbTransaction tran = null;
			StatementUpdate stmtM_customer = null;
			SqlUpdateBuilder builder = null;
	
			try {
				tran = context.getTransaction();
				// get connection
				IfmConnection conn = tran.getConnection();
				// init entity
				M_customerEntity customerEntity = new M_customerEntity();
	
				builder = new SqlUpdateBuilder(customerEntity);
	
				builder.addColumn(customerEntity.CUSNAME, form.CARD.getCUSNAME());
				builder.addColumn(customerEntity.AREA, form.CARD.getAREA());
				builder.addColumn(customerEntity.TELNO, form.CARD.getTELNO());
				builder.addColumn(customerEntity.EMAIL, form.CARD.getEMAIL());
				builder.addColumn(customerEntity.DELIVEREMAIL, form.CARD.getDELIVEREMAIL());
				builder.addColumn(customerEntity.SEX, form.CARD.getSEX());
				builder.addColumn(customerEntity.BIRTHYMD, form.CARD.getBIRTHYMD());
				builder.addColumn(customerEntity.JOB, form.CARD.getJOB());
				builder.addColumn(customerEntity.POINT, form.CARD.getPOINT());
				builder.addColumn(customerEntity.POINTRATE, form.CARD.getPOINTRATE());
	
				builder.addWhereBindParam(customerEntity.CUSID, SqlOperatorType.EQUAL, form.CARD.getCUSID());

				stmtM_customer = builder.toStatement(conn);
				// update db
				stmtM_customer.update();
	
				// commit
				tran.commit();
			} catch (Exception e) {
				System.out.println(e.toString());
				tran.rollback();
			} finally {
				super.closeStatement(stmtM_customer);
	
				tran.end();
	
			}
			return;
		}
		DbTransaction tran = null;
		StatementInsert statement_customer = null;
		SqlInsertBuilder builder = null;

		StatementSelect stmtM_customer_select = null;
		SqlSelectBuilder selectBuilder = null;
		ResultSet result = null;

		String customerId = form.CARD.getCUSID();
		try {
			// verify the customer id if exist
			tran = context.getTransaction();
			IfmConnection conn = tran.getConnection();

			M_customerEntity customerEntity = new M_customerEntity();

			selectBuilder = new SqlSelectBuilder(customerEntity);

			selectBuilder.addColumn(customerEntity.CUSID);

			if (!StringHelper.isNullOrEmpty(customerId)) {
				selectBuilder.addWhereBindParam(customerEntity.CUSID, SqlOperatorType.EQUAL, customerId);
			}
			stmtM_customer_select = selectBuilder.toStatement(conn);

			result = stmtM_customer_select.executeSelect();
			if (result.next()) {
				// throw exception
				ServerMessage serverMessage = new ServerMessage(MessageInfos.ITEM.U001);

				ServerMessageCollection serveMessageCollection = new ServerMessageCollection();

				serveMessageCollection.add(serverMessage);

				MessageFormItem messageFormItem = new MessageFormItem(form.INFO.G1.CARD.CUSID.getId());
				serverMessage.getMessageFormItems().add(messageFormItem);

				throw new BusinessException(serveMessageCollection);
			}
			
			// add new data in db.
			customerEntity = new M_customerEntity();

			builder = new SqlInsertBuilder(customerEntity);
			builder.addColumn(customerEntity.CUSID, form.CARD.getCUSID());
			builder.addColumn(customerEntity.CUSNAME, form.CARD.getCUSNAME());
			builder.addColumn(customerEntity.AREA, form.CARD.getAREA());
			builder.addColumn(customerEntity.TELNO, form.CARD.getTELNO());
			builder.addColumn(customerEntity.EMAIL, form.CARD.getEMAIL());
			builder.addColumn(customerEntity.DELIVEREMAIL, form.CARD.getDELIVEREMAIL());
			builder.addColumn(customerEntity.SEX, form.CARD.getSEX());
			builder.addColumn(customerEntity.BIRTHYMD, form.CARD.getBIRTHYMD());
			builder.addColumn(customerEntity.JOB, form.CARD.getJOB());
			builder.addColumn(customerEntity.STOREID, Tyu010weConstants.STOREID_VALUE);
			builder.addColumn(customerEntity.POINT, form.CARD.getPOINT());
			builder.addColumn(customerEntity.POINTRATE, form.CARD.getPOINTRATE());

			statement_customer = builder.toStatement(conn);
			System.out.println(statement_customer.toString());
			int intResult = statement_customer.insert();
			if (intResult != 1) {
				throw new DatabaseException(MessageInfos.ITEM.S002.toString());
			}

			tran.commit();

		} catch (DatabaseException ex) {
			System.out.println("SQL Error:" + ex.toString());
			// トランザクションをリセットする。
			tran.rollback();
			throw ex;
		} finally {
			// トランザクションを閉じる。
			super.closeStatement(statement_customer);
			tran.end();
		}
     // ZSG Code (20211209) {End}
    }

    /**
     * <p>フォームアクション[TYU01001_Back(TYU01001_FRM_BACK)]の処理を実行する。</p>
     *
     * アクション: 他フォーム(FRM)<br>
     *
     * @param context コンテキストオブジェクト
     * @throws Exception 例外
     */
    public void doTyu01001_frm_back(ModelContext<Tyu01001FormBean> context) throws Exception {
    }

}
