
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001;

import java.sql.Timestamp;
import java.time.LocalDateTime;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeType;
import com.fujitsu.intarfrm.programs.tyu010we.Tyu010weConstants;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001ControllerBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>
 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ蜃ｦ逅�繧呈僑蠑ｵ縺吶ｋ繧ｯ繝ｩ繧ｹ縺ｧ縺吶��
 * </p>
 *
 * 繝輔か繝ｼ繝�ID�ｼ喙TYU01001]縲√ヵ繧ｩ繝ｼ繝�蜷搾ｼ喙Customer Master Maintenance]<br>
 *
 * @author INTARFRM
 */
public class Tyu01001Controller extends Tyu01001ControllerBase {

	/**
	 * 繧ｳ繝ｳ繧ｹ繝医Λ繧ｯ繧ｿ
	 *
	 */
	public Tyu01001Controller() {
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
			Tyu01001FormBean bean = (Tyu01001FormBean) this.createFormDataInstance(context, Tyu01001FormBean.class);
			context.setFormBean(bean);

			bean.CARD.setLOGONDATE(Timestamp.valueOf(LocalDateTime.now()));

			String mode = context.getUserMap().get(Tyu010weConstants.ContextMapKey.ADD).toString();

			if (Tyu010weConstants.ADD.equals(mode)) {
				bean.CARD.setSYOMODENAME(Tyu010weConstants.ADD);
			} else {
				bean.INFO.setCurrentMode(FormModeType.MODE2);
				context.getUserMap().put(Tyu010weConstants.ContextMapKey.EDIT, Tyu010weConstants.EDIT);
				bean.CARD.setSYOMODENAME(Tyu010weConstants.EDIT);
			}

			this.invokeFacade(context);
			context.getUserMap().put(Tyu010weConstants.ContextMapKey.ADD, mode);

		}
		return this.result(context);
	}

	// 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ縺ｮ蜃ｦ逅�繧呈僑蠑ｵ縺吶ｋ

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01001_DBU] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: DB譖ｴ譁ｰ(DBU)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01001_dbu(FormActionContext context) {

		this.invokeFacade(context);
		return this.result(context);
	}

	/**
	 * 繝輔か繝ｼ繝�繧｢繧ｯ繧ｷ繝ｧ繝ｳ [TYU01001_FRM_BACK] 繧貞ｮ溯｡後☆繧� 繧｢繧ｯ繧ｷ繝ｧ繝ｳ: 莉悶ヵ繧ｩ繝ｼ繝�(FRM)
	 * 
	 * @param context
	 * @return
	 */
	@Override
	public ActionResult tyu01001_frm_back(FormActionContext context) {
		this.invokeFacade(context);
		return this.result(context);
	}

}
