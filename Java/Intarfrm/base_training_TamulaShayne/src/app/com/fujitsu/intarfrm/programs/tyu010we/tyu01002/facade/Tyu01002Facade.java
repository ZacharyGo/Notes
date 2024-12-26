
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.facade;

import java.math.BigDecimal;
import java.sql.ResultSet;

import com.fujitsu.intarfrm.entities.M_customerEntity;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.SqlDeleteBuilder;
import com.fujitsu.intarfrm.helpers.models.entity.SqlOperatorType;
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
 * <p>
 * 繝輔か繝ｼ繝�[Customer Master List]縺ｮ讌ｭ蜍吝�ｦ逅�繧ｯ繝ｩ繧ｹ縲�
 * </p>
 *
 * 縺薙�ｮ繝輔か繝ｼ繝�縺ｫ螳夂ｾｩ縺励◆蜷�繧｢繧ｯ繧ｷ繝ｧ繝ｳ縺ｮ陦悟�ｦ逅�繧貞ｮ溯｡後＠縺ｾ縺吶��<br>
 *
 * @author INTARFRM
 */
public final class Tyu01002Facade extends Tyu01002FacadeBase {

	/**
	 * <p>
	 * 繝ｭ繝ｼ繝牙�ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void do_Load(ModelContext<Tyu01002FormBean> context) throws Exception {
		DbTransaction transaction = null;
		try {
			transaction = context.getTransaction();
			IfmConnection conn = transaction.getConnection();
			super.loadInternal(context, conn);
			transaction.commit();
		} catch (DatabaseException ex) {
			transaction.rollback();
			throw ex;
		} finally {
			transaction.end();
		}
	}

	/**
	 * <p>
	 * 譏守ｴｰM1縺ｮ繝壹�ｼ繧ｸ驕ｷ遘ｻ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void do_M1_Paging(ModelContext<Tyu01002FormBean> context) throws Exception {

		// 繧ｽ繝ｼ繝医☆繧句ｯｾ雎｡縺ｮ譏守ｴｰ諠�蝣ｱ繧貞叙蠕励☆繧�
		AbstractListData<?, ?> listData = context.getFormBean().getListData(FormBorderType.M1);

		// 驕ｷ遘ｻ蜈医�壹�ｼ繧ｸ逡ｪ蜿ｷ繧貞叙蠕励☆繧�
		Integer tempPageNo = context.getClicked().getPageNo();
		int pageNo = tempPageNo == null ? 0 : tempPageNo;

		if (context.getFormBean().M1.getInfo().getListMode() == FormListMode.MODE_1) {
			// 譏守ｴｰ繝｢繝ｼ繝会ｼ代�ｮ蝣ｴ蜷医�∝�肴､懃ｴ｢繧定｡後≧縲�
			DbTransaction transaction = null;
			try {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧帝幕蟋九☆繧�
				transaction = context.getTransaction();
				// 繧ｳ繝阪け繧ｷ繝ｧ繝ｳ繧貞叙蠕励☆繧�
				// IfmConnection conn = transaction.getConnection();
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧堤｢ｺ螳壹☆繧�
				transaction.commit();
			} catch (Exception ex) {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧偵Μ繧ｻ繝�繝医☆繧九��
				transaction.rollback();
				throw ex;
			} finally {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧帝哩縺倥ｋ縲�
				transaction.end();
			}
		} else {
			// 繝壹�ｼ繧ｸ驕ｷ遘ｻ繧貞ｮ溯｡後☆繧�
			context.getFormBean().M1.getPage().pageAbsolute(pageNo);
		}

		// 繝輔か繝ｼ繧ｫ繧ｹ縺ｮ菴咲ｽｮ繧定ｨｭ螳壹☆繧�
		super.setFocusListTop(context, listData);
	}

	/**
	 * <p>
	 * 譏守ｴｰM1縺ｮ繧ｽ繝ｼ繝亥�ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void do_M1_Sorting(ModelContext<Tyu01002FormBean> context) throws Exception {

		// 繧ｽ繝ｼ繝医☆繧句ｯｾ雎｡縺ｮ譏守ｴｰ諠�蝣ｱ繧貞叙蠕励☆繧�
		AbstractListData<?, ?> listData = context.getFormBean().getListData(FormBorderType.M1);

		// 繧ｽ繝ｼ繝育憾諷九ｒ險ｭ螳壹☆繧�
		super.setSortState(listData, context);

		if (context.getFormBean().M1.getInfo().getListMode() == FormListMode.MODE_1) {
			// 譏守ｴｰ繝｢繝ｼ繝会ｼ代�ｮ蝣ｴ蜷医�∝�肴､懃ｴ｢繧定｡後≧縲�
			DbTransaction transaction = null;
			try {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧帝幕蟋九☆繧�
				transaction = context.getTransaction();
				// 繧ｳ繝阪け繧ｷ繝ｧ繝ｳ繧貞叙蠕励☆繧�
				// IfmConnection conn = transaction.getConnection();
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧堤｢ｺ螳壹☆繧�
				transaction.commit();
			} catch (Exception ex) {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧偵Μ繧ｻ繝�繝医☆繧九��
				transaction.rollback();
				throw ex;
			} finally {
				// 繝医Λ繝ｳ繧ｶ繧ｯ繧ｷ繝ｧ繝ｳ繧帝哩縺倥ｋ縲�
				transaction.end();
			}
		}

		// 繝輔か繝ｼ繧ｫ繧ｹ縺ｮ菴咲ｽｮ繧定ｨｭ螳壹☆繧�
		super.setFocusListTop(context, listData);
	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01002_Other Form_Add(TYU01002_FRM_ADD)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01002_frm_add(ModelContext<Tyu01002FormBean> context) throws Exception {
	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01002_Other_Form_Delete(TYU01002_FRM_DEL)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01002_frm_del(ModelContext<Tyu01002FormBean> context) throws Exception {
		DbTransaction transaction = null;
		StatementDelete statementDelete = null;
		SqlDeleteBuilder deleteBuilder = null;
		
		try {
			M_customerEntity mCustomerEntity = new M_customerEntity();
			transaction = context.getTransaction();
			IfmConnection conn = transaction.getConnection();
			deleteBuilder = new SqlDeleteBuilder(mCustomerEntity);
			String customerID = context.getUserMap().get(Tyu010weConstants.ContextMapKey.CUSTOMERID).toString();
			deleteBuilder.addWhereBindParam(mCustomerEntity.CUSID,SqlOperatorType.EQUAL, customerID);
			
			statementDelete = deleteBuilder.toStatement(conn);
			statementDelete.delete();
			transaction.commit();
			this.doTyu01002_gnxt_def(context);
			
		} catch (Exception ex) {
			transaction.rollback();
			throw ex;
		} finally {
			super.closeStatement(statementDelete);
	        transaction.end();

		}
	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01002_Other_Form_Edit(TYU01002_FRM_UPD)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01002_frm_upd(ModelContext<Tyu01002FormBean> context) throws Exception {
	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01002_Prev_Group_Cancel(TYU01002_GBFR_CANCEL)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 蜑阪げ繝ｫ繝ｼ繝�(GBFR)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01002_gbfr_cancel(ModelContext<Tyu01002FormBean> context) throws Exception {
		this.executeGBFR(context);

	}

	/**
	 * <p>
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ[TYU01002_Next_Group_Confirm(TYU01002_GNXT_DEF)]縺ｮ蜃ｦ逅�繧貞ｮ溯｡後☆繧九��
	 * </p>
	 *
	 * 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 谺｡繧ｰ繝ｫ繝ｼ繝�(GNXT)<br>
	 *
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝医が繝悶ず繧ｧ繧ｯ繝�
	 * @throws Exception 萓句､�
	 */
	public void doTyu01002_gnxt_def(ModelContext<Tyu01002FormBean> context) throws Exception {
		DbTransaction transaction = null;
		StatementSelect statementSelect = null;
		ResultSet resultSet = null;
		Tyu01002FormBean formBean = context.getFormBean();

		try {
			transaction = context.getTransaction();
			IfmConnection conn = transaction.getConnection();
			formBean.M1.clear();
			M_customerEntity mCustomerEntity = new M_customerEntity();
			SqlSelectBuilder customerBuilder = new SqlSelectBuilder(mCustomerEntity);
			customerBuilder.addColumn(mCustomerEntity.STOREID);
			customerBuilder.addColumn(mCustomerEntity.CUSID);
			customerBuilder.addColumn(mCustomerEntity.CUSNAME);
			customerBuilder.addColumn(mCustomerEntity.EMAIL);
			customerBuilder.addColumn(mCustomerEntity.TELNO);

			if (!StringHelper.isNullOrEmpty(formBean.CARD.getSTOREID())) {
				customerBuilder.addWhereBindParam(mCustomerEntity.STOREID, SqlOperatorType.EQUAL, formBean.CARD.getSTOREID());	
			}

			statementSelect = customerBuilder.toStatement(conn);
			resultSet = statementSelect.executeSelect();
			
			int i = 001;
			while (resultSet.next()) {
				Tyu01002M1RowData row = formBean.M1.newRow();
				row.put(formBean.INFO.G2.M1.ITEM.MEINO, BigDecimal.valueOf(i++));
				row.put(formBean.INFO.G2.M1.ITEM.CUSID, resultSet.getString(mCustomerEntity.CUSID.getPhysicalName()));
				row.put(formBean.INFO.G2.M1.ITEM.CUSNAME, resultSet.getString(mCustomerEntity.CUSNAME.getPhysicalName()));
				row.put(formBean.INFO.G2.M1.ITEM.EMAIL, resultSet.getString(mCustomerEntity.EMAIL.getPhysicalName()));
				row.put(formBean.INFO.G2.M1.ITEM.TELNO, resultSet.getString(mCustomerEntity.TELNO.getPhysicalName()));
			}

		} catch (Exception ex) {
			throw ex;
		} finally {
			super.closeStatement(statementSelect);
			super.closeResultSet(resultSet);
			transaction.end();
		}

		this.executeGNXT(context);
		this.do_Load(context);
	}

}
