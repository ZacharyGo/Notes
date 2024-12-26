package com.fujitsu.intarfrm.skeletons.views.html;

import java.util.ArrayList;
import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlTagObject;

/**
 * モバイル用ページャ部品を制御するクラスです。
 *
 * @author INTARFRM
 */
public class MobilePager {

	/**
	 * ページャ制御用属性情報
	 */
	private HashMap<String, String> attributes;

	/**
	 * タグのValueObject
	 */
	private HtmlTagObject tag;

	/**
	 * 数値の正規表現
	 */
	private static String REGEX_INT = "^[0-9]+$";

	/**
	 * コンストラクタ
	 * @param attributes ページャ制御用属性情報
	 */
	public MobilePager(HashMap<String, String> attributes, HtmlTagObject tag) {
		this.attributes = attributes;
		this.tag = tag;
	}

	/**
	 * ページャのHTMLタグを出力します。
	 * @param itemInfo
	 * @return
	 */
	public TagElement createPagerTag(String itemId) {

		// インクルードする元の明細番号を取得する
		String listId = attributes.get(TagAttributeNameConstant.LIST_ID);

		// 現在表示するページのページ番号を取得する
		int pageNo = 0;
		if (attributes.get(TagAttributeNameConstant.PAGE_NO).matches(REGEX_INT)) {
			pageNo = Integer.parseInt(attributes.get(TagAttributeNameConstant.PAGE_NO));
		}
		// 明細のページ数を取得する
		int pageCount = 0;
		if (attributes.get(TagAttributeNameConstant.PAGE_COUNT).matches(REGEX_INT)) {
			pageCount = Integer.parseInt(attributes.get(TagAttributeNameConstant.PAGE_COUNT));
		}
		// アクションIDを取得する
		String actionId = TagAttributeValueConstant.Parts.UNDERSCORE + listId.toLowerCase() + TagAttributeValueConstant.Parts.PAGING_ID_POSTFIX;

		//横に並べるページャの数を設定する
		int pagerSize = 5;
		if (attributes.containsKey(TagAttributeNameConstant.PAGER_SIZE)
				&& attributes.get(TagAttributeNameConstant.PAGER_SIZE).matches(REGEX_INT)) {
			pagerSize = Integer.parseInt(attributes.get(TagAttributeNameConstant.PAGER_SIZE));
			if (pagerSize < 3) {
				// ページャの数を3以下に設定した場合、3として処理する
				pagerSize = 3;
			}
		}

		if (pageCount < pagerSize) {
			pagerSize = pageCount;
		}

		//ページャのdivタグを作成
		HashMap<String, String> divTagAttribute = new HashMap<String, String>();
		divTagAttribute.put(TagAttributeNameConstant.CLASS, TagAttributeValueConstant.IFM_PAGENATION);
		divTagAttribute.put(TagAttributeNameConstant.DATA_TYPE, TagAttributeValueConstant.HORIZONTAL);
		divTagAttribute.put(TagAttributeNameConstant.DATA_ROLE, TagAttributeValueConstant.CONTROL_GROUP);
		TagElement divTagElement = new TagElement(TagNameConstant.DIV, divTagAttribute);

		ArrayList<TagElement> divList = new ArrayList<TagElement>();

		//ページャ表示の開始と終了番号を取得する
		int startNo = 1;
		int lastNo = pagerSize;
		if (pagerSize < pageCount) {
			if (pageNo - startNo > pagerSize/2) {
				startNo = pageNo - pagerSize/2;
				if (startNo + pagerSize > pageCount + 1) {
					startNo = pageCount - pagerSize + 1;
				}
				lastNo = startNo + pagerSize - 1;
			}
		}

		//前のページへのページャを作成する
		divList.add(createIndexButtonTag(actionId, itemId, pageNo - 1, false, tag.isFirstPage(), "&lt;"));
		//各ページャを作成する
		for (int i = startNo; i <= lastNo; i++) {
			divList.add(createIndexButtonTag(actionId, itemId, i, i == pageNo, false, String.valueOf(i)));
		}
		//次のページのページャを作成する
		divList.add(createIndexButtonTag(actionId, itemId, pageNo + 1, false, tag.isLastPage(), "&gt;"));

		divTagElement.setBody(divList);

		return divTagElement;
	}

	private TagElement createIndexButtonTag(String actionId, String itemId, int pageNo, Boolean current, Boolean disabled, String innerText) {
		HashMap<String, String> buttonAttributes = new HashMap<String, String>();
		buttonAttributes.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_BUTTON);
		buttonAttributes.put(TagAttributeNameConstant.DATA_MINI, TagAttributeValueConstant.TRUE);
		if (current) {
			buttonAttributes.put(TagAttributeNameConstant.CLASS, TagAttributeValueConstant.UI_BTN_ACTIVE);
		}
		if (disabled) {
			buttonAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}
		if (!current && !disabled) {
			buttonAttributes.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
			buttonAttributes.put(TagAttributeNameConstant.DATA_ACTION_TARGET, itemId);
			buttonAttributes.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, TagAttributeValueConstant.Parts.QUERY_NAME_PAGENO + pageNo);
		}
		TagElement buttonElement = new TagElement(TagNameConstant.BUTTON, buttonAttributes);
		buttonElement.setBody(StringHelper.isNullOrEmpty(innerText) ? String.valueOf(pageNo) : innerText);

		return buttonElement;
	}
}