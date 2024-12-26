package com.fujitsu.intarfrm.skeletons.views.html;

import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlGeneratorSelectorBase;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlTagObject;
import com.fujitsu.intarfrm.helpers.views.taglibs.JspUtil;

/**
 * HTMLタグ出力を管理するクラス。
 *
 * @author INTARFRM
 */
public class HtmlGeneratorSelector extends HtmlGeneratorSelectorBase {

	/**
	 * {@inheritDoc}
	 */
	public String getHtml(FormActionContextBase context, HtmlTagObject tag,
			HashMap<String, String> attribute) {
		FullBrowserTagGenerator fullGenerator = new FullBrowserTagGenerator(tag, attribute, context);
		String ret = fullGenerator.getHtml();

		return ret;
	}

	/**
	 * {@inheritDoc}
	 */
	public String getHtml(FormItemInfo itemInfo, FormActionContextBase context, HtmlTagObject tag,
			HashMap<String, String> attribute) {
		String ret = "";
		if (itemInfo != null || tag.getJspTagName().equals(JspTagNameConstant.CONDITION_CAPTION)) {
			FullBrowserTagGenerator fullGenerator = new FullBrowserTagGenerator(tag, attribute, context);
			ret = fullGenerator.getHtml(itemInfo);
		}
		return ret;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getExceptionHtml(StringBuilder htmlBuilder, Throwable ex, String url) {
		if (!StringHelper.isNullOrEmpty(url)) {
			htmlBuilder.append("URL:\r\n");
			htmlBuilder.append(url);
			htmlBuilder.append("\r\n\r\n");
		}

		if (ex != null) {
			htmlBuilder.append("Exception:\r\n");
			htmlBuilder.append(ex.toString());
			while (true) {
				if (ex.getCause() == null) {
					break;
				} else {
					ex = ex.getCause();
					htmlBuilder.append(" --> ").append(ex.toString());
				}
			}

			htmlBuilder.append("\r\n\r\n");
			htmlBuilder.append("StackTrace:\r\n");
			for (StackTraceElement elm : ex.getStackTrace()) {
				htmlBuilder.append(String.format("Class=[%1$s]\r\nMethod=[%2$s] Line=[%3$s]\r\n", elm.getClassName(), elm.getMethodName(), elm.getLineNumber()));
			}
		}
		return JspUtil.escapeHtml(htmlBuilder.toString(),true);
	}
}
