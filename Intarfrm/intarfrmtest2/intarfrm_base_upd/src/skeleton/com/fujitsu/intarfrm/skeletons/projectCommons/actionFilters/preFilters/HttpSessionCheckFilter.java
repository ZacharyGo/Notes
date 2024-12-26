package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.SessionInvalidatedException;

/**
 * HTTPセッションをチェックするクラスです。
 *
 *　@author INTARFRM
 */
public class HttpSessionCheckFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		
		// リクエストのセッションをチェックする
		if (context.getRequest().getSession(false) == null) {
			if (context.getRequest().getRequestURI().endsWith(FrameworkUtil.ServiceConstants.InitPostfix)) {
				// initの場合
				String identity = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlUniqueKey);
				if (identity == null || identity.equals("")) {
					// URL入力によるinit処理の時にSession新規作成する
					context.getRequest().getSession();
				} else {
					// identityを持ってセッションが開始されていない時に例外を返す
					throw new SessionInvalidatedException("Session is invalidated.");
				}
			} else {
				// init以外の場合
				// セッションが開始されてない場合は例外をスロー
				throw new SessionInvalidatedException("Session is invalidated.");
			}
		}
	}
}