package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map.Entry;

import javax.servlet.ServletException;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.AjaxController;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.items.ActionTargetType;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * Ajax処理によるデータ送信の場合のResultです。
 *
 * @author INTARFRM
 */
public class ResultAjaxData extends ActionResult {

	/**
	 * バージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 送信対象HTMLのJSPファイルパス
	 */
	public String jspUrl;

	/**
	 * HTML上の対象エレメントID
	 */
	public String targetHtmlElementId;

	/**
	 * 送信データを独自追加するためのカスタムデータマップ
	 */
	public HashMap<String, Object> customDataMap;

	/**
	 * コンストラクタ
	 * @param context コンテキスト
	 */
	public ResultAjaxData(FormActionContext context) {
		this.isTransfer = false;

		// フォームアクション情報を取得する
		FormActionInfo actInfo = context.getFormAction();
		if (actInfo.getActionTarget() == ActionTargetType.EntireForm || actInfo.getTargetBorder() == null) {
			// 画面全体の場合
			this.jspUrl = String.format(FrameworkUtil.UrlHelper.FORMJSP_URL_FORMAT,
					context.getFormBean().INFO.getProgramId(),
					context.getFormBean().INFO.getFormId(),
                    StringHelper.isNullOrEmpty(context.getViewType()) ? "" : "." + context.getViewType());
			this.targetHtmlElementId = "form--content";
		} else {
			// 明細部の場合
			this.jspUrl = String.format(FrameworkUtil.UrlHelper.FORMJSP_LIST_URL_FORMAT,
					context.getFormBean().INFO.getProgramId(),
					context.getFormBean().INFO.getFormId(),
					actInfo.getTargetBorder().name().toLowerCase(),
                    StringHelper.isNullOrEmpty(context.getViewType()) ? "" : "." + context.getViewType());
			this.targetHtmlElementId = context.getFormBean().INFO.getFormId().toLowerCase() + "----" + actInfo.getTargetBorder().name().toLowerCase();
		}

		// 送信する情報をリストに追加する
		// カルチャー情報
		this.ajaxData.put(AjaxDataNames.CULTURE, AjaxDataHelper.getCultureInfo(context));
		// 画面情報
		this.ajaxData.put(AjaxDataNames.FORM_INFO, AjaxDataHelper.getFormInfo(context));
		// リソース情報
		this.ajaxData.put(AjaxDataNames.RESOURCES, AjaxDataHelper.getDefaultResources(context));
		// コード情報
		this.ajaxData.put(AjaxDataNames.CODES, AjaxDataHelper.getCodeInfo(context.getFormBean()));
		// 設定情報
		this.ajaxData.put(AjaxDataNames.CONFIGURATIONS, AjaxDataHelper.getConfInfo(context));
		// フォーカス情報
		if (context.getFormBean().getFocusItem() != null) {
			this.ajaxData.put(AjaxDataNames.FOCUS_TARGET, AjaxDataHelper.getFocusTarget(context));
		}
		// フォームアクション情報
		this.ajaxData.put(AjaxDataNames.FORMACTIONS, AjaxDataHelper.getFormActions(context.getFormBean().INFO.getFormActions()));
		// カスタムデータマップの初期化
		this.customDataMap = new HashMap<>();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void executeResult(FormActionContextBase context) throws IOException, ServletException {

		// ContentTypeとCharacterEncodingをセットする
		context.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
		context.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);

		// HTMLを生成するには必要な情報をRequestに設定する
		context.getRequest().setAttribute(FrameworkUtil.JspKey.FormBean, context.getFormBean());
		context.getRequest().setAttribute(FrameworkUtil.JspKey.Context, context);
		context.getRequest().setAttribute("jspUrl", this.jspUrl);

		// HTMLを生成する
		AjaxController cntroller = new AjaxController(context);
		String htmlStr = cntroller.createDesign(jspUrl);

		// 送信対象のデータマップを作成する
		HashMap<String, Object> frmMap = new HashMap<>();

		if (!StringHelper.isNullOrEmpty(this.targetHtmlElementId)) {
			frmMap.put(AjaxDataNames.TARGET_HTMLELEMENT_ID, this.targetHtmlElementId);
		}
		frmMap.put(AjaxDataNames.HTML, htmlStr);
		for (Entry<String, Object> e : this.ajaxData.entrySet()) {
			frmMap.put(e.getKey(), e.getValue());
		}

		//　JSON式に変換する
		JsonConverter converter = new JsonConverter();
		HashMap<String, Object> mainMap = AjaxDataHelper.getDataMap(frmMap);
		if (this.customDataMap.size() > 0) {
			mainMap.put("userData", this.customDataMap);
		}
		if (context.getFormBean().CLIENT_USER_DATA.size() > 0) {
			mainMap.put("formUserData", context.getFormBean().CLIENT_USER_DATA);
		}
		String jsonStr = converter.getJsonData(mainMap);

		// HTTPレスポンスへ出力する
		cntroller.flushToResponse(jsonStr);
	}
}