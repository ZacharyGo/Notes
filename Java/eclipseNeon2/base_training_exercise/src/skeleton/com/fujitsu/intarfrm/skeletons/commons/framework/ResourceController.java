package com.fujitsu.intarfrm.skeletons.commons.framework;

import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;
import com.fujitsu.intarfrm.helpers.commons.resources.FormResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.MessageResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.ProjectCommonResourceManager;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultResource;

/**
 * リソースコントローラの実装クラス
 *
 * @author INTARFRM
 */
public class ResourceController extends IfmControllerAction<FormActionContext> {

	/**
	 * コンストラクタ
	 */
	public ResourceController() {
		super(null, null);
	}

	/**
	 * リソースコントローラを実行する
	 */
	@Override
	protected ActionResult perform(FormActionContext context) throws Exception {

		// リソース情報を返すResultを作成する
		ResultResource result = new ResultResource();
		// リクエストからURLを取得する
	    String url = context.getRequest().getRequestURI();

	    // URLのパラメータを取得する
	    // 言語情報を取得する
	    String langName = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlLangKey);
	    LanguageInfo lang = LanguageManager.getInstance().get(langName);
	    // 対象リソースキーを取得する
	    String[] idList = context.getRequest().getParameterValues(FrameworkUtil.ServiceConstants.UrlIdKey);
	    // リソース情報を管理するマップを作成する
	    HashMap<String, Object> map = new HashMap<>();
	    for (String id : idList) {
	    	if (url.endsWith(FrameworkUtil.ServiceConstants.MsgResourcefix)) {
	    		// メッセージリソースを取得する場合
	    		String msgStr =  MessageResourceManager.getInstance().getMessage(id, lang);
	    		map.put(id, msgStr);
	    	} else if (url.endsWith(FrameworkUtil.ServiceConstants.PjCommonResourcefix)) {
	    		// プロジェクト共通リソースを取得する場合
	    		String pjCommonStr = ProjectCommonResourceManager.getInstance().getCaption(id, lang);
	    		map.put(id, pjCommonStr);
	    	} else if (url.endsWith(FrameworkUtil.ServiceConstants.FormResourcefix)) {
	    		// フォームカスタムリソースを取得する場合
	    		String formId = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlFormIdKey);
	    		FormResourceManager frm = FormResourceManager.createInstance();
	    		frm.initialize(formId, lang);
	    		map.put(id, frm.getFormResourceSet().getCustomCaption(id));
	    	}
	    }
	    // リソース情報をResultに設定する
	    if (url.endsWith(FrameworkUtil.ServiceConstants.MsgResourcefix)) {
	    	result.ajaxData.put(AjaxDataNames.MESSAGE_RESOURCE, map);
	    } else if (url.endsWith(FrameworkUtil.ServiceConstants.PjCommonResourcefix)) {
	    	result.ajaxData.put(AjaxDataNames.PJCOMMONS_RESOURCE, map);
	    } else if (url.endsWith(FrameworkUtil.ServiceConstants.FormResourcefix)) {
	    	// リソース情報を管理するマップを作成する
    		String formId = context.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlFormIdKey);
    		HashMap<String, Object> mainMap = new HashMap<>();
    		mainMap.put(formId, map);
    		result.ajaxData.put(AjaxDataNames.FORMS_RESOURCE, mainMap);
	    }
		return result;
	}
}