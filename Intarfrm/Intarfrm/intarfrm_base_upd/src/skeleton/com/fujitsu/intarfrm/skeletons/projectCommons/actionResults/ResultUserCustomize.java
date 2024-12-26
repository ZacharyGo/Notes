package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.io.IOException;
import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;

/**
 * 自由にデータを返すResultです。
 * 
 * @author INTARFRM
 */
public class ResultUserCustomize extends ActionResult {

	/**
	 * バージョンID
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * コンストラクタ
	 * @param map 送信する情報のリスト
	 */
	public ResultUserCustomize(HashMap<String, Object> map) {
		this.isTransfer = false;
		
		// 送信する情報のリストを設定する
		this.ajaxData = map;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	protected void executeResult(FormActionContextBase ctx) throws IOException {
	}
}