package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletOutputStream;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.UrlParameterAppender;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;

/**
 * INTARFRM標準の画面遷移の場合のResultです。
 *
 * @author INTARFRM
 */
public class ResultFrameworkTransfer extends ActionResult {

	/**
	 * バージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 遷移先プログラムID
	 */
	public String pgId;
	
	/**
	 * 遷移先フォームID
	 */
	public String fmId;
	
	/**
	 * コンストラクタ
	 * @param programId　遷移先プログラムID
	 * @param formId　遷移先フォームID
	 * @param viewType　遷移先画面タイプ
	 */
	public ResultFrameworkTransfer(String programId, String formId, String viewType) {
		this.pgId = programId;
		this.fmId = formId;
		this.isTransfer = true;

		// レンダー処理のURLを取得する
		this.renderUrl = ActionResult.buildRender(programId, formId);
		// リダイレクトした後に、ServletにincludeするリソースのURIを取得する
		this.includeUri = ActionResult.buildJsp(programId, formId, viewType);
	}

	/**
	 * コンストラクタ
	 * @param programId　遷移先プログラムID
	 * @param formId　遷移先フォームID
	 */
	public ResultFrameworkTransfer(String programId, String formId) {
		this.pgId = programId;
		this.fmId = formId;
		this.isTransfer = true;

		// レンダー処理のURLを取得する
		this.renderUrl = ActionResult.buildRender(programId, formId);
		// リダイレクトした後に、ServletにincludeするリソースのURIを取得する
		this.includeUri = ActionResult.buildJsp(programId, formId, "");
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void executeResult(FormActionContextBase ctx) throws IOException {

		// リダイレクト先のurlを取得する
		UrlParameterAppender appender = new UrlParameterAppender();
		appender.add(FrameworkUtil.ServiceConstants.UrlUniqueKey, ctx.getVirtualSession().getAccessKey());
		String renderPath = this.getResultCommandPath(ctx.getRequest()) + appender.toString();

		// 遷移先情報でコンテキストを更新する
		ctx.setPgId(this.pgId);
		ctx.setFormId(this.fmId);
		
		if (ctx.isRequestAsync()) {
			// 非同期処理の場合
			// 遷移先ページのURLを取得する
			HashMap<String, Object> map = new HashMap<String, Object>();
			map.put(AjaxDataNames.URL, renderPath);
			// JSON式に変更する
			JsonConverter converter = new JsonConverter();
			renderPath = converter.getJsonData(AjaxDataHelper.getDataMap(map));

			// JSON式に変更したurlをレスポンスに書き込む
			ctx.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
			ctx.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);
			ServletOutputStream out = ctx.getResponse().getOutputStream();
			out.println(renderPath);

		} else {
			// 同期処理の場合
			// リダイレクト先のUrlをレスポンスにセットする
			ctx.getResponse().sendRedirect(renderPath);
		}
	}
}