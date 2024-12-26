package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.CommandException;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * 仮想セッションをチェックするクラスです。
 *
 *　@author INTARFRM
 */
public class SessionCheckFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		
		if (context.getVirtualSession() == null) {
			throw new CommandException("VirtualSession can not restore.");
		}
	}
}