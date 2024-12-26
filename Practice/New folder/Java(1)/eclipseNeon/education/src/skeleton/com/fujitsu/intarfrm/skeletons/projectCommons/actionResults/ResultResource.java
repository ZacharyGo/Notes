package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.AjaxController;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;

/**
 * リソースコントローラ処理によるデータ送信の場合のResultです。
 * 
 * @author INTARFRM
 */
public class ResultResource extends ActionResult {
	
	/**
	 * バージョンID
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * コンストラクタ
	 */
	public ResultResource() {
		this.isTransfer = false;
	}
	
	/**
	 * {@inheritDoc}
	 */
	@Override
	public void executeResult(FormActionContextBase context) throws IOException, ServletException {
		
		// ContentTypeとCharacterEncodingをセットする
		context.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
		context.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);
		
		//　送信対象のデータマップを作成する
		HashMap<String, Object> resourceMap = new HashMap<>();
		
		// リクエストからURLを取得する
	    String url = context.getRequest().getRequestURI();
	    
		if (url.endsWith(FrameworkUtil.ServiceConstants.MsgResourcefix)) {
			resourceMap.put(AjaxDataNames.MESSAGE_RESOURCE, this.ajaxData.get(AjaxDataNames.MESSAGE_RESOURCE));
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.PjCommonResourcefix)) {
			resourceMap.put(AjaxDataNames.PJCOMMONS_RESOURCE, this.ajaxData.get(AjaxDataNames.PJCOMMONS_RESOURCE));
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.FormResourcefix)) {
			resourceMap.put(AjaxDataNames.FORMS_RESOURCE, this.ajaxData.get(AjaxDataNames.FORMS_RESOURCE));
		}
		HashMap<String, Object> mainMap = new HashMap<>();
		mainMap.put(AjaxDataNames.RESOURCES, resourceMap);
		
		//　JSON式に変換する
		JsonConverter converter = new JsonConverter();
		String jsonStr = converter.getJsonData(AjaxDataHelper.getDataMap(mainMap));

		// HTTPレスポンスへ出力する
		AjaxController cntroller = new AjaxController(context);
		cntroller.flushToResponse(jsonStr);
	}
}