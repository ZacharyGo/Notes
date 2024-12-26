
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupType;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002ControllerBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.inherits.ProgramIds;

/**
 * <p>
 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ蜃ｦ逅�繧呈僑蠑ｵ縺吶ｋ繧ｯ繝ｩ繧ｹ縺ｧ縺吶��
 * </p>
 *
 * 繝輔か繝ｼ繝�ID�ｼ喙TYU01002]縲√ヵ繧ｩ繝ｼ繝�蜷搾ｼ喙Customer Master List]<br>
 *
 * @author INTARFRM
 */
public class Tyu01002Controller extends Tyu01002ControllerBase {

	/**
	 * 繧ｳ繝ｳ繧ｹ繝医Λ繧ｯ繧ｿ
	 *
	 */
	public Tyu01002Controller() {
		// 蜈ｱ騾壼�ｦ逅�繧堤ｶ呎価縺吶ｋ
		super();
	}

	/**
	 * 逕ｻ髱｢縺ｮ繝ｭ繝ｼ繝牙�ｦ逅�
	 * 
	 * @param context 繧ｳ繝ｳ繝�繧ｭ繧ｹ繝�
	 */
	@Override
	public ActionResult _Load(FormActionContext context) {
		if (context.createNewFormBean()) {
			
			Tyu01002FormBean bean = (Tyu01002FormBean) this.createFormDataInstance(context, Tyu01002FormBean.class);	
			context.setFormBean(bean);

			bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));
			
			this.invokeFacade(context);
		}
		return this.result(context);
	}

	// 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ縺ｮ蜃ｦ逅�繧呈僑蠑ｵ縺吶ｋ

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01002_FRM_ADD] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01002_frm_add(FormActionContext context) {
		Tyu01002FormBean bean = (Tyu01002FormBean) context.getFormBean();
		context.setFormBean(bean);
		
		context.getUserMap().put(Tyu010weConstants.ContextMapKey.ADD, Tyu010weConstants.ADD);

		this.invokeFacade(context);
		return this.result(context);
	}

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01002_FRM_DEL] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01002_frm_del(FormActionContext context) {	
		Tyu01002FormBean bean = (Tyu01002FormBean) context.getFormBean();
		String dataRowValue = context.getRequest().getParameter(Tyu010weConstants.DATA_ROW);
		if(!dataRowValue.isEmpty()) {
			context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMERID, bean.M1.displayRowAt(Integer.valueOf(dataRowValue)).getCUSID());			
		}
	
		this.invokeFacade(context);
		bean.INFO.setCurrentGroup(FormGroupType.G2);
        context.setNextForm(ProgramIds.tyu010we.tyu01002);
		return this.result(context);
	}

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01002_FRM_UPD] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01002_frm_upd(FormActionContext context) {
		Tyu01002FormBean bean = (Tyu01002FormBean) context.getFormBean();
		context.getUserMap().put(Tyu010weConstants.ContextMapKey.ADD, Tyu010weConstants.EDIT);
		String dataRowValue = context.getRequest().getParameter(Tyu010weConstants.DATA_ROW);
		
		if(!dataRowValue.isEmpty()) {
			context.getUserMap().put(Tyu010weConstants.ContextMapKey.CUSTOMERID, bean.M1.displayRowAt(Integer.valueOf(dataRowValue)).getCUSID());			
		}
		this.invokeFacade(context);
		return this.result(context);
	}

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01002_GBFR_CANCEL] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ:
	 * 蜑阪げ繝ｫ繝ｼ繝�(GBFR)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01002_gbfr_cancel(FormActionContext context) {
		this.invokeFacade(context);
		return this.result(context);
	}

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01002_GNXT_DEF] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 谺｡繧ｰ繝ｫ繝ｼ繝�(GNXT)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01002_gnxt_def(FormActionContext context) {
		this.invokeFacade(context);
		return this.result(context);
	}

}
