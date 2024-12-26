package com.fujitsu.intarfrm.skeletons.np;

public class NpAttributesConstent {
	/**
	 * HTML上の項目ID
	 */
	static final String ID = "id";

	/**
	 * name属性
	 */
	static final String NAME = "name";

	/**
	 * type属性
	 */
	static final String TYPE = "type";

	/**
	 * class属性
	 */
	static final String CLASS = "class";

	/**
	 * ページャ
	 */
	static final String PAGER = "pager";
	
	/**
	 * divタグ
	 */
	static final String DIV = "div";
	
	/**
	 * pageNo属性。
	 * ページャのページ番号に使用します。
	 */
	static final String PAGE_NO = "pageNo";

	/**
	 * pageCount属性。
	 * 明細のページ数を指定します。
	 */
	static final String PAGE_COUNT = "pageCount";

	/**
	 * listId属性。
	 * 明細IDを設定します。
	 */
	static final String LIST_ID = "listId";
	
	/**
	 * form
	 */
	static final String FORM = "form";
	
	/**
	 * code
	 */
	static final String CODE = "code";

	/**
	 * 必須項目のCSS
	 * class属性に使用できます。
	 */
	public static final String NP_REQUIRED = "np-require";

	/**
	 * 昇順ソートの場合のCSSを指定します。
	 * 明細標題に使用できます。
	 */
	public static final String SORTING_ASC = "np-list-order-asc";

	/**
	 * 降順ソートの場合のCSSを指定します。
	 * 明細標題に使用できます。
	 */
	public static final String SORTING_DESC = "np-list-order-desc";

	/**
	 * displayRowCount属性。
	 * 明細の表示行数を設定します。
	 */
	static final String DISPLAY_ROW_COUNT = "displayRowCount";
	
	/**
	 * data-np-pager-type属性。
	 * ページャタイプ
	 */
	static final String DATA_NP_PAGER_TYPE = "data-np-pager-type";
	
	/**
	 * data-np-pager-listid属性。
	 * 明細ID
	 */
	static final String DATA_NP_PAGER_LISTID = "data-np-pager-listid";

	/**
	 * data-np-pager-total属性。
	 * 明細のページ数
	 */
	static final String DATA_NP_PAGER_TOTAL = "data-np-pager-total";
	
	/**
	 * data-np-pager-enabled属性。
	 * 表示状態
	 */
	static final String DATA_NP_PAGER_ENABLED = "data-np-pager-enabled";
	
	/**
	 * data-np-pager-currentno属性。
	 * 表示するページ番号
	 */
	static final String DATA_NP_PAGER_CURRENTNO = "data-np-pager-currentno";
	
	/**
	 * data-np-pager-rowcount属性。
	 * 1ページ当りの表示件数
	 */
	static final String DATA_NP_PAGER_ROWCOUNT = "data-np-pager-rowcount";
	
	/**
	 * data-np-pager-codeid属性。
	 * コードID
	 */
	static final String DATA_NP_PAGER_CODEID = "data-np-pager-codeid";
	
	/**
	 * data-np-pager-getargs属性。
	 * コードID
	 */
	static final String DATA_NP_PAGER_GETARGS = "data-np-pager-getargs";
	
	/**
	 * 項目のクエリストリング
	 */
	static final String QUERY_NAME_ITEM = "__item=";
	
	/**
	 * 行のクエリストリング
	 */
	static final String QUERY_NAME_ROW = "__row=";

	/**
	 * クエリストリングのアンパサンド
	 */
	static final String QUERY_AMPERSAND = "&";
}
