
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.facade;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_customerEntity;
import com.fujitsu.intarfrm.entities.M_storeEntity;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessage;
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
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.ModelContext;

/**
 * <p>
 * 繝輔か繝ｼ繝�[Customer Master Maintenance]縺ｮ讌ｭ蜍吝�ｦ逅�繧ｯ繝ｩ繧ｹ縲�
 * </p>
 *
 * 縺薙�ｮ繝輔か繝ｼ繝�縺ｫ螳夂ｾｩ縺励◆蜷�繧｢繧ｯ繧ｷ繝ｧ繝ｳ縺ｮ陦悟�ｦ逅�繧貞ｮ溯｡後＠縺ｾ縺吶��<br>
 *
 * @author INTARFRM
 */
public final class Tyu01001Facade extends Tyu01001FacadeBase {

	/**
	 * <p>
	 * 繝ｭ繝ｼ繝牙�ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void do_Load(ModelContext<Tyu01001FormBean> context) throws Exception {
		Tyu01001FormBean formBean = context.getFormBean();
		DbTransaction transaction = null;
		ResultSet resultSet = null;

		String mode = context.getUserMap().get(Tyu010weConstants.ContextMapKey.ADD).toString();
		if (Tyu010weConstants.ADD.equals(mode)) {
			return;
		}

		transaction = context.getTransaction();
		IfmConnection conn = transaction.getConnection();
		RawSqlSelectBuilder selectBuilder = new RawSqlSelectBuilder();

		M_customerEntity mCustomerEntity = new M_customerEntity();
		M_storeEntity mStoreEntity = new M_storeEntity();

		selectBuilder.appendColumn(mCustomerEntity.CUSID.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.CUSNAME.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.AREA.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.BIRTHYMD.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.DELIVEREMAIL.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.EMAIL.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.JOB.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.POINT.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.POINTRATE.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.SEX.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.TELNO.getPhysicalName());
		selectBuilder.appendColumn(mCustomerEntity.getPhysicalName() + "." + mCustomerEntity.STOREID.getPhysicalName());
		selectBuilder.appendColumn(mStoreEntity.getPhysicalName() + "." + mStoreEntity.STORENAME.getPhysicalName());

		selectBuilder.from().append(mCustomerEntity.getPhysicalName() + " , " + mStoreEntity.getPhysicalName());

		String customerID = context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMERID).toString();
		selectBuilder.appendWhere("M_CUSTOMER.CUSID = '" + customerID + "'");
		selectBuilder.appendWhere("M_CUSTOMER.STOREID = M_STORE.STOREID");

		try (PreparedStatement statement = selectBuilder.createSelectCommand(conn)) {

			resultSet = statement.executeQuery();
			while (resultSet.next()) {
				formBean.CARD.setCUSID(resultSet.getString(mCustomerEntity.CUSID.getPhysicalName()));
				formBean.CARD.setCUSNAME(resultSet.getString(mCustomerEntity.CUSNAME.getPhysicalName()));
				formBean.CARD.setAREA(resultSet.getString(mCustomerEntity.AREA.getPhysicalName()));
				formBean.CARD.setTELNO(resultSet.getString(mCustomerEntity.TELNO.getPhysicalName()));
				formBean.CARD.setEMAIL(resultSet.getString(mCustomerEntity.EMAIL.getPhysicalName()));
				formBean.CARD.setDELIVEREMAIL(resultSet.getBigDecimal(mCustomerEntity.DELIVEREMAIL.getPhysicalName()));
				formBean.CARD.setSex(resultSet.getBigDecimal(mCustomerEntity.SEX.getPhysicalName()));
				formBean.CARD.setBIRTHYMD(resultSet.getTimestamp(mCustomerEntity.BIRTHYMD.getPhysicalName()));
				formBean.CARD.setJOB(resultSet.getString(mCustomerEntity.JOB.getPhysicalName()));
				formBean.CARD.setSTOREID(resultSet.getString(mCustomerEntity.STOREID.getPhysicalName()));
				formBean.CARD.setSTORENAME(resultSet.getString(mStoreEntity.STORENAME.getPhysicalName()));
				formBean.CARD.setPOINT(resultSet.getBigDecimal(mCustomerEntity.POINT.getPhysicalName()));
				formBean.CARD.setPOINTRATE(resultSet.getBigDecimal(mCustomerEntity.POINTRATE.getPhysicalName()));
			}

		} catch (DatabaseException ex) {
			transaction.rollback();
			throw ex;
		} finally {
			super.closeResultSet(resultSet);
			transaction.end();
		}
	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01001_DB Update(TYU01001_DBU)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: DB譖ｴ譁ｰ(DBU)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01001_dbu(ModelContext<Tyu01001FormBean> context) throws Exception {
		DbTransaction transaction = null;
		StatementSelect statementSelect = null;
		ResultSet resultSet = null;
		StatementInsert statementInsert = null;
		Tyu01001FormBean form = context.getFormBean();

		if (Tyu010weConstants.EDIT.equalsIgnoreCase(form.CARD.getSYOMODENAME())) {
			updateRecord(context);
			return;
		}

		try {
			transaction = context.getTransaction();
			IfmConnection conn = transaction.getConnection();
			M_customerEntity mCustomerEntity = new M_customerEntity();

			SqlSelectBuilder selectBuilder = new SqlSelectBuilder(mCustomerEntity);
			selectBuilder.addColumn(mCustomerEntity.CUSID);
			selectBuilder.addWhereBindParam(mCustomerEntity.CUSID, SqlOperatorType.EQUAL, form.CARD.getCUSID());
			statementSelect = selectBuilder.toStatement(conn);
			resultSet = statementSelect.executeSelect(); // list

			while (resultSet.next()) {
				ServerMessage serverMessage = new ServerMessage(MessageInfos.ITEM.U001);
				form.getServerMessages().add(serverMessage);
			}

			mCustomerEntity = new M_customerEntity();
			SqlInsertBuilder insertBuilder = new SqlInsertBuilder(mCustomerEntity);
			insertBuilder.addColumn(mCustomerEntity.CUSID, form.CARD.getCUSID());
			insertBuilder.addColumn(mCustomerEntity.AREA, form.CARD.getAREA());
			insertBuilder.addColumn(mCustomerEntity.BIRTHYMD, form.CARD.getBIRTHYMD());
			insertBuilder.addColumn(mCustomerEntity.CUSNAME, form.CARD.getCUSNAME());
			insertBuilder.addColumn(mCustomerEntity.DELIVEREMAIL, form.CARD.getDELIVEREMAIL());
			insertBuilder.addColumn(mCustomerEntity.EMAIL, form.CARD.getEMAIL());
			insertBuilder.addColumn(mCustomerEntity.JOB, form.CARD.getJOB());
			insertBuilder.addColumn(mCustomerEntity.POINT, form.CARD.getPOINT());
			insertBuilder.addColumn(mCustomerEntity.POINTRATE, form.CARD.getPOINTRATE());
			insertBuilder.addColumn(mCustomerEntity.SEX, form.CARD.getSex());
			insertBuilder.addColumn(mCustomerEntity.STOREID, "A001");
			insertBuilder.addColumn(mCustomerEntity.TELNO, form.CARD.getTELNO());

			statementInsert = insertBuilder.toStatement(conn);
			statementInsert.insert();

			transaction.commit();

		} catch (DatabaseException ex) {
			transaction.rollback();
			throw ex;
		} finally {
			super.closeStatement(statementInsert);
			transaction.end();
			super.closeStatement(statementSelect);
			super.closeResultSet(resultSet);
		}

	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01001_Back(TYU01001_FRM_BACK)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01001_frm_back(ModelContext<Tyu01001FormBean> context) throws Exception {
	}

	/**
	 * 
	 * @param context
	 * @throws DatabaseException
	 */
	private void updateRecord(ModelContext<Tyu01001FormBean> context) throws Exception {
		Tyu01001FormBean form = context.getFormBean();
		DbTransaction transaction = null;
		StatementUpdate statementUpdate = null;

		try {
			transaction = context.getTransaction();
			IfmConnection conn = transaction.getConnection();
			M_customerEntity mCustomerEntity = new M_customerEntity();
			SqlUpdateBuilder updateBuilder = new SqlUpdateBuilder(mCustomerEntity);

			updateBuilder.addColumn(mCustomerEntity.AREA, form.CARD.getAREA());
			updateBuilder.addColumn(mCustomerEntity.BIRTHYMD, form.CARD.getBIRTHYMD());
			updateBuilder.addColumn(mCustomerEntity.CUSNAME, form.CARD.getCUSNAME());
			updateBuilder.addColumn(mCustomerEntity.DELIVEREMAIL, form.CARD.getDELIVEREMAIL());
			updateBuilder.addColumn(mCustomerEntity.EMAIL, form.CARD.getEMAIL());
			updateBuilder.addColumn(mCustomerEntity.JOB, form.CARD.getJOB());
			updateBuilder.addColumn(mCustomerEntity.POINT, form.CARD.getPOINT());
			updateBuilder.addColumn(mCustomerEntity.POINTRATE, form.CARD.getPOINTRATE());
			updateBuilder.addColumn(mCustomerEntity.SEX, form.CARD.getSex());
			updateBuilder.addColumn(mCustomerEntity.TELNO, form.CARD.getTELNO());

			updateBuilder.addWhereBindParam(mCustomerEntity.CUSID, SqlOperatorType.EQUAL, form.CARD.getCUSID());

			statementUpdate = updateBuilder.toStatement(conn);
			int result = statementUpdate.update();
			transaction.commit();

		} catch (Exception ex) {
			transaction.rollback();
			throw ex;

		} finally {
			super.closeStatement(statementUpdate);
			transaction.end();
		}

	}

}
