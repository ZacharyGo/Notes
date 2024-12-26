package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * レスポンスヘッダにCacheControlを追加するクラスです。
 *
 *　@author INTARFRM
 */
public class CacheControlFilter implements IFrameworkFilter {
	
	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		// レスポンスヘッダにCacheControlを追加する
		context.getResponse().setHeader("Cache-Control", "no-store, no-cache");
		context.getResponse().setHeader("Pragma", "no-cache");
		context.getResponse().setHeader("Expires", "-1");
	}
}