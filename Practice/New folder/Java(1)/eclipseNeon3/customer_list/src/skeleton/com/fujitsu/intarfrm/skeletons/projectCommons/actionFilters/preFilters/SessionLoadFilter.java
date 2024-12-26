package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.VirtualSession;
import com.fujitsu.intarfrm.helpers.commons.framework.VirtualSessionCollection;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil.CommandType;

/**
 * 仮想セッションを取得するクラスです。
 *
 *　@author INTARFRM
 */
public class SessionLoadFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		VirtualSession vs = null;
		if (context.commandType == CommandType.RENDER) {
			// render処理の場合は、Session上のキャッシュにある仮想セッションを復元
			context.restoreVirtualSession();
		} else {
			// render処理以外の場合は、仮想セッションをコレクションから取得する
			VirtualSessionCollection vsCollection = null;
			if (context.getRequest().getSession(false) != null) {
				// 仮想セッションコントローラを取得する
				vsCollection = context.getVirtualSessionCollection();
				// 仮想セッションの一意キーをリクエストパラメータから取得する
				String key = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlUniqueKey);
				if (vsCollection != null && key != null && !key.equals("")) {
					// コレクションから対象の仮想セッションを取得する
					vs = vsCollection.getByAccessKey(key);
				} else {
					String windowId = context
							.getRequest().getParameter("__qwid");
					vs = vsCollection.getOrCreateNewVirtualSession(windowId);
				}
			}
			if (vs == null) {
				vs = vsCollection.createNewVirtualSession();
			}
			// 仮想セッションをコンテキストの設定する
			context.setVirtualSession(vs);
		}
	}
}