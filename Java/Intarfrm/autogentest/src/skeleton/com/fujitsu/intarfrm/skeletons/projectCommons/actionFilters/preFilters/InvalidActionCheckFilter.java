package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.CommandException;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil.CommandType;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * 実行するアクションコントローラをチェックするクラスです。
 *　
 *　@author INTARFRM
 */
public class InvalidActionCheckFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		
		if (context.commandType == CommandType.ACTION) {
			// リクエストから仮想セッションの認証キーを取得する
			String verificationKey = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.VerificationKey);
			if (verificationKey == null || !verificationKey.equals(context.getVirtualSession().getVerificationKey())) {
				throw new CommandException("DirectAccess");
			}
			
			// 最後に描画した画面のIDを取得する
			String lastRenderedForm = 
					(String)context.getVirtualSession().getFrameworkData().get(FrameworkUtil.FrameworkDataKey.LastRenderedForm);
			if (!lastRenderedForm.equals(context.getFormId())) {
				throw new CommandException("DirectAccess");
			}
		}
	}
}