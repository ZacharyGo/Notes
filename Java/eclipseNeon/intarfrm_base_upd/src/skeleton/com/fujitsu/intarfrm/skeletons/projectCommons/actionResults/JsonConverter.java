package com.fujitsu.intarfrm.skeletons.projectCommons.actionResults;

import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.IJsonConverter;
import com.fujitsu.intarfrm.skeletons.commons.json.JSONObject;

/**
 * データオブジェクトからJSON式に変換するクラスです。
 *
 * @author INTARFRM
 */
public class JsonConverter implements IJsonConverter {

	/**
	 * HashMapデータをJSON式に変換する。
	 * @param map　変換する元のハッシュマップ
	 * @return Json式の文字列
	 */
	@Override
	public String getJsonData(HashMap<String, Object> map) {
		JSONObject jo = new JSONObject(map);
		return jo.toString();
	}
}