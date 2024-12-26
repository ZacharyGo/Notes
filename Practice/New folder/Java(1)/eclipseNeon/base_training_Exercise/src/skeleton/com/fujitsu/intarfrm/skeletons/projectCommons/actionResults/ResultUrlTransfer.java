package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.net.URI;
import java.util.HashMap;

import javax.servlet.ServletOutputStream;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;

/**
 * 指定されたURIに対して単純にリダイレクトを行うResultです。
 *
 * @author INTARFRM
 */
public class ResultUrlTransfer extends ActionResult {

	/**
	 * バージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 遷移先URI
	 */
	private final URI uri;

	/**
	 * コンストラクタ
	 * @param uri 遷移先URI
	 */
	public ResultUrlTransfer(URI uri) {
		this.isTransfer = false;

		// 遷移先URIを設定する
		this.uri = uri;
		// レンダー処理のURLを取得する
		this.renderUrl = uri.toString();
		// リダイレクトした後に、ServletにincludeするリソースのURIを取得する
		this.includeUri = uri.toString();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void executeResult(FormActionContextBase ctx) throws IOException {

		String navigate = null;
		if (this.uri.isAbsolute()) {
			navigate = this.uri.toString();
		} else {
			navigate = this.getResultCommandPath(ctx.getRequest());
		}

		if (ctx.isRequestAsync()) {
			// 非同期処理の場合
			// 遷移先ページのURLを取得する
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put(AjaxDataNames.URL, navigate);
			//　JSON式に変換する
			JsonConverter converter = new JsonConverter();
			String jsonStr = converter.getJsonData(AjaxDataHelper.getDataMap(map));
			// JSON式に変更したurlをレスポンスに書き込む
			ctx.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
			ctx.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);
			ServletOutputStream out = ctx.getResponse().getOutputStream();
			out.println(jsonStr);
		} else {
			// 遷移先のUrlをレスポンスにセットする
			ctx.getResponse().sendRedirect(navigate);
		}
	}
}
