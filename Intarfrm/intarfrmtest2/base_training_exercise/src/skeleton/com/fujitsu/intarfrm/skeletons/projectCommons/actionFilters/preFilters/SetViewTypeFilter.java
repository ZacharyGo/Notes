package com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters;

import com.fujitsu.intarfrm.helpers.commons.configurations.AppConfig;
import com.fujitsu.intarfrm.helpers.commons.exceptions.InvalidOperationException;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IFrameworkFilter;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.skeletons.commons.framework.ViewTypeAnnotation;

/**
 * 現在のリクエストで使用するビューの種別を決定するクラスです。
 *
 *　@author INTARFRM
 */
public class SetViewTypeFilter implements IFrameworkFilter {

	/**
	 * フィルター処理を実行する
	 */
	@Override
	public void doFilter(FormActionContextBase context) throws Exception {
		try {
			String pgId = context.getPgId();
			String viewType = null;
			if (!StringHelper.isNullOrEmpty(pgId)) {
				String pgPath = String.format(FrameworkUtil.UrlHelper.INIT_PATH_FORMAT,
						AppConfig.getPackageName(), pgId.toLowerCase(),
						Character.toUpperCase(pgId.charAt(0)) + pgId.substring(1).toLowerCase());
				Class<?> pgClass = Class.forName(pgPath);
				ViewTypeAnnotation vtAnn = (ViewTypeAnnotation) pgClass.getAnnotation(ViewTypeAnnotation.class);
				if (vtAnn != null) {
					viewType = vtAnn.value();
				}
			}
			context.setViewType(viewType);
		} catch (ClassNotFoundException ex) {
			throw new InvalidOperationException(ex);
		}

	}
}