package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;

import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeListRow;
import com.fujitsu.intarfrm.helpers.commons.framework.AjaxController;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;

/**
 * コード参照アクションのResultクラス
 *
 * @author INTARFRM
 */
public class ResultCodeReference extends ResultCodeGet {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コード参照画面のフォームデータ
	 */
	private CodeFormDataSet codeFormData;

	/**
	 * コード参照画面のフォームデータを取得する。
	 * @return コード参照画面のフォームデータ
	 */
	public CodeFormDataSet getCodeFormData() {
		return this.codeFormData;
	}

	/**
	 * コード参照画面のフォームデータを設定する。
	 * @param value コード参照画面のフォームデータ
	 */
	public void setCodeFormData(CodeFormDataSet value) {
		this.codeFormData = value;
	}

	/**
	 * JSPのURL
	 */
	private String jspUrl;

	/**
	 * コンストラクタ
	 * @param command コード項目コマンド
	 * @param jspUrl JSPのURL
	 * @param codeFormDataSet コード参照画面のフォームデータ
	 */
	public ResultCodeReference(ICodeItemCommand command, String jspUrl, CodeFormDataSet codeFormDataSet) {
		super(command, codeFormDataSet.INFO.getLanguage());
		List<DbRecord> list = new ArrayList<DbRecord>();
		for (ListRowData row : codeFormDataSet.M1().displayRows()) {
			list.add(((CodeListRow)row).getRecord());
		}
		this.setCodeData(list);
		this.jspUrl = jspUrl;
		this.codeFormData = codeFormDataSet;
	}

	/**
	 * コード参照結果のデータを作成する。
	 */
	@Override
	protected void executeResult(FormActionContextBase context) throws IOException,
			ServletException {

		// ContentTypeとCharacterEncodingをセットする
		context.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
		context.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);

		// HTMLを生成するには必要な情報をRequestに設定する
		context.getRequest().setAttribute(FrameworkUtil.JspKey.FormBean, codeFormData);
		context.getRequest().setAttribute(FrameworkUtil.JspKey.Context, context);
		context.getRequest().setAttribute(AjaxDataNames.CLICKED_ITEM, context.getClicked().getButtonId());
		StringBuilder itemInfo = new StringBuilder();
		itemInfo.append(context.getClicked().getButtonId());
		if (context.getClicked().getRowNo() != -1) {
			itemInfo.append("&__row=").append(context.getClicked().getRowNo());
		}
		context.getRequest().setAttribute(AjaxDataNames.CLICKED_ITEM, itemInfo.toString());
		context.getRequest().setAttribute("jspUrl", this.jspUrl);
		String viewType = context.getViewType();
		String url = String.format("/views/codes/"+codeFormData.getCodeInfo().getCodeId()+"/"+codeFormData.getCodeInfo().getCodeId()+"%1$s.jsp",
					StringHelper.isNullOrEmpty(viewType) ? "" : "." + viewType);
		context.getRequest().setAttribute("_codeJspUrl", url);

		// HTMLを生成する
		AjaxController cntroller = new AjaxController(context);
		String htmlStr = cntroller.createDesign(this.jspUrl);

		// 表示データを設定する
		this.codeFormData.getListData(FormBorderType.M1).displayRowCount();

		// 送信対象のデータマップを作成する
		HashMap<String, Object> map = new HashMap<String, Object>();
		{
			map.put(AjaxDataNames.RESOURCES, new ArrayList<Object>());
			HashMap<String, Object> codeDic = new HashMap<String, Object>();
			{
				HashMap<String, Object> codeIdDic = new HashMap<String, Object>();
				{
					codeIdDic.put(AjaxDataNames.CODE_INFO, AjaxDataHelper.getCodeInfo(this.getCommand()));
					HashMap<String, Object> windowInfo = new HashMap<String, Object>();
					{
						// "sizes"のデータを作成します。
						HashMap<String, Object> sizes = new HashMap<String, Object>();
						{
							sizes.put(AjaxDataNames.HEIGHT, this.codeFormData.getCodeInfo().getWindowHeight());
							sizes.put(AjaxDataNames.WIDTH, this.codeFormData.getCodeInfo().getWindowWidth());
						}
						windowInfo.put(AjaxDataNames.SIZES, sizes);
						codeIdDic.put(AjaxDataNames.WINDOWINFO, windowInfo);

					}
					// "codeData"のデータを作成します。
					codeIdDic.put(AjaxDataNames.CODE_DATA, AjaxDataHelper.getCodeData(this.getCodeData(), this.codeFormData.getCodeInfo(), this.codeFormData.INFO.getLanguage()));
					// "caption"のデータを作成します。
					codeIdDic.put(AjaxDataNames.CAPTION, this.codeFormData.INFO.getCaption());
					// フォーム項目情報を作成します。
					codeIdDic.put(AjaxDataNames.FORM_ITEMS, AjaxDataHelper.getFormItems(this.codeFormData.INFO.getItems()));
				}
				codeDic.put(this.getCommand().getOwnerFormItem().getId(), codeIdDic);
			}
			map.put(AjaxDataNames.SERVER_MESSAGES, AjaxDataHelper.getServerMessages(this.codeFormData, context.getCurrentLanguage()));
			map.put(AjaxDataNames.CODES, codeDic);
			map.put(AjaxDataNames.HTML, htmlStr);
			map.put(AjaxDataNames.FORM_INFO, AjaxDataHelper.getFormInfo(context));
		}

		// JSON式に変換する
		JsonConverter converter = new JsonConverter();
		String jsonStr = converter.getJsonData(AjaxDataHelper.getDataMap(map));

		// HTTPレスポンスへ出力する
		cntroller.flushToResponse(jsonStr);
	}
}
