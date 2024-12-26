package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;

import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.AjaxController;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper;
import com.fujitsu.intarfrm.helpers.commons.utils.AjaxDataHelper.AjaxDataNames;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;

/**
 * コード取得（COG）のResultです。
 *
 * @author INTARFRM
 */
public class ResultCodeGet extends ActionResult {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コードデータ
	 */
	private List<DbRecord> codeData;

	/**
	 * コードデータを取得する。
	 * @return コードデータ
	 */
	public List<DbRecord> getCodeData() {
		return this.codeData;
	}

	/**
	 * コードデータを設定する。
	 * @param value コードデータ
	 */
	public void setCodeData(List<DbRecord> value) {
		this.codeData = value;
	}

	/**
	 * コード項目コマンド
	 */
	private ICodeItemCommand command;

	/**
	 * コード項目コマンドを取得する。
	 * @return コード項目コマンド
	 */
	public ICodeItemCommand getCommand() {
		return this.command;
	}

	/**
	 * コード項目コマンドを設定する。
	 * @param value コード項目コマンド
	 */
	public void setCommand(ICodeItemCommand value) {
		this.command = value;
	}

	/**
	 * 言語情報
	 */
	private LanguageInfo language;

	/**
	 * 言語情報を取得する。
	 * @return 言語情報
	 */
	public LanguageInfo getLanguage() {
		return this.language;
	}

	/**
	 * 言語情報を設定する
	 * @param value 言語情報
	 */
	public void setLanguage(LanguageInfo value) {
		this.language = value;
	}

	/**
	 * コンストラクタ
	 * @param command コード項目コマンド
	 * @param lang 言語情報
	 */
	protected ResultCodeGet(ICodeItemCommand command, LanguageInfo lang) {
		this.command = command;
		this.codeData = new ArrayList<DbRecord>();
		this.language = lang;
	}

	/**
	 * コンストラクタ
	 * @param command コード項目コマンド
	 * @param record コード取得結果
	 * @param lang 言語情報
	 */
	public ResultCodeGet(ICodeItemCommand command, DbRecord record, LanguageInfo lang) {
		this(command, lang);
		if (record == null || record.count() == 0) {
			this.codeData = Arrays.asList(new DbRecord());
		} else {
			this.codeData = Arrays.asList(record);
		}
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected void executeResult(FormActionContextBase context) throws IOException,
			ServletException {

		// ContentTypeとCharacterEncodingをセットする
		context.getResponse().setContentType(AjaxDataNames.CONTENT_TYPE);
		context.getResponse().setCharacterEncoding(AjaxDataNames.CHARACTER_ENCODING);

		// 送信対象のデータマップを作成する
		HashMap<String, Object> map = new HashMap<String, Object>();
		{
			HashMap<String, Object> codeDic = new HashMap<String, Object>();
			{
				HashMap<String, Object> codeIdDic = new HashMap<String, Object>();
				{
					codeIdDic.put(AjaxDataNames.CODE_INFO, AjaxDataHelper.getCodeInfo(this.getCommand()));
					codeIdDic.put(AjaxDataNames.CODE_DATA, AjaxDataHelper.getCodeData(this.getCodeData(), this.command.getCodeInfo(), this.language));
				}
				codeDic.put(this.command.getOwnerFormItem().getId(), codeIdDic);
			}
			map.put(AjaxDataNames.CODES, codeDic);
			map.put(AjaxDataNames.RESOURCES, null);
		}

		// JSON式に変換する
		JsonConverter converter = new JsonConverter();
		String jsonStr = converter.getJsonData(AjaxDataHelper.getDataMap(map));

		// HTTPレスポンスへ出力する
		AjaxController cntroller = new AjaxController(context);
		cntroller.flushToResponse(jsonStr);
	}
}
