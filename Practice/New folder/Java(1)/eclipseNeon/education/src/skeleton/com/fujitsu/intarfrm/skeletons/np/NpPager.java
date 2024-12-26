package com.fujitsu.intarfrm.skeletons.np;

import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormGroupInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.skeletons.views.html.TagElement;

public class NpPager {

	/**
	 * ページャ制御用属性情報
	 */
	private HashMap<String, String> attributes;

	/**
	 * 数値の正規表現
	 */
	private static String REGEX_INT = "^[0-9]+$";

	/**
	 * コンストラクタ
	 * @param attributes ページャ制御用属性情報
	 */
	public NpPager(HashMap<String, String> attributes) {
		this.attributes = attributes;
	}

	/**
	 * NextPlusUI対応ページャのHTMLタグを出力します。
	 * @param context
	 * @return
	 */
	public TagElement createNpPagerTag(FormActionContextBase context) {
		
		// インクルードする元の明細番号を取得する
		String listId = attributes.get(NpAttributesConstent.LIST_ID);

		// 明細のページ数を取得する
		String pageCount = "0";
		if (attributes.get(NpAttributesConstent.PAGE_COUNT).matches(REGEX_INT)) {
			pageCount = attributes.get(NpAttributesConstent.PAGE_COUNT);
		}

		// 現在表示するページのページ番号を取得する
		String pageNo = "0";
		if (attributes.get(NpAttributesConstent.PAGE_NO).matches(REGEX_INT)) {
			pageNo = attributes.get(NpAttributesConstent.PAGE_NO);
		}
		
		//ページャのdivタグを作成
		HashMap<String, String> divTagAttribute = new HashMap<String, String>();		
		divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_LISTID, listId);
		divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_TOTAL, pageCount);
		divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_CURRENTNO, pageNo);
		divTagAttribute.put(NpAttributesConstent.CLASS, NpAttributesConstent.PAGER);
		
		// 1ページ当りの表示件数を取得する
		int rowCount = 0;
		if (context.getClicked() != null && context.getClicked().getButtonInfo() != null 
				&& context.getClicked().getButtonInfo().getCode() != null) {
			// コード参照画面の場合		
			//コードIDを取得する
			String codeId = context.getClicked().getButtonInfo().getCode().getCodeId().toLowerCase();
			divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_CODEID, codeId);
			
			// 1ページ当りの表示件数を取得する
			// 明細の表示件数を設定する
			rowCount = context.getClicked().getButtonInfo().getCode().getCodeCommand().getCodeInfo().getDisplayRow();
			
			// data-action-get-args属性の値を作成する。
			StringBuilder getArgsValue = new StringBuilder();
			getArgsValue
				.append(NpAttributesConstent.QUERY_AMPERSAND)
				.append(NpAttributesConstent.QUERY_NAME_ITEM).append(context.getClicked().getButtonId());
			if (context.getClicked().getRowNo() != -1) {
				getArgsValue
					.append(NpAttributesConstent.QUERY_AMPERSAND)
					.append(NpAttributesConstent.QUERY_NAME_ROW).append(context.getClicked().getRowNo());
			}
			divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_GETARGS, getArgsValue.toString());
			divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_TYPE, NpAttributesConstent.CODE);
		} else {
			// フォームの場合
			// 1ページ当りの表示件数を取得する
			FormListInfo listInfo = context.getFormBean().INFO.getListInfo(FormBorderType.ValueOf(listId));
			rowCount = listInfo.getDisplayRowCount();
			
			// グループ情報を取得する
			FormGroupInfo group = context.getFormBean().INFO.getListInfo(FormBorderType.ValueOf(listId)).getOwnerGroup();
			
			divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_TYPE, NpAttributesConstent.FORM);
			divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_ENABLED, String.valueOf(group.isCurrent()).toLowerCase());
		}
		
		divTagAttribute.put(NpAttributesConstent.DATA_NP_PAGER_ROWCOUNT, String.valueOf(rowCount));
		
		TagElement divTagElement = new TagElement(NpAttributesConstent.DIV, divTagAttribute);
		return divTagElement;
	}
}