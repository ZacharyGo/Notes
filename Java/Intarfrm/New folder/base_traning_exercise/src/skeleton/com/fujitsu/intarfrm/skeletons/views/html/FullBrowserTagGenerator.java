package com.fujitsu.intarfrm.skeletons.views.html;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeDataType;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.ErrorValue;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.FormSortKey;
import com.fujitsu.intarfrm.helpers.commons.beans.FormValueObject;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.formats.IfmFormatResult;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.items.ControlDisplayMode;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemCollection;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormModeType;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.items.ItemParameterMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemSortDirection;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableItem;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableItemCollection;
import com.fujitsu.intarfrm.helpers.commons.items.SelectableListDataHolder;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlTagObject;
import com.fujitsu.intarfrm.helpers.views.taglibs.JspUtil;
import com.fujitsu.intarfrm.helpers.views.taglibs.items.HtmlGeneratorUtil;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeDrlCommand;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.commons.constants.CssConstant;
import com.fujitsu.intarfrm.skeletons.np.NpAttributesConstent;
import com.fujitsu.intarfrm.skeletons.np.NpPager;

/**
 * フルブラウザ用のHTMLタグを生成するクラス
 *
 * @author INTARFRM
 */
public class FullBrowserTagGenerator {

	/**
	 * CHL,RDOなどの複数項目が出力されるコントロールの並ぶ方向に対する初期値
	 */
	private static final String DEFAULT_ITEM_DIRECTION = TagAttributeValueConstant.VERTICAL;

	/**
	 * タグのValueObject
	 */
	private HtmlTagObject tag;

	/**
	 * JSPの属性
	 */
	private HashMap<String, String> dynamicAttributes;

	/**
	 * コンテキスト
	 */
	private FormActionContextBase context;

	/**
	 * コンストラクタ。
	 * @param tag タグ生成クラス
	 * @param optionalAttributes 開発者がJSPタグに定義した属性群
	 */
	public FullBrowserTagGenerator(HtmlTagObject tag, HashMap<String, String> optionalAttributes,
			FormActionContextBase context) {
		this.tag = tag;
		this.dynamicAttributes = optionalAttributes;
		this.context = context;
	}

	/**
	 * JSPのカスタムタグ名に応じてHTML生成メソッドを呼び出します。
	 * 主にINTARFRM標準で出力されるコントロール（ページャなど）に使用されます。
	 * @return	 生成されたHTML
	 */
	public String getHtml() {
		//タグの出力結果
		TagElement ret = null;
		//カスタムタグ名を取得します
		String tagName = this.tag.getJspTagName();
		if (tagName == null) {
			return "";
		}
		//item-id属性を削除する
		String id = this.dynamicAttributes.get(JspTagNameConstant.ID);
		this.dynamicAttributes.remove(JspTagNameConstant.ID);
		this.dynamicAttributes.remove(TagAttributeNameConstant.NAME);

		switch (tagName) {
		case JspTagNameConstant.PAGER:
		case JspTagNameConstant.MOBILEPAGER:
		case JspTagNameConstant.CODEPAGER:
		case JspTagNameConstant.MOBILECODEPAGER:
			NpPager pager = new NpPager(this.dynamicAttributes);
			ret = pager.createNpPagerTag(context);
			break;
		}

		if (ret == null) {
			return "";
		} else {
			return ret.getTags();
		}
	}

	/**
	 * JSPのカスタムタグ名に応じてHTML生成メソッドを呼び出します。
	 * 標題、プロジェクトナビゲータで設計した各種コントロールに使用されます。
	 * @param itemInfo フォーム項目情報
	 * @return	 生成されたHTML
	 */
	public String getHtml(FormItemInfo itemInfo) {
		//タグの出力結果
		TagElement ret = null;
		//カスタムタグ名を取得します
		String tagName = this.tag.getJspTagName();
		if (tagName == null) {
			return "";
		}

		// conditionCaptionタグの処理をします。
		if (tagName.equals(JspTagNameConstant.CONDITION_CAPTION)) {
			ret = this.createConditionCaptionTag(itemInfo);
			return ret.getTags();
		}

		//item-id属性、name属性は後続の処理で指定するため削除します。
		this.dynamicAttributes.remove(JspTagNameConstant.ID);
		this.dynamicAttributes.remove(TagAttributeNameConstant.NAME);

		// 非表示の場合はHTMLを出力せずに終了する。
		if (itemInfo.getCurrentDisplayMode().equals(ControlDisplayMode.NONCONTROL)) {
			return "";
		}

		//class属性を設定します。
		this.setClassName(itemInfo);

		//カスタムタグ名に応じてメソッドを呼び出します。
		switch (tagName) {
		case JspTagNameConstant.ITEM_CAPTION:
			ret = this.createItemCaptionTag(itemInfo);
			break;
		case JspTagNameConstant.LIST_ITEM_CAPTION:
			ret = this.createListItemCaptionTag(itemInfo);
			break;
		case JspTagNameConstant.CODE_LIST_ITEM_CAPTION:
			ret = this.createCodeListItemCaptionTag(itemInfo);
			break;
		case JspTagNameConstant.RADIO:
			ret = this.createRadioTag(itemInfo);
			break;
		case JspTagNameConstant.DRL:
			ret = this.createDrlTag(itemInfo);
			break;
		case JspTagNameConstant.LISTBOX:
			ret = this.createListboxTag(itemInfo);
			break;
		case JspTagNameConstant.CHECKBOX:
			if (itemInfo.getControlType() == ItemControl.CHL) {
				ret = this.createCheckboxlistTag(itemInfo);
			} else {
				ret = this.createCheckboxTag(itemInfo);
			}
			break;
		case JspTagNameConstant.LINK:
			ret = this.createLinkTag(itemInfo);
			break;
		case JspTagNameConstant.TEXTAREA:
			ret = this.createTextareaTag(itemInfo);
			break;
		case JspTagNameConstant.LABEL:
			ret = this.createLabelTag(itemInfo);
			break;
		case JspTagNameConstant.INPUT:
			ret = this.createInputTag(itemInfo);
			break;
		case JspTagNameConstant.FILE:
			ret = this.createFileInputTag(itemInfo);
			break;
		case JspTagNameConstant.BUTTON:
			ret = this.createButtonTag(itemInfo);
			break;
		}

		if (ret == null) {
			return "";
		} else {
			return ret.getTags();
		}
	}

	/**
	 * 項目標題用のHTMLタグを出力します。
	 * @param itemInfo 項目情報
	 * @return 標題用のHTMLタグ
	 */
	private TagElement createItemCaptionTag(FormItemInfo itemInfo) {
		//IDを設定します。
		String id = this.getItemTagId(itemInfo, true);
		this.dynamicAttributes.put(TagAttributeNameConstant.ID, id);

		//ボディを設定します。
		String body = this.tag.getBodyString();
		if (StringHelper.isNullOrEmpty(body)) {
			body = itemInfo.getCaption();
		}

		//タグ生成用の情報を詰めて返します。
		TagElement parentTag = new TagElement(TagNameConstant.SPAN, this.dynamicAttributes);
		parentTag.setBody(JspUtil.escapeHtml(body));
		return parentTag;
	}

	/**
	 * 明細項目標題用のHTMLタグを出力します。
	 * @param itemInfo 項目情報
	 * @return 明細標題用のHTMLタグ
	 */
	private TagElement createListItemCaptionTag(FormItemInfo itemInfo) {

		TagElement parentTag = null;

		// ソートが設定されており、モード設定上有効な場合のみaタグで出力します。
		if (itemInfo.getDataInfo() != null && itemInfo.getDataInfo().getSortInfo().getIsSortable()
				&& itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
			// ソート可能項目の場合は不要スタイルのクラスを削除する
			this.dynamicAttributes.remove(TagAttributeNameConstant.CLASS);
			// ソートアクション
			parentTag = new TagElement(TagNameConstant.A, this.dynamicAttributes);

			if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.ASCENDING) {
				this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, NpAttributesConstent.SORTING_ASC);
			} else if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.DESCENDING) {
				this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, NpAttributesConstent.SORTING_DESC);
			}

			// ソートの場合はjavaScriptは実行しないaタグを親タグとする。
			this.dynamicAttributes.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			// カスタムデータ属性
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_ID, TagAttributeValueConstant.Parts.UNDERSCORE
					+ itemInfo.getOwnerBorder().getBorderType().toString().toLowerCase() + TagAttributeValueConstant.Parts.SORT_ID_POSTFIX);
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_TARGET, itemInfo.getOwnerForm().getFormId()
					.toLowerCase() + TagAttributeValueConstant.Parts.HYPHEN_QUADRUPLE + itemInfo.getOwnerBorder().getBorderType().toString().toLowerCase());
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, getSortKeysAttribute(itemInfo));

			// aタグの下にspanタグを設定する。
			String childId = this.getItemTagId(itemInfo, true);
			HashMap<String, String> childAtt = new HashMap<String, String>();
			TagElement childTag = new TagElement(TagNameConstant.SPAN, childAtt);
			ArrayList<String> childCss = new ArrayList<String>();

			childCss.add(TagAttributeValueConstant.SORTING_SORTABLE);
			childCss.add(TagAttributeValueConstant.IFM_MODE_ENABLE);
			if (itemInfo.getDataInfo().needRequiredCheck()) {
				childCss.add(NpAttributesConstent.NP_REQUIRED);
			}
			childAtt.put(TagAttributeNameConstant.ID, childId);
			childAtt.put(TagAttributeNameConstant.CLASS, StringHelper.join(" ", childCss));

			//ボディを設定します。
			String body = this.tag.getBodyString();
			if (StringHelper.isNullOrEmpty(body)) {
				body = itemInfo.getCaption();
			}
			childTag.setBody(body);
			parentTag.setBody(Arrays.asList(new TagElement[] { childTag }));
		} else if (itemInfo.getDataInfo() != null) {
			//ソート項目でない場合は通常の標題を出力する

			//IDを設定します。
			String id = this.getItemTagId(itemInfo, true);
			this.dynamicAttributes.put(TagAttributeNameConstant.ID, id);
			ArrayList<String> css = new ArrayList<String>();
			if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.ASCENDING) {
				css.add(TagAttributeValueConstant.SORTING_ASC);
			} else if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.DESCENDING) {
				css.add(TagAttributeValueConstant.SORTING_DESC);
			}
			if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
				css.add(TagAttributeValueConstant.IFM_MODE_ENABLE);
			} else {
				css.add(TagAttributeValueConstant.IFM_MODE_DISABLE);
			}
			if (itemInfo.getDataInfo().needRequiredCheck()) {
				css.add(NpAttributesConstent.NP_REQUIRED);
			}
			this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, StringHelper.join(" ",css));
			//ボディを設定します。
			String body = this.tag.getBodyString();
			if (StringHelper.isNullOrEmpty(body)) {
				body = itemInfo.getCaption();
			}

			//タグ生成用の情報を詰めて返します。
			parentTag = new TagElement(TagNameConstant.SPAN, this.dynamicAttributes);
			parentTag.setBody(JspUtil.escapeHtml(body));
			return parentTag;

		}
		return parentTag;
	}

	/**
	 * コード検索結果の明細項目標題用のHTMLタグを出力します。
	 * @param itemInfo 項目情報
	 * @return 明細標題用のHTMLタグ
	 */
	private TagElement createCodeListItemCaptionTag(FormItemInfo itemInfo) {

		CodeFormDataSet form = (CodeFormDataSet)itemInfo.getOwnerForm().getOwnerData();
		CodeInfo codeInfo = form.getCodeInfo();
		AbstractListData<?, ?> listData = form.getListData(itemInfo.getOwnerBorder());
        FormItemCollection codeItems = listData.getInfo().getItems();
		//列の幅の合計値を取得する
        int widthSum = 0;
        int itemWidth = 0;
        for (CodeItemInfo info : codeInfo.iteratorDispItem()) {
            FormItemInfo formItemInfo = codeItems.get(info.getId());
            if (formItemInfo.getCurrentDisplayMode() != ControlDisplayMode.NONCONTROL) {
            	widthSum = widthSum + info.getWidth();
            	if (formItemInfo.getId().equals(itemInfo.getId())) {
            		itemWidth = info.getWidth();
            	}
            }
        }
        String widthStr = "";
        if (itemWidth != 0 && widthSum != 0) {
        	int width = (itemWidth * 100) / widthSum;
        	widthStr = "width: " + width + "%";
        }

		HashMap<String, String> thAttribute = new HashMap<>();
		thAttribute.put(TagAttributeNameConstant.STYLE, widthStr);
		TagElement thTag = new TagElement("th", thAttribute);

		TagElement parentTag = null;

		// ソートが設定されており、モード設定上有効な場合のみaタグで出力します。
		if (itemInfo.getDataInfo() != null && itemInfo.getDataInfo().getSortInfo().getIsSortable()
				&& itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
			// ソート可能項目の場合は不要スタイルのクラスを削除する
			this.dynamicAttributes.remove(TagAttributeNameConstant.CLASS);
			// ソートアクション
			parentTag = new TagElement(TagNameConstant.A, this.dynamicAttributes);

			if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.ASCENDING) {
				this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, NpAttributesConstent.SORTING_ASC);
			} else if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.DESCENDING) {
				this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, NpAttributesConstent.SORTING_DESC);
			}

			// ソートの場合はjavaScriptは実行しないaタグを親タグとする。
			this.dynamicAttributes.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			// カスタムデータ属性
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_ID, TagAttributeValueConstant.CODE_REFERENCE);
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_TARGET,
					TagAttributeValueConstant.Parts.CODE_NAME_PREFIX + itemInfo.getOwnerForm().getFormId().toLowerCase() + TagAttributeValueConstant.Parts.RESULT_PART_POSTFIX);
			StringBuilder clickItemInfo = new StringBuilder();
			clickItemInfo.append(TagAttributeValueConstant.Parts.QUERY_NAME_ITEM).append(this.context.getClicked().getButtonId());
			if (this.context.getClicked().getRowNo() != -1) {
				clickItemInfo.append(TagAttributeValueConstant.Parts.QUERY_AMPERSAND)
				.append(TagAttributeValueConstant.Parts.QUERY_NAME_ROW).append(context.getClicked().getRowNo());
			}
			this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_GET_ARGS, clickItemInfo.toString()
					+ TagAttributeValueConstant.Parts.QUERY_AMPERSAND + TagAttributeValueConstant.Parts.QUERY_NAME_START + "0"
					+ TagAttributeValueConstant.Parts.QUERY_AMPERSAND + TagAttributeValueConstant.Parts.QUERY_NAME_ACTIONTYPE + "sorting"
					+ TagAttributeValueConstant.Parts.QUERY_AMPERSAND + getSortKeysAttribute(itemInfo));

			// aタグの下にspanタグを設定する。
			String childId = this.getItemTagId(itemInfo, true);
			HashMap<String, String> childAtt = new HashMap<String, String>();
			TagElement childTag = new TagElement(TagNameConstant.SPAN, childAtt);
			ArrayList<String> childCss = new ArrayList<String>();

			childCss.add(TagAttributeValueConstant.SORTING_SORTABLE);
			childCss.add(TagAttributeValueConstant.IFM_MODE_ENABLE);
			if (itemInfo.getDataInfo().needRequiredCheck()) {
				childCss.add(NpAttributesConstent.NP_REQUIRED);
			}
			if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.ASCENDING) {
				childCss.add(TagAttributeValueConstant.SORTING_ASC);
			} else if (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.DESCENDING) {
				childCss.add(TagAttributeValueConstant.SORTING_DESC);
			}
			childAtt.put(TagAttributeNameConstant.ID, childId);
			childAtt.put(TagAttributeNameConstant.CLASS, StringHelper.join(" ", childCss));
			// childAtt.put(TagAttributeNameConstant.CLASS, childCss.toString());

			//ボディを設定します。
			String body = this.tag.getBodyString();
			if (StringHelper.isNullOrEmpty(body)) {
				body = itemInfo.getCaption();
			}
			childTag.setBody(JspUtil.escapeHtml(body));
			parentTag.setBody(Arrays.asList(new TagElement[] { childTag }));
		} else if (itemInfo.getDataInfo() != null) {
			//IDを設定します。
			String id = this.getItemTagId(itemInfo, true);
			this.dynamicAttributes.put(TagAttributeNameConstant.ID, id);

			//ボディを設定します。
			String body = this.tag.getBodyString();
			if (StringHelper.isNullOrEmpty(body)) {
				body = itemInfo.getCaption();
			}
			//タグ生成用の情報を詰めて返します。
			parentTag = new TagElement(TagNameConstant.SPAN, this.dynamicAttributes);
			parentTag.setBody(JspUtil.escapeHtml(body));
		}

		thTag.setBody(Arrays.asList(new TagElement[] { parentTag }));

		return thTag;
	}

	/**
	 * 明細項目標題のdata-get-args用にソートキー情報を取得します。
	 * @param itemInfo 項目情報
	 * @return 明細項目標題用のHTMLタグ
	 */
	private String getSortKeysAttribute(FormItemInfo itemInfo) {
		// 現在が昇順ソートの場合、次に押されたら降順にする。それ以外は昇順にする。
		ItemSortDirection nextDirection = (itemInfo.getDataInfo().getSortInfo().getSortState() == ItemSortDirection.ASCENDING) ?
				ItemSortDirection.DESCENDING
				:
				ItemSortDirection.ASCENDING;

		FormSortKey[] sortKeys = new FormSortKey[] { new FormSortKey(itemInfo.getId(),
				nextDirection == ItemSortDirection.DESCENDING) };
		StringBuilder sb = new StringBuilder();
		for (FormSortKey key : sortKeys) {
			sb.append(TagAttributeValueConstant.Parts.SORTKEYS + key.getSortKey() + TagAttributeValueConstant.Parts.QUERY_PLUS + String.valueOf(key.getDesc()));
		}
		String getArgs = sb.toString();
		if (getArgs.length() > 0) {
			getArgs = getArgs.substring(1, getArgs.length());
		}
		return getArgs;
	}

	/**
	 * コンディション標題用のHTMLタグを出力します。
	 * @param itemInfo 項目情報
	 * @return 標題用のHTMLタグ
	 */
	private TagElement createConditionCaptionTag(FormItemInfo itemInfo) {

		//ボディを設定します。
		String body = this.tag.getBodyString();

		TagElement parentTag = new TagElement(TagNameConstant.SPAN, this.dynamicAttributes);
		parentTag.setBody(JspUtil.escapeHtml(body));
		return parentTag;
	}

	/**
	 * q:linkのHTMLタグを出力します。
	 * @param itemInfo 項目情報
	 * @return リンクのHTMLタグ
	 */
	private TagElement createLinkTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//href属性を設定する
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
			//href属性がJSPで定義されている場合はそのまま使用し、ない場合はデフォルトのhrefを作成する
			if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.HREF)) {
				parentAttribute.put(TagAttributeNameConstant.HREF, TagAttributeValueConstant.HREF_DEFAULT);
			}
		} else {
			//非表示モードの場合はhref属性を出力しない
			parentAttribute.remove(TagAttributeNameConstant.HREF);
		}

		//アクション情報を設定します。
		this.setActionInfo(itemInfo, parentAttribute);

		//コード参照の場合のアクションを設定します。
		if (itemInfo.getCode() != null) {
			String codeType;
			if (itemInfo.getCode().getCodeCommand().getCodeType() == CodeType.COD) {
				codeType = TagAttributeValueConstant.CODE_TYPE_COD;
			} else {
				codeType = TagAttributeValueConstant.CODE_TYPE_COG;
			}
			if (itemInfo.isListItem()) {
				if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_ACTION_ROW)) {
					this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_ROW,
							String.valueOf(this.tag.getListIndex()));
				}
			}
			if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_CODE_TYPE)) {
				this.dynamicAttributes.put(TagAttributeNameConstant.DATA_CODE_TYPE, codeType);
			}
		}

		//ボディを設定する
		String body = this.tag.getBodyString();

		if (itemInfo.getAttribute().getDataType() == AttributeDataType.BUTTON) {
			//B属性の場合は標題を出力する。
			body = itemInfo.getCaption();
		} else {
			//JSPのボディが設定されている場合はそれを正として扱い、それ以外はデフォルトの値を取得する
			if (StringHelper.isNullOrEmpty(body)) {
				//表示データを取得するデータを持ってくる
				FormValueObject targetRow = null;
				if (itemInfo.isDataItem()) {
					if (itemInfo.isListItem()) {
						//明細中であれば現在の明細行のデータを設定する
						FormListInfo listInfo = itemInfo.getOwnerGroup().getListBorders(
								itemInfo.getOwnerBorder().getBorderType());
						FormDataSet formData = itemInfo.getOwnerForm().getOwnerData();
						AbstractListData<?, ?> listData = formData.getListData(listInfo);
						targetRow = listData.displayRows().get(this.tag.getListIndex());
					} else {
						//カードであればカードのデータを設定する
						targetRow = itemInfo.getOwnerForm().getOwnerData().CARD;
					}
					//表示データを取得してボディに代入する
					body = targetRow.toFormatString(itemInfo);
				}
			}
		}
		//ボディがnullが場合は空文字に変換する
		if (body == null) {
			body = "";
		}

		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = new TagElement(TagNameConstant.A, parentAttribute);
		parentTag.setBody(JspUtil.escapeHtml(body));
		return parentTag;
	}

	/**
	 * q:textareaのタグを作成します。
	 * @param itemInfo
	 * @return テキストエリアのHTMLタグ
	 */
	private TagElement createTextareaTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		//ボディを設定する
		String body = this.tag.getBodyString();

		//JSPのボディが設定されている場合はそれを正として扱い、それ以外はデフォルトの値を取得する
		if (StringHelper.isNullOrEmpty(body)) {
			//表示データを取得するデータを持ってくる
			FormValueObject targetRow = null;
			if (itemInfo.isListItem()) {
				//明細中であれば現在の明細行のデータを設定する
				FormListInfo listInfo = itemInfo.getOwnerGroup().getListBorders(
						itemInfo.getOwnerBorder().getBorderType());
				FormDataSet formData = itemInfo.getOwnerForm().getOwnerData();
				AbstractListData<?, ?> listData = formData.getListData(listInfo);
				targetRow = listData.displayRows().get(this.tag.getListIndex());
			} else {
				//カードであればカードのデータを設定する
				targetRow = itemInfo.getOwnerForm().getOwnerData().CARD;
			}
			//表示データを取得してボディに代入する
			ErrorValue errVal = targetRow.errorValue(itemInfo);
			if (errVal != null) {
				body = errVal.getValue();
			} else {
				body = targetRow.toFormatString(itemInfo);
			}
			if (body == null) {
				body = "";
			}
		}

		//無効項目はreadonly属性を付与します。
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
				&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.READ_ONLY)) {
			parentAttribute.put(TagAttributeNameConstant.READ_ONLY, TagAttributeValueConstant.READ_ONLY);
		}

		//プレースホルダを出力します
		if (!StringHelper.isNullOrEmpty(itemInfo.getPlaceHolder())
				&& itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
			if (ItemControl.TX2.equals(itemInfo.getControlType())) {
				this.dynamicAttributes.put(TagAttributeNameConstant.PLACEHOLDER, itemInfo.getPlaceHolder());
			}
		}

		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = new TagElement(TagNameConstant.TEXTAREA, parentAttribute);
		parentTag.setBody(JspUtil.escapeHtml(body));
		return parentTag;
	}

	/**
	 * q:inputのタグを作成します。
	 * @param itemInfo
	 * @return 入力項目のHTMLタグ
	 */
	private TagElement createInputTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//JSPでtype属性が指定されていない場合のみ、デフォルトの値を設定する
		if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.TYPE)) {
			switch (itemInfo.getControlType()) {
			case TXR:
				parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_TEXT);
				parentAttribute.put(TagAttributeNameConstant.READ_ONLY, TagAttributeValueConstant.READ_ONLY);
				break;
			case TXT:
				parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_TEXT);
				break;
			case ETC:
				parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_TEXT);
				break;
			case PWD:
				parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_PASSWORD);
				break;
			case HDN:
				parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_HIDDEN);
				break;
			default:
				return null;
			}
		}

		//無効項目はreadonly属性を付与します。
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
				&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.READ_ONLY)) {
			parentAttribute.put(TagAttributeNameConstant.READ_ONLY, TagAttributeValueConstant.READ_ONLY);
		}

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		String body = this.tag.getBodyString();

		//基本的にパスワードは出さない
		if (itemInfo.getControlType() != ItemControl.PWD && itemInfo.isInputControl()) {
			if (StringHelper.isNullOrEmpty(body)) {
				if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.VALUE)) {
					//表示データを取得するデータを持ってくる
					if (itemInfo.getCode() == null && itemInfo.getCondition() == null) {
						FormValueObject targetRow = null;
						if (itemInfo.isListItem()) {
							//明細中であれば現在の明細行のデータを設定する
							FormListInfo listInfo = itemInfo.getOwnerGroup().getListBorders(
									itemInfo.getOwnerBorder().getBorderType());
							FormDataSet formData = itemInfo.getOwnerForm().getOwnerData();
							AbstractListData<?, ?> listData = formData.getListData(listInfo);
							targetRow = listData.displayRows().get(this.tag.getListIndex());
						} else {
							//カードであればカードのデータを設定する
							targetRow = itemInfo.getOwnerForm().getOwnerData().CARD;
						}
						//表示データを取得してボディに代入する
						ErrorValue errVal = targetRow.errorValue(itemInfo);
						if (errVal != null) {
							body = errVal.getValue();
						} else {
							body = targetRow.toFormatString(itemInfo);
						}
						if (body == null) {
							body = "";
						}
						parentAttribute.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(body));
					}
				}
			}
		} else {
			//パスワード項目でvalueが設定されていた場合は、表示しないので削除する
			parentAttribute.remove(TagAttributeNameConstant.VALUE);
		}

		//プレースホルダを出力する（コード参照画面は非対象）
		if (!(itemInfo.getOwnerForm() instanceof CodeFormInfo)
				&& !StringHelper.isNullOrEmpty(itemInfo.getPlaceHolder())
				&& itemInfo.getCurrentDisplayMode() == ControlDisplayMode.ENABLE) {
			if (ItemControl.PWD.equals(itemInfo.getControlType()) || ItemControl.TXT.equals(itemInfo.getControlType())) {
				this.dynamicAttributes.put(TagAttributeNameConstant.PLACEHOLDER, itemInfo.getPlaceHolder());
			}
		}

		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = new TagElement(TagNameConstant.INPUT, parentAttribute);
		return parentTag;
	}

	/**
	 * q:fileのタグを作成します。
	 * @param itemInfo
	 * @return 入力項目のHTMLタグ
	 */
	private TagElement createFileInputTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//JSPでtype属性が指定されていない場合のみ、デフォルトの値を設定する
		if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.TYPE)) {
			parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_FILE);
			// システム共通設定として、ファイルアップロード項目の複数ファイル選択を許可する場合、下記の行のコメントを解除してください。
			// parentAttribute.put(TagAttributeNameConstant.MULTIPLE, TagAttributeValueConstant.MULTIPLE);
		}

		//class属性を設定します。
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
				&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
			parentAttribute.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = new TagElement(TagNameConstant.INPUT, parentAttribute);
		return parentTag;
	}

	/**
	 * q:labelのタグを作成します。
	 * @param itemInfo
	 * @return ラベルのHTMLタグ
	 */
	private TagElement createLabelTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		String body;
		//ボディを設定する
		if (itemInfo.isStaticLabel()) {
			body = itemInfo.getStaticLabel();
		} else {
			body = this.tag.getBodyString();
		}

		//JSPのボディが設定されている場合はそれを正として扱い、それ以外はデフォルトの値を取得する
		if (StringHelper.isNullOrEmpty(body)) {
			//表示データを取得するデータを持ってくる
			FormValueObject targetRow = null;
			if (itemInfo.isListItem()) {
				//明細中であれば現在の明細行のデータを設定する
				FormListInfo listInfo = itemInfo.getOwnerGroup().getListBorders(
						itemInfo.getOwnerBorder().getBorderType());
				FormDataSet formData = itemInfo.getOwnerForm().getOwnerData();
				AbstractListData<?, ?> listData = formData.getListData(listInfo);
				targetRow = listData.displayRows().get(this.tag.getListIndex());
			} else {
				//カードであればカードのデータを設定する
				targetRow = itemInfo.getOwnerForm().getOwnerData().CARD;
			}
			//表示データを取得してボディに代入する
			body = targetRow.toFormatString(itemInfo);
			if (body == null) {
				body = "";
			}
		}

		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = null;
		if (itemInfo.isStaticLabel() && context.getViewType() != null && context.getViewType().equals("mobile")) {
			// モバイル版で静的ラベルを表示する際に、LABELタグを使う。
			parentTag = new TagElement(TagNameConstant.LABEL, parentAttribute);
		} else {
			parentTag = new TagElement(TagNameConstant.SPAN, parentAttribute);
		}
		parentTag.setBody(JspUtil.escapeHtml(body));
		return parentTag;
	}

	/**
	 * q:buttonのタグを作成します。
	 * @param itemInfo
	 * @return ボタンのHTMLタグ
	 */
	private TagElement createButtonTag(FormItemInfo itemInfo) {

		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getItemTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		//BTNコントロールはbuttonタイプ、それ以外はsubmitタイプを設定します。
		if (itemInfo.getControlType() == ItemControl.BTN) {
			parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_BUTTON);
		} else if (itemInfo.getControlType() == ItemControl.CLR) {
			parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_RESET);
		} else {
			parentAttribute.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_SUBMIT);
		}

		//無効項目はdisabled属性を付与します。
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
				&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
			parentAttribute.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}

		//アクション情報を設定します。
		this.setActionInfo(itemInfo, parentAttribute);

		String codeType = "";
		//コード情報を設定します。
		if (itemInfo.getCode() != null) {
			//String codeType;
			if (itemInfo.getCode().getCodeCommand().getCodeType() == CodeType.COD) {
				codeType = TagAttributeValueConstant.CODE_TYPE_COD;
			} else {
				codeType = TagAttributeValueConstant.CODE_TYPE_COG;
			}
			if (itemInfo.isListItem()) {
				if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_ACTION_ROW)) {
					this.dynamicAttributes.put(TagAttributeNameConstant.DATA_ACTION_ROW,
							String.valueOf(this.tag.getListIndex()));
				}
			}
			if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_CODE_TYPE)) {
				this.dynamicAttributes.put(TagAttributeNameConstant.DATA_CODE_TYPE, codeType);
			}
		}

		//ボディを設定します。
		String body = "";
		if (!codeType.equals(TagAttributeValueConstant.CODE_TYPE_COD)) {
			//String body = this.tag.getBodyString();
			body = this.tag.getBodyString();
			if (StringHelper.isNullOrEmpty(body)) {
				if (itemInfo.isDataItem()) {
					//表示データを取得するための設定
					FormValueObject targetRow = null;
					if (itemInfo.isListItem()) {
						//明細中であれば現在の明細行のデータを設定する
						FormListInfo listInfo = itemInfo.getOwnerGroup().getListBorders(
								itemInfo.getOwnerBorder().getBorderType());
						FormDataSet formData = itemInfo.getOwnerForm().getOwnerData();
						AbstractListData<?, ?> listData = formData.getListData(listInfo);
						targetRow = listData.displayRows().get(this.tag.getListIndex());
					} else {
						//カードであればカードのデータを設定する
						targetRow = itemInfo.getOwnerForm().getOwnerData().CARD;
					}
					//表示データを取得してボディに代入する
					body = targetRow.toFormatString(itemInfo);
				} else {
					//データ項目でない場合は標題を取得してボタンに表示する
					body = itemInfo.getCaption();
				}
				if (body == null) {
					body = "";
				}
			}
		}
		parentAttribute.putAll(this.dynamicAttributes);
		TagElement parentTag = new TagElement(TagNameConstant.BUTTON, parentAttribute);

		String btnClassVal = this.dynamicAttributes.get(TagAttributeNameConstant.CLASS);
		if (!codeType.equals(TagAttributeValueConstant.CODE_TYPE_COD) &&
			(btnClassVal != null && btnClassVal.indexOf("np-icon-button") != -1) &&
			!StringHelper.isNullOrEmpty(body)) {
			HashMap<String, String> childAtt = new HashMap<String, String>();
			TagElement childTag = new TagElement(TagNameConstant.SPAN, childAtt);
			childTag.setBody(JspUtil.escapeHtml(body));
			body = childTag.getTags().replaceAll(" ", "");
		}
		parentTag.setBody(body);

		return parentTag;
	}

	/**
	 * q:drlのタグを作成します。
	 * @param itemInfo
	 * @return ドロップダウンのHTMLタグ
	 */
	private TagElement createDrlTag(FormItemInfo itemInfo) {

		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getConditionTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		//multiple属性を設定します
		if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.MULTIPLE)) {
			//項目が複数選択可能と設定してあればmultiple属性をtrueに設定する
			if (itemInfo.getDataInfo().getParameterMode() == ItemParameterMode.MULTIPLE) {
				this.dynamicAttributes.put(TagAttributeNameConstant.MULTIPLE, TagAttributeValueConstant.TRUE);
			}
		}
		//無効項目の場合はdisable属性を付与する
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE &&
				!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
			this.dynamicAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}
		parentAttribute.putAll(this.dynamicAttributes);
		//親タグを作成する
		TagElement parentTag = new TagElement(TagNameConstant.SELECT, parentAttribute);

		SelectableListDataHolder selectListHolder = itemInfo.getSelectableListHolder();
		List<TagElement> childTags = new ArrayList<TagElement>();
		if (itemInfo.getCondition() != null) {
			if (selectListHolder.getAutoLoad()) {
				// 設計情報でコンディションが設定されている場合には、コンディションの選択肢を選択項目として設定する。
				selectListHolder.setData(itemInfo.getCondition().getSelectableList(itemInfo));
			}
			//コンディションDRLを設定する
			if (selectListHolder.getData() != null) {
				for (SelectableItem currentItem : getViewList(selectListHolder)) {
					HashMap<String, String> childAttributes = new HashMap<String, String>();
					childAttributes.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(currentItem.formatValue(itemInfo)));

					//選択されている場合は、selected属性を付与する
					if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
						childAttributes.put(TagAttributeNameConstant.SELECTED, TagAttributeValueConstant.SELECTED);
					}
					TagElement childTag = new TagElement(TagNameConstant.OPTION, childAttributes);
					childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
					childTags.add(childTag);
				}
			}
		} else if (itemInfo.getCode() != null && itemInfo.getCode().getCodeCommand() instanceof ICodeDrlCommand) {
			ICodeDrlCommand drlCommand = (ICodeDrlCommand) itemInfo.getCode().getCodeCommand();
			if (itemInfo.isListItem()) {
				//明細ごとに異なる選択リストを作成する場合
				try {
					SelectableItemCollection drlData = null;
				    if (drlCommand.createRowsData()) {
				        drlData = drlCommand.getDrlData((FormActionContext) context, this.tag.getListIndex());
				        selectListHolder.setRowData(drlData, this.tag.getListIndex());
				    } else {
				        drlData = drlCommand.getDrlData((FormActionContext) context, 0);
				        selectListHolder.setData(drlData);
				    }

					for (SelectableItem currentItem : drlData.getItems()) {
						HashMap<String, String> childAttributes = new HashMap<String, String>();
						childAttributes.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(currentItem.formatValue(itemInfo)));

						//選択されている場合は、selected属性を付与する
						if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
							childAttributes.put(TagAttributeNameConstant.SELECTED, TagAttributeValueConstant.SELECTED);
						}
						TagElement childTag = new TagElement(TagNameConstant.OPTION, childAttributes);
						childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
						childTags.add(childTag);
					}
					// selectListHolder.setData(drlData);
				} catch (DatabaseException e) {
					return null;
				}
			} else {
				try {
					SelectableItemCollection drlData = drlCommand.getDrlData((FormActionContext) context, 0);
					for (SelectableItem currentItem : drlData.getItems()) {
						HashMap<String, String> childAttributes = new HashMap<String, String>();
						childAttributes.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(currentItem.formatValue(itemInfo)));

						//選択されている場合は、selected属性を付与する
						if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
							childAttributes.put(TagAttributeNameConstant.SELECTED, TagAttributeValueConstant.SELECTED);
						}
						TagElement childTag = new TagElement(TagNameConstant.OPTION, childAttributes);
						childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
						childTags.add(childTag);
					}
					selectListHolder.setData(drlData);
				} catch (DatabaseException e) {
					return null;
				}
			}
		} else if (selectListHolder != null && selectListHolder.getData() != null) {
			//DRLを設定する
			for (SelectableItem currentItem : getViewList(selectListHolder)) {
				HashMap<String, String> childAttributes = new HashMap<String, String>();
				childAttributes.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(currentItem.formatValue(itemInfo)));

				//選択されている場合は、selected属性を付与する
				if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
					childAttributes.put(TagAttributeNameConstant.SELECTED, TagAttributeValueConstant.SELECTED);
				}
				TagElement childTag = new TagElement(TagNameConstant.OPTION, childAttributes);
				childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
				childTags.add(childTag);
			}
		}

		parentTag.setBody(childTags);
		return parentTag;
	}

	/**
	 * q:listboxのタグを作成します。
	 * @param itemInfo
	 * @return ドロップダウンのHTMLタグ
	 */
	private TagElement createListboxTag(FormItemInfo itemInfo) {

		HashMap<String, String> parentAttribute = new HashMap<String, String>();

		//IDを設定します。
		String id = this.getConditionTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		//listboxはmultiple属性を定義します。
		parentAttribute.put(TagAttributeNameConstant.MULTIPLE, TagAttributeValueConstant.MULTIPLE);

		//無効の場合はdisabledを付与します。
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE &&
				!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
			this.dynamicAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}

		parentAttribute.putAll(this.dynamicAttributes);
		//親タグを作る
		TagElement parentTag = new TagElement(TagNameConstant.SELECT, parentAttribute);

		List<TagElement> childTags = new ArrayList<TagElement>();

		//子を作っていく
		SelectableListDataHolder selectListHolder = itemInfo.getSelectableListHolder();
		if (selectListHolder.getAutoLoad() && itemInfo.getCondition() != null) {
			// 設計情報でコンディションが設定されている場合には、コンディションの選択肢を選択項目として設定する。
			selectListHolder.setData(itemInfo.getCondition().getSelectableList(itemInfo));
		}
		if (selectListHolder.getData() != null) {
			//データが正常に入っている場合は子のoptionタグを追加する。
			for (SelectableItem currentItem : getViewList(selectListHolder)) {
				//子の属性を入れる変数を宣言する
				HashMap<String, String> childAttributes = new HashMap<String, String>();
				childAttributes.put(TagAttributeNameConstant.VALUE, JspUtil.escapeHtml(currentItem.formatValue(itemInfo)));

				//選択されている場合は、selected属性を付与する
				if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
					childAttributes.put(TagAttributeNameConstant.SELECTED, TagAttributeValueConstant.SELECTED);
				}
				TagElement childTag = new TagElement(TagNameConstant.OPTION, childAttributes);
				childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
				childTags.add(childTag);
			}
		} else {
			//データが正常に入っていない場合は子のoptionタグは出力しない。
			childTags = null;
		}

		parentTag.setBody(childTags);
		return parentTag;
	}

	/**
	 * q:radio項目のHTMLタグを生成します。
	 * @param itemInfo
	 * @return ラジオボタンのHTMLタグ
	 */
	private TagElement createRadioTag(FormItemInfo itemInfo) {
		//連番を振るためのインデックス
		int index = 0;

		//もっとも親となるタグ
		HashMap<String, String> ulTagAttribute = new HashMap<String, String>();
		TagElement superTag = null;
		if (context.getViewType() != null && context.getViewType().equals("mobile")) {
			ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-value-group");
			superTag = new TagElement(TagNameConstant.DIV, ulTagAttribute);
		} else {
			String itemDirection = DEFAULT_ITEM_DIRECTION;
			if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_DIRECTION)) {
				itemDirection = this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_DIRECTION);
			}
			if (itemDirection.equals(TagAttributeValueConstant.VERTICAL)) {
				ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-control-group np-vertical");
				superTag = new TagElement(TagNameConstant.UL, ulTagAttribute);
			} else {
				ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-control-group");
				superTag = new TagElement(TagNameConstant.UL, ulTagAttribute);
			}
		}
		List<TagElement> parentTags = new ArrayList<TagElement>();
		if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_DIRECTION)) {
			if (this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_DIRECTION).equals(
					TagAttributeValueConstant.VERTICAL)) {
				superTag.setDirection(TagDirectionType.VERTICAL);
			} else {
				//VERTICAL指定以外は全て横に並べる
				superTag.setDirection(TagDirectionType.HORIZONTAL);
			}
			this.dynamicAttributes.remove(TagAttributeNameConstant.ITEM_DIRECTION);
		}
		if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_NUM_DIRECTION)) {
			//数値以外はデフォルト（改行なしと同じ扱い=設定なし）
			String num = (String) this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_NUM_DIRECTION);
			if (num.matches(TagAttributeValueConstant.NUMBER_FILTER)) {
				superTag.setDirectionElements(Integer.parseInt(num));
			}
			this.dynamicAttributes.remove(TagAttributeNameConstant.ITEM_NUM_DIRECTION);
		}

		SelectableListDataHolder selectListHolder = itemInfo.getSelectableListHolder();
		if (selectListHolder.getAutoLoad() && itemInfo.getCondition() != null) {
			// 設計情報でコンディションが設定されている場合には、コンディションの選択肢を選択項目として設定する。
			selectListHolder.setData(itemInfo.getCondition().getSelectableList(itemInfo));
		}
		if (selectListHolder.getData() != null) {
			//データが正常に入っている場合は選択肢を出力する。
			for (SelectableItem currentItem : getViewList(selectListHolder)) {
				HashMap<String, String> parentAttributes = new HashMap<String, String>();
				parentAttributes.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_RADIO);
				//モードがdisableの時だけdisabled属性を出力する
				if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
						&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
					parentAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
				}
				parentAttributes.put(TagAttributeNameConstant.CLASS,
						this.dynamicAttributes.get(TagAttributeNameConstant.CLASS));

				//IDを設定します。
				String id = this.getConditionTagId(itemInfo, index);
				parentAttributes.put(TagAttributeNameConstant.ID, id);

				//nameを設定します。
				String name = this.getItemName(itemInfo);
				parentAttributes.put(TagAttributeNameConstant.NAME, name);

				//選択されている場合は、selected属性を付与する
				if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
					parentAttributes.put(TagAttributeNameConstant.CHECKED, TagAttributeValueConstant.CHECKED);
				}

				//値を設定します。
				parentAttributes.put(TagAttributeNameConstant.VALUE, currentItem.formatValue(itemInfo));
				parentAttributes.putAll(this.dynamicAttributes);
				TagElement parentTag = new TagElement(TagNameConstant.INPUT, parentAttributes);

				//子
				HashMap<String, String> childAttributes = new HashMap<String, String>();
				//子のid属性を設定します。
				childAttributes.put(TagAttributeNameConstant.ID, getChildId(id));
				//子のfor属性を設定する
				childAttributes.put(TagAttributeNameConstant.FOR, id);
				//子タグを作る
				TagElement childTag = new TagElement(TagNameConstant.LABEL, childAttributes);
				childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
				List<TagElement> childTags = new ArrayList<TagElement>();
				childTags.add(childTag);
				//子を親にバインドする
				parentTag.setTail(childTags);
				if (context.getViewType() != null && context.getViewType().equals("mobile")) {
					parentTags.add(parentTag);
				} else {
					TagElement liTagElement = new TagElement(TagNameConstant.LI, null);
					liTagElement.setBody(Arrays.asList(parentTag));
					parentTags.add(liTagElement);
				}
				index++;
			}
		}
		superTag.setBody(parentTags);
		//superTag.setUseTable(true);

		return superTag;
	}

	/**
	 * チェックボックスリストを作成します。
	 * @param itemInfo
	 * @return
	 */
	private TagElement createCheckboxlistTag(FormItemInfo itemInfo) {
		//連番を振るためのインデックス
		int index = 0;

		//親タグを定義する
		HashMap<String, String> ulTagAttribute = new HashMap<String, String>();
		TagElement superTag = null;
		if (context.getViewType() != null && context.getViewType().equals("mobile")) {
			ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-value-group");
			superTag = new TagElement(TagNameConstant.DIV, ulTagAttribute);
		} else {
			String itemDirection = DEFAULT_ITEM_DIRECTION;
			if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_DIRECTION)) {
				itemDirection = this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_DIRECTION);
			}
			if (itemDirection.equals(TagAttributeValueConstant.VERTICAL)) {
				ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-control-group np-vertical");
				superTag = new TagElement(TagNameConstant.UL, ulTagAttribute);
			} else {
				ulTagAttribute.put(TagAttributeNameConstant.CLASS, "np-control-group");
				superTag = new TagElement(TagNameConstant.UL, ulTagAttribute);
			}
		}

		List<TagElement> superBody = new ArrayList<TagElement>();

		SelectableListDataHolder selectListHolder = itemInfo.getSelectableListHolder();
		if (selectListHolder.getAutoLoad() && itemInfo.getCondition() != null) {
			// 設計情報でコンディションが設定されている場合には、コンディションの選択肢を選択項目として設定する。
			selectListHolder.setData(itemInfo.getCondition().getSelectableList(itemInfo));
		}

		if (selectListHolder.getData() != null) {
			//データが正常に入っている場合は選択肢を出力する。
			for (SelectableItem currentItem : getViewList(selectListHolder)) {
				HashMap<String, String> parentSource = new HashMap<String, String>();
				parentSource.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_CHECKBOX);
				parentSource
				.put(TagAttributeNameConstant.CLASS, this.dynamicAttributes.get(TagAttributeNameConstant.CLASS));

				//IDを設定します。
				String id = this.getConditionTagId(itemInfo, index);
				parentSource.put(TagAttributeNameConstant.ID, id);

				//nameを設定します。
				String name = this.getItemName(itemInfo);
				parentSource.put(TagAttributeNameConstant.NAME, name);

				if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_DIRECTION)) {
					if (this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_DIRECTION).equals(
							TagAttributeValueConstant.VERTICAL)) {
						superTag.setDirection(TagDirectionType.VERTICAL);
					} else {
						//VERTICAL指定以外は全て横に並べる
						superTag.setDirection(TagDirectionType.HORIZONTAL);
					}
					this.dynamicAttributes.remove(TagAttributeNameConstant.ITEM_DIRECTION);
				}

				if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.ITEM_NUM_DIRECTION)) {
					//数値以外はデフォルト（改行なしと同じ扱い=設定なし）
					String num = (String) this.dynamicAttributes.get(TagAttributeNameConstant.ITEM_NUM_DIRECTION);
					if (num.matches(TagAttributeValueConstant.NUMBER_FILTER)) {
						superTag.setDirectionElements(Integer.parseInt(num));
					}
					this.dynamicAttributes.remove(TagAttributeNameConstant.ITEM_NUM_DIRECTION);
				}

				//value属性の設定
				parentSource.put(TagAttributeNameConstant.VALUE, currentItem.formatValue(itemInfo));

				//選択されている場合は、selected属性を付与する
				if (isSelectedItem(currentItem.formatValue(itemInfo), itemInfo)) {
					parentSource.put(TagAttributeNameConstant.CHECKED, TagAttributeValueConstant.CHECKED);
				}
				//無効項目の場合はdisable属性を付与する
				if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
						&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
					this.dynamicAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
				}
				parentSource.putAll(this.dynamicAttributes);
				TagElement parentTag = new TagElement(TagNameConstant.INPUT, parentSource);

				//子のデータを入力する
				HashMap<String, String> childAttributes = new HashMap<String, String>();
				//子のid属性を設定します。
				childAttributes.put(TagAttributeNameConstant.ID, getChildId(id));
				//子のfor属性を設定する
				childAttributes.put(TagAttributeNameConstant.FOR, id);

				//子のタグ情報を作成する
				TagElement childTag = new TagElement(TagNameConstant.LABEL, childAttributes);
				childTag.setBody(JspUtil.escapeHtml(currentItem.getCaption()));
				List<TagElement> childTags = new ArrayList<TagElement>();
				childTags.add(childTag);
				//親タグに子をバインドする
				parentTag.setTail(childTags);
				if (context.getViewType() != null && context.getViewType().equals("mobile")) {
					superBody.add(parentTag);
				} else {
					TagElement liTagElement = new TagElement(TagNameConstant.LI, null);
					liTagElement.setBody(Arrays.asList(parentTag));
					superBody.add(liTagElement);
				}
				index++;
			}
		}
		superTag.setBody(superBody);

		//superTag.setUseTable(true);

		return superTag;
	}

	/**
	 * チェックボックスタグを作成します。
	 * @param itemInfo
	 * @return
	 */
	private TagElement createCheckboxTag(FormItemInfo itemInfo) {
		HashMap<String, String> parentAttribute = new HashMap<String, String>();
		//type
		this.dynamicAttributes.put(TagAttributeNameConstant.TYPE, TagAttributeValueConstant.TYPE_CHECKBOX);

		//IDを設定します。
		String id = this.getConditionTagId(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.ID, id);

		//nameを設定します。
		String name = this.getItemName(itemInfo);
		parentAttribute.put(TagAttributeNameConstant.NAME, name);

		//value属性の設定 選択されれば1
		parentAttribute.put(TagAttributeNameConstant.VALUE, TagAttributeValueConstant.SELECTED_VALUE);

		IfmFormatResult res = itemInfo.getDataInfo().formatValue(TagAttributeValueConstant.SELECTED_VALUE);
		//選択されている場合は、selected属性を付与する
		if (isSelectedItem(res.isSuccess() ? res.getResultValue() : TagAttributeValueConstant.SELECTED_VALUE, itemInfo)) {
			this.dynamicAttributes.put(TagAttributeNameConstant.CHECKED, TagAttributeValueConstant.CHECKED);
		}
		//無効項目の場合はdisable属性を付与する
		if (itemInfo.getCurrentDisplayMode() == ControlDisplayMode.DISABLE
				&& !this.dynamicAttributes.containsKey(TagAttributeNameConstant.DISABLED)) {
			this.dynamicAttributes.put(TagAttributeNameConstant.DISABLED, TagAttributeValueConstant.DISABLED);
		}
		parentAttribute.putAll(this.dynamicAttributes);

		//親のタグ情報を確定する
		TagElement parentTag = new TagElement(TagNameConstant.INPUT, parentAttribute);

		//子のタグ情報を作る
		HashMap<String, String> childAttribute = new HashMap<String, String>();
		//子のid属性を設定します。
		childAttribute.put(TagAttributeNameConstant.ID, getChildId(id));
		//子のfor属性を設定します。
		childAttribute.put(TagAttributeNameConstant.FOR, id);
		//子のタグ情報を確定する
		TagElement childTag = new TagElement(TagNameConstant.LABEL, childAttribute);
		childTag.setBody(JspUtil.escapeHtml(itemInfo.getCaption()));
		List<TagElement> childTags = new ArrayList<TagElement>();
		childTags.add(childTag);

		//子を親タグに紐づける
		parentTag.setTail(childTags);

		return parentTag;
	}

	/**
	 * 子要素のIDを作成する
	 * @param id 親のID
	 * @return 子のID
	 */
	private String getChildId(String id) {
		return id + "-label";
	}

	/**
	 * class属性の値を設定します。既定の処理ではclass属性が設定されている場合は、属性値を追加しません。
	 * @param itemInfo 項目情報
	 */
	private void setClassName(FormItemInfo itemInfo) {

		String btnClassVal = "";
		if (itemInfo.getControlType() == ItemControl.BTN) {
			if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.CLASS)) {
				btnClassVal = this.dynamicAttributes.get(TagAttributeNameConstant.CLASS);
			}
			if (itemInfo.getCode() != null
					&& itemInfo.getCode().getCodeCommand().getCodeType() == CodeType.COD) {
				btnClassVal = btnClassVal + " " + "np-icon-button np-icon-reference";
			} else if (itemInfo.isListItem() && btnClassVal.indexOf("np-icon-button") == -1) {
				// NextPlusUI用ボタンアイコンを利用しない場合、np-smallbtn属性を追加する
				btnClassVal = btnClassVal + " " + "np-smallbtn";
			}
			this.dynamicAttributes.remove(TagAttributeNameConstant.CLASS);
		}
		StringBuilder sb = new StringBuilder();
		if (this.dynamicAttributes.containsKey(TagAttributeNameConstant.CLASS)) {
			sb.append(this.dynamicAttributes.get(TagAttributeNameConstant.CLASS));
			sb.append(" ");
		}

		if (itemInfo.getCurrentDisplayMode().equals(ControlDisplayMode.ENABLE)) {
			//現在の項目が有効の場合は有効クラスを設定する
			sb.append(TagAttributeValueConstant.IFM_MODE_ENABLE);
			//必須チェックの項目
			if (this.tag.getJspTagName() != JspTagNameConstant.DRL	&& this.tag.getJspTagName() != JspTagNameConstant.LISTBOX) {
				if (itemInfo instanceof CodeFormItemInfo) {
					if (itemInfo.getModes().get(FormModeType.MODE1).needRequiredCheck()) {
						sb.append(" ").append(NpAttributesConstent.NP_REQUIRED);
					}
				} else {
					if (itemInfo.getDataInfo() != null && itemInfo.getDataInfo().needRequiredCheck()) {
						sb.append(" ").append(NpAttributesConstent.NP_REQUIRED);
					}
				}
			}
		} else if (itemInfo.getCurrentDisplayMode().equals(ControlDisplayMode.DISABLE)) {
			//現在の項目が無効の場合は無効クラスを設定する
			sb.append(TagAttributeValueConstant.IFM_MODE_DISABLE);
		}
		if (itemInfo.getAttribute().getDataType().equals(AttributeDataType.NUMBER)
			&& !(this.tag.getJspTagName().equals(JspTagNameConstant.ITEM_CAPTION))
			&& !(this.tag.getJspTagName().equals(JspTagNameConstant.LIST_ITEM_CAPTION))
			&& !(this.tag.getJspTagName().equals(JspTagNameConstant.CODE_LIST_ITEM_CAPTION))) {
			switch (itemInfo.getControlType()) {
			case TXT:
			case TXR:
			case LBL:
				// 数値かつ、キャプションでない場合、右寄せのCSSを指定する。
				sb.append(" ").append(CssConstant.NUMERIC_ALIGN_RIGHT);
				break;
			default:
				break;
			}
		}

		if (!btnClassVal.equals("")) {
			sb.append(" ").append(btnClassVal);
		}

		//class属性を追加する
		this.dynamicAttributes.put(TagAttributeNameConstant.CLASS, sb.toString());

	}

	/**
	 * コンディション以外のタグIDを取得します。
	 * @param itemInfo フォーム項目情報
	 * @param isCaption true=標題、false=標題でない
	 * @return タグのID
	 */
	private String getItemTagId(FormItemInfo itemInfo, boolean isCaption) {
		StringBuilder sb = new StringBuilder();
		//IDのベースを設定します。
		if (itemInfo.getOwnerForm().getOwnerData() instanceof CodeFormDataSet) {
			//コードの場合
			sb.append(TagAttributeValueConstant.Parts.CODE_NAME_PREFIX).append(itemInfo.getOwnerForm().getFormId().toLowerCase()).append(TagAttributeValueConstant.Parts.HYPHEN)
					.append(itemInfo.getId().toLowerCase());
		} else {
			sb.append(itemInfo.getOwnerForm().getFormId().toLowerCase()).append(TagAttributeValueConstant.Parts.HYPHEN)
					.append(itemInfo.getId().toLowerCase());
		}

		//明細項目はインデックスを追加します。
		if (itemInfo.isListItem() && !isCaption) {
			sb.append(TagAttributeValueConstant.Parts.HYPHEN).append(this.tag.getListIndex());
		}

		//標題用のサフィックスを追加します。
		if (isCaption) {
			sb.append("-cap");
		}
		return sb.toString();
	}

	/**
	 * コンディション以外のタグIDを取得します。
	 * @param itemInfo フォーム項目情報
	 * @return タグのID
	 */
	private String getItemTagId(FormItemInfo itemInfo) {
		return this.getItemTagId(itemInfo, false);
	}

	/**
	 * コンディションのタグIDを取得します。
	 * @param itemInfo フォーム項目情報
	 * @param index 複数コントロールを設置する場合のインデックス
	 * @return タグのID
	 */
	private String getConditionTagId(FormItemInfo itemInfo, int index) {
		StringBuilder sb = new StringBuilder(this.getConditionTagId(itemInfo));
		sb.append(TagAttributeValueConstant.Parts.HYPHEN_TRIPLE).append(index);
		return sb.toString();
	}

	/**
	 * コンディションのタグIDを取得します。
	 * @param itemInfo フォーム項目情報
	 * @return タグのID
	 */
	private String getConditionTagId(FormItemInfo itemInfo) {
		StringBuilder sb = new StringBuilder();
		//IDのベースを設定します。
		if (itemInfo.getOwnerForm().getOwnerData() instanceof CodeFormDataSet) {
			sb.append(TagAttributeValueConstant.Parts.CODE_NAME_PREFIX);
		}
		sb.append(itemInfo.getOwnerForm().getFormId().toLowerCase()).append(TagAttributeValueConstant.Parts.HYPHEN).append(itemInfo.getId().toLowerCase());

		//明細項目はインデックスを追加します。
		if (itemInfo.isListItem()) {
			sb.append(TagAttributeValueConstant.Parts.HYPHEN).append(this.tag.getListIndex());
		}
		return sb.toString();
	}

	/**
	 * コンディション以外のname属性を取得します。
	 * @param itemInfo
	 * @return
	 */
	private String getItemName(FormItemInfo itemInfo) {
		StringBuilder sb = new StringBuilder();
		//name属性のベースを設定します。（基本的にIDと同じ）
		if (itemInfo.getOwnerForm().getOwnerData() instanceof CodeFormDataSet) {
			//コードの場合は頭にcode--をつける
			sb.append(TagAttributeValueConstant.Parts.CODE_NAME_PREFIX);
		}
		sb.append(itemInfo.getOwnerForm().getFormId().toLowerCase()).append(TagAttributeValueConstant.Parts.HYPHEN).append(itemInfo.getId().toLowerCase());
		//明細項目はインデックスを追加します。
		if (itemInfo.isListItem()) {
			sb.append(TagAttributeValueConstant.Parts.HYPHEN).append(this.tag.getListIndex());
		}
		return sb.toString();
	}

	/**
	 * アクション情報を設定します。
	 * @param itemInfo
	 * @param attribute
	 */
	private void setActionInfo(FormItemInfo itemInfo, HashMap<String, String> attribute) {
		if (itemInfo.isActionItem()) {
			//有効時はアクションを出力する
			if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_ACTION_ID)) {
				//JSPにアクションIDが設定されていない場合はデフォルトのアクションIDを設定する
				attribute.put(TagAttributeNameConstant.DATA_ACTION_ID, itemInfo.getFormActionId().toLowerCase());
			}

			//アクションのターゲットを設定する。ターゲットが指定されていない場合はHTMLに出さない。
			if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_ACTION_TARGET)) {
				if (itemInfo.getActionInfo() != null && itemInfo.getActionInfo().getTargetBorder() != null) {
					FormBorderType borderType = itemInfo.getActionInfo().getTargetBorder();
					attribute.put(TagAttributeNameConstant.DATA_ACTION_TARGET,
							itemInfo.getOwnerForm().getFormId().toLowerCase() + TagAttributeValueConstant.Parts.HYPHEN_QUADRUPLE
									+ borderType.name().toLowerCase());
				}
			}

			// 明細部アクションの場合
			// 行番号の情報を設定する
			if (itemInfo.isListItem()) {
				if (!this.dynamicAttributes.containsKey(TagAttributeNameConstant.DATA_ACTION_ROW)) {
					attribute.put(TagAttributeNameConstant.DATA_ACTION_ROW, String.valueOf(this.tag.getListIndex()));
				}
			}
		}
	}

	/**
	 * valueで指定された項目が選択されているかどうかを判別します。
	 * @param value 判別する値。フォーマットして渡す必要があります。
	 * @param itemInfo 項目情報
	 * @return true=選択されている、false=選択されていない
	 */
	private boolean isSelectedItem(String value, FormItemInfo itemInfo) {

		//入力値のチェック
		ArgumentValidator.checkNull(value, "value");

		//選択されている項目のリストを取得します。
		ArrayList<Object> selectedValues = HtmlGeneratorUtil.getSelectedValues(itemInfo, this.tag);

		if (selectedValues == null || selectedValues.size() == 0)
			return false;

		if (selectedValues.contains(value))
			return true;

		return false;
	}

	/**
	 * 項目で使用する選択リストの表示データを取得します。 明細行単位で拡張している場合は明細行単位で設定されている選択リストの表示データを取得します。
	 *
	 * @param selectListHolder
	 *            対象の選択リストの表示データ
	 * @return 項目で使用する選択リストの表示データ
	 */
	private SelectableItemCollection getViewList(SelectableListDataHolder selectListHolder) {
		if (!selectListHolder.isSingleData()
				&& selectListHolder.getRowData(this.tag.getListIndex()) != null) {
			return selectListHolder.getRowData(this.tag.getListIndex());
		} else {
			return selectListHolder.getData();
		}
	}
}
