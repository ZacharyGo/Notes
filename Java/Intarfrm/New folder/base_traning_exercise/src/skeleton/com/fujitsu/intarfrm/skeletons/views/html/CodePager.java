package com.fujitsu.intarfrm.skeletons.views.html;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlTagObject;

/**
 * PC、タブレット用コード参照画面のページャ部品を制御するクラスです。
 *
 * @author INTARFRM
 */
public class CodePager {

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
	public CodePager(HashMap<String, String> attributes, HtmlTagObject tag) {
		this.attributes = attributes;
		this.tag = tag;
	}

	/**
	 * ページャのHTMLタグを出力します。
	 * @param itemInfo
	 * @return
	 */
	public TagElement createPagerTag(FormActionContextBase context) {

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
		String actionId = TagAttributeValueConstant.CODE_REFERENCE;

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

		// 明細の表示件数を設定する
		int displayRowCount = context.getClicked().getButtonInfo().getCode().getCodeCommand().getCodeInfo().getDisplayRow();

		// 明細番号を設定する
		String listId = attributes.get(TagAttributeNameConstant.LIST_ID);
		listId = listId.toLowerCase();
		attributes.remove(TagAttributeNameConstant.LIST_ID);

		//親画面でクリックされた項目情報を取得する
		StringBuilder clickItemInfo = new StringBuilder();
		clickItemInfo.append(context.getClicked().getButtonId());
		if (context.getClicked().getRowNo() != -1) {
			clickItemInfo.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND)
			.append(TagAttributeValueConstant.Parts.QUERY_NAME_ROW).append(context.getClicked().getRowNo());
		}

		//コードIDを取得する
		String itemId = context.getClicked().getButtonInfo().getCode().getCodeId().toLowerCase();

		String codePrefix = TagAttributeValueConstant.Parts.CODE_NAME_PREFIX;
		String codeSuffix = TagAttributeValueConstant.Parts.RESULT_PART_POSTFIX;

		if (pageCount < pagerSize) {
			pagerSize = pageCount;
		}

		//ページャのdivタグを作成
		HashMap<String, String> divTagAttribute = new HashMap<String, String>();
		divTagAttribute.put(TagAttributeNameConstant.CLASS, TagAttributeValueConstant.IFM_PAGENATION);
		TagElement divTagElement = new TagElement(TagNameConstant.DIV, divTagAttribute);

		//ページャのulタグを作成
		TagElement ulTagElement = new TagElement(TagNameConstant.UL, null);
		ArrayList<TagElement> ulList = new ArrayList<TagElement>();

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
		StringBuilder prevSb = new StringBuilder();
		prevSb.append(TagAttributeValueConstant.IFM_PAGENATION_BTN);
		prevSb.append(" ").append(TagAttributeValueConstant.IFM_PAGENATION_PREV);
		if (tag.isFirstPage()) prevSb.append(" ").append(TagAttributeValueConstant.IFM_STATE_DISABLED);
		HashMap<String, String> prevLiTagAttribute = new HashMap<String, String>();
		prevLiTagAttribute.put(TagAttributeNameConstant.CLASS, prevSb.toString());
		TagElement prevLiTagElement = new TagElement(TagNameConstant.LI, prevLiTagAttribute);
		{
			HashMap<String, String> aAttribute = new HashMap<String, String>();
			aAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			if (!tag.isFirstPage()) {
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET, codePrefix + itemId + codeSuffix);
				// data-action-get-args属性の値を作成する。
				StringBuilder getArgsValue = new StringBuilder();
				getArgsValue
					.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(clickItemInfo.toString())
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_START).append((pageNo - 2) * displayRowCount)
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE).append(TagAttributeValueConstant.Parts.PAGING);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getArgsValue.toString());

			}
			TagElement aElement = new TagElement(TagNameConstant.A, aAttribute);

			TagElement spanElement = new TagElement(TagNameConstant.SPAN, null);

			spanElement.setBody("&lt");
			aElement.setBody(Arrays.asList(spanElement));
			prevLiTagElement.setBody(Arrays.asList(aElement));
		}
		ulList.add(prevLiTagElement);

		// ...を作成する
		{
			if (pagerSize < pageCount) {
				HashMap<String, String> liAttribute = new HashMap<String, String>();
				//ページャのスタイルを作成する
				StringBuilder pageCssClassSb = new StringBuilder(TagAttributeValueConstant.IFM_PAGENATION_BTN);
				liAttribute.put(TagAttributeNameConstant.CLASS, pageCssClassSb.toString());
				if (startNo == 1) {
					liAttribute.put(TagAttributeNameConstant.STYLE, TagAttributeValueConstant.VISIBILITY_HIDDEN);
				}
				TagElement liElement = new TagElement(TagNameConstant.LI, liAttribute);

				HashMap<String, String> aAttribute = new HashMap<String, String>();
				aAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET, codePrefix + itemId + codeSuffix);
				// data-action-get-args属性の値を作成する。
				StringBuilder getArgsValue = new StringBuilder();
				getArgsValue
					.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(clickItemInfo.toString())
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_START).append("0")
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE).append(TagAttributeValueConstant.Parts.PAGING);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getArgsValue.toString());

				TagElement aElement = new TagElement(TagNameConstant.A, aAttribute);
				TagElement spanElement = new TagElement(TagNameConstant.SPAN, null);

				spanElement.setBody(Integer.toString(1));
				aElement.setBody(Arrays.asList(spanElement));
				liElement.setBody(Arrays.asList(aElement));
				ulList.add(liElement);
			}

			HashMap<String, String> truncateAttribute = new HashMap<String, String>();
			truncateAttribute.put(TagAttributeNameConstant.CLASS, TagAttributeValueConstant.IFM_PAGENATION_TRUNCATE);
			if (startNo == 1) truncateAttribute.put(TagAttributeNameConstant.STYLE, TagAttributeValueConstant.VISIBILITY_HIDDEN);
			TagElement truncateElement = new TagElement(TagNameConstant.LI, truncateAttribute);

			truncateElement.setBody("<span>...</span>");
			ulList.add(truncateElement);
		}

		//各ページャを作成する
		for (int i = startNo; i <= lastNo; i++) {
			boolean current = pageNo == i;
			HashMap<String, String> liAttribute = new HashMap<String, String>();
			//ページャのスタイルを作成する
			StringBuilder pageCssClassSb = new StringBuilder(TagAttributeValueConstant.IFM_PAGENATION_BTN);
			if (current) {
				pageCssClassSb.append(" " + TagAttributeValueConstant.IFM_PAGENATION_PAGE_CURRENT);
			}
			liAttribute.put(TagAttributeNameConstant.CLASS, pageCssClassSb.toString());
			TagElement liElement = new TagElement(TagNameConstant.LI, liAttribute);

			HashMap<String, String> aAttribute = new HashMap<String, String>();
			aAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			if (!current) {
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET, codePrefix + itemId + codeSuffix);
				// data-action-get-args属性の値を作成する。
				StringBuilder getArgsValue = new StringBuilder();
				getArgsValue
					.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(clickItemInfo.toString())
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_START).append((i - 1) * displayRowCount)
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE).append(TagAttributeValueConstant.Parts.PAGING);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getArgsValue.toString());
			}
			TagElement aElement = new TagElement(TagNameConstant.A, aAttribute);

			TagElement spanElement = new TagElement(TagNameConstant.SPAN, null);

			spanElement.setBody(Integer.toString(i));
			aElement.setBody(Arrays.asList(spanElement));
			liElement.setBody(Arrays.asList(aElement));

			ulList.add(liElement);
		}

		// ...を作成する
		{
			HashMap<String, String> truncateAttribute = new HashMap<String, String>();
			truncateAttribute.put(TagAttributeNameConstant.CLASS, TagAttributeValueConstant.IFM_PAGENATION_TRUNCATE);
			if (lastNo == pageCount) truncateAttribute.put(TagAttributeNameConstant.STYLE, TagAttributeValueConstant.VISIBILITY_HIDDEN);
			TagElement truncateElement = new TagElement(TagNameConstant.LI, truncateAttribute);

			truncateElement.setBody("<span>...</span>");
			ulList.add(truncateElement);

			if (pagerSize < pageCount) {
				HashMap<String, String> liAttribute = new HashMap<String, String>();
				//ページャのスタイルを作成する
				StringBuilder pageCssClassSb = new StringBuilder(TagAttributeValueConstant.IFM_PAGENATION_BTN);
				liAttribute.put(TagAttributeNameConstant.CLASS, pageCssClassSb.toString());
				if (lastNo == pageCount) {
					liAttribute.put(TagAttributeNameConstant.STYLE, TagAttributeValueConstant.VISIBILITY_HIDDEN);
				}
				TagElement liElement = new TagElement(TagNameConstant.LI, liAttribute);

				HashMap<String, String> aAttribute = new HashMap<String, String>();
				aAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET, codePrefix + itemId + codeSuffix);
				// data-action-get-args属性の値を作成する。
				StringBuilder getArgsValue = new StringBuilder();
				getArgsValue
					.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(clickItemInfo.toString())
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_START).append((pageCount - 1) * displayRowCount)
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE).append(TagAttributeValueConstant.Parts.PAGING);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getArgsValue.toString());

				TagElement aElement = new TagElement(TagNameConstant.A, aAttribute);
				TagElement spanElement = new TagElement(TagNameConstant.SPAN, null);

				spanElement.setBody(Integer.toString(pageCount));
				aElement.setBody(Arrays.asList(spanElement));
				liElement.setBody(Arrays.asList(aElement));
				ulList.add(liElement);
			}
		}

		//次のページのページャを作成する
		StringBuilder nextSb = new StringBuilder();
		nextSb.append(TagAttributeValueConstant.IFM_PAGENATION_BTN);
		nextSb.append(" ").append(TagAttributeValueConstant.IFM_PAGENATION_NEXT);
		if (tag.isLastPage()) nextSb.append(" ").append(TagAttributeValueConstant.IFM_STATE_DISABLED);
		HashMap<String, String> nextLiTagAttribute = new HashMap<String, String>();
		nextLiTagAttribute.put(TagAttributeNameConstant.CLASS, nextSb.toString());
		TagElement nextLiTagElement = new TagElement(TagNameConstant.LI, nextLiTagAttribute);
		{
			HashMap<String, String> aAttribute = new HashMap<String, String>();
			aAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			if (!tag.isLastPage()) {
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_ID, actionId);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET, codePrefix + itemId + codeSuffix);
				// data-action-get-args属性の値を作成する。
				StringBuilder getArgsValue = new StringBuilder();
				getArgsValue
					.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(clickItemInfo.toString())
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_START).append(pageNo * displayRowCount)
					.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND).append(TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE).append(TagAttributeValueConstant.Parts.PAGING);
				aAttribute.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getArgsValue.toString());
			}
			TagElement aElement = new TagElement(TagNameConstant.A, aAttribute);

			TagElement spanElement = new TagElement(TagNameConstant.SPAN, null);

			spanElement.setBody("&gt");
			aElement.setBody(Arrays.asList(spanElement));
			nextLiTagElement.setBody(Arrays.asList(aElement));
		}
		ulList.add(nextLiTagElement);

		//作成したページャのネスト状態を設定する
		ulTagElement.setBody(ulList);
		divTagElement.setBody(Arrays.asList(ulTagElement));

		return divTagElement;
	}
}