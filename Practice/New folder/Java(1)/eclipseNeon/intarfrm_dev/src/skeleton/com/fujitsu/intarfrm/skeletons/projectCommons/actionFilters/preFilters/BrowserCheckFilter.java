package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * ブラウザをチェックするクラスです。
 *
 *　@author INTARFRM
 */
public class BrowserCheckFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		
		// ブラウザのアクセス制限を実装する。
		
//		//許可するブラウザを正規表現文字列
//		String browserOKVersion = ".*MSIE [16789].*";
//		Pattern pattern = Pattern.compile(browserOKVersion);
//		Matcher matcher = pattern.matcher(context.getRequest().getHeader("user-agent"));
//		if (!matcher.matches()) {
//			throw new BrowserCheckException("Accessed by a unsupported browser.");
//		}
	}
}