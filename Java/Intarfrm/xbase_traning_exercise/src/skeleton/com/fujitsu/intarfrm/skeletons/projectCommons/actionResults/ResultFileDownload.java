package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.filedownload.FileDownloadConstants;
import com.fujitsu.intarfrm.helpers.commons.filedownload.FileDownloadConstants.SessionKey;
import com.fujitsu.intarfrm.helpers.commons.filedownload.FileDownloadInfo;
import com.fujitsu.intarfrm.helpers.commons.filedownload.FileDownloadUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.AjaxController;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.messages.MessageFormItem;
import com.fujitsu.intarfrm.helpers.commons.messages.ReturnCodeType;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessageBase;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;

/**
 * ファイルダウンロード処理のResultです。
 *
 * @author INTARFRM
 */
public class ResultFileDownload extends ActionResult {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;


	/**
	 * コンストラクタ
	 * @param info
	 */
	public ResultFileDownload() {
		super();
		// 必要に応じて実装してください。
	}

	@Override
	protected void executeResult(FormActionContextBase context) throws IOException, ServletException {

		context.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
		context.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);

		FileDownloadInfo info = context.getDownloadInfo();

		HttpSession session = context.getRequest().getSession();

        // ダウンロード情報のマップを取得
        @SuppressWarnings("unchecked")
        HashMap<String, FileDownloadInfo> downloadInfoMap = (HashMap<String, FileDownloadInfo>) session
                .getAttribute(SessionKey.DOWNLOAD_INFO_MAP);
        if (downloadInfoMap == null) {
            // マップがない場合生成
        	downloadInfoMap = new HashMap<String, FileDownloadInfo>();
        }

        // HashMapにない20文字のランダム文字列のダウンロードキーを作成
        String strDownLoadKey = null;
        do {
            strDownLoadKey = FileDownloadUtil.generateRandom(20);
        } while (downloadInfoMap.containsKey(strDownLoadKey));

        // マップにダウンロード情報を設定
        downloadInfoMap.put(strDownLoadKey, info);

        // ファイル名マップをセッションに設定
        session.setAttribute(
                FileDownloadConstants.SessionKey.DOWNLOAD_INFO_MAP,
                downloadInfoMap);

		HashMap<String, Object> map = new HashMap<String, Object>();
		HashMap<String, Object> child = new HashMap<String, Object>();
		FormDataSet bean = context.getFormBean();
		String fdwUrlBase = context.getRequest().getRequestURI().substring(0, context.getRequest().getRequestURI().lastIndexOf(".")) + ".download?__key=";
		child.put(AjaxDataNames.URL, fdwUrlBase + strDownLoadKey);
		child.put(AjaxDataNames.CONTENTTYPE_NAME, info.getContentType());
		child.put(AjaxDataNames.DISPOSITION, info.getContentDisposition().toString());
		child.put(AjaxDataNames.FILENAME, info.getFactory().getFileName());
		child.put(AjaxDataNames.FILESIZE, info.getFactory().getFileSize());
		child.put(AjaxDataNames.FORM_INFO, serializeDownloadMessage(bean));
		child.put(AjaxDataNames.FM_ID, bean.INFO.getFormId());
		map.put(AjaxDataNames.FRM_DATA, child);
		JsonConverter converter = new JsonConverter();
		String jsonStr = converter.getJsonData(map);

		// HTTPレスポンスへ出力する
		AjaxController cntroller = new AjaxController(context);
		cntroller.flushToResponse(jsonStr);
	}

	private Object serializeDownloadMessage(FormDataSet bean) {
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put(AjaxDataNames.SERVER_MESSAGES, serializeServerMessages(bean, bean.INFO.getLanguage()));
		return map;
	}

	private ArrayList<Object> serializeServerMessages(final FormDataSet formData, LanguageInfo lang) {
		if (formData.getServerMessages().getUpdateMessage()) {
			ArrayList<Object> msgList = new ArrayList<Object>();
			for (ServerMessageBase msg : formData.getServerMessages()) {
				ArrayList<Object> list = new ArrayList<Object>();
				list.add(msg.getMessageType());
				if (msg.getMessageId() != null) {
					list.add(msg.getMessageId().toUpperCase());
				} else {
					list.add(null);
				}
				list.add(msg.getMessageText(lang, ReturnCodeType.NONE));
				list.add(getTargetItems(msg));

				msgList.add(list);
			}
			return msgList;
		} else {
			return null;
		}
	}

	private ArrayList<Object> getTargetItems(final ServerMessageBase msg) {
		ArrayList<Object> targetList = new ArrayList<Object>();
		if (msg.getMessageFormItems().size() == 0) {
			return targetList;
		}
		for (MessageFormItem item : msg.getMessageFormItems()) {
			ArrayList<Object> list = new ArrayList<Object>();
			list.add(item.getFormItemId().toLowerCase());
			list.add(item.getRowIndex());
			list.add(item.getAbsRowIndex());
			targetList.add(list);
		}
		return targetList;
	}

}
