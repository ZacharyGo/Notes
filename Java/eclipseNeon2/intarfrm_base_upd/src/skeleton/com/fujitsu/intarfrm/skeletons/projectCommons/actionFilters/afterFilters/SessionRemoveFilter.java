package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.afterFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil.CommandType;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * 仮想セッションを削除するクラスです。
 *
 * @author INTARFRM
 */
public class SessionRemoveFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		
		if (context.getVirtualSession().getDeleteFlg() || context.commandType == CommandType.RESOURCE || context.commandType == CommandType.DOWNLOAD) {
			// 該当する仮想セッションを削除する
			context.getVirtualSessionCollection().remove(context.getVirtualSession().getAccessKey());
		} else if (context.commandType == CommandType.RENDER || (context.getFormAction() != null && context.getFormAction().getFormActionId().equals("_Load"))) {
			// レンダー処理の場合
			// フォームIDを仮想セッションに登録する
			context.getVirtualSession().getFrameworkData().put(FrameworkUtil.FrameworkDataKey.LastRenderedForm, context.getFormId());			
		}
	}
}