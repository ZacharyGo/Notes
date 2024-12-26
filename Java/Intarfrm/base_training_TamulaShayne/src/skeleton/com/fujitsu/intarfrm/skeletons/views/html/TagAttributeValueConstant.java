package com.fujitsu.intarfrm.skeletons.views.html;

/**
 * タグの属性が取り得る値の定数クラス
 *
 * @author INTARFRM
 */
public class TagAttributeValueConstant {

	/**
	 * href属性のjavascriptデフォルト値
	 */
	static final String HREF_DEFAULT = "javascript:void(0)";

	/**
	 * 有効モード。
	 * class属性に使用できます。
	 */
	static final String IFM_MODE_ENABLE = "ifm-mode-enable";

	/**
	 * 無効モード。
	 * class属性に使用できます。
	 */
	static final String IFM_MODE_DISABLE = "ifm-mode-disable";

	/**
	 * 非表示モード。
	 * class属性に使用できます。
	 */
	static final String IFM_MODE_NONCONTROL = "ifm-mode-noncontrol";

	/**
	 * 必須項目のCSS
	 * class属性に使用できます。
	 */
	static final String IFM_REQUIRED = "ifm-required";

	/**
	 * ページャ
	 */
	static final String IFM_PAGENATION = "ifm-pagenation";

	/**
	 * ページャボタン
	 */
	static final String IFM_PAGENATION_BTN = "ifm-pagenation-btn";

	/**
	 * ページャ（前へ）
	 */
	static final String IFM_PAGENATION_PREV = "ifm-pagenation-prev";

	/**
	 * ページャ（次へ）
	 */
	static final String IFM_PAGENATION_NEXT = "ifm-pagenation-next";

	/**
	 * ページャ無効
	 */
	static final String IFM_STATE_DISABLED = "ifm-state-disabled";

	/**
	 * 現在のページ用ページャCSS
	 */
	static final String IFM_PAGENATION_PAGE_CURRENT = "ifm-pagenation-page-current";

	/**
	 * ...用CSS
	 */
	static final String IFM_PAGENATION_TRUNCATE = "ifm-pagenation-truncate";

	/**
	 * コントロールタイプ(text)。
	 * inputタグのtype属性に使用できます。
	 */
	static final String TYPE_TEXT = "text";

	/**
	 * コントロールタイプ(password)。
	 * inputタグのtype属性に使用できます。
	 */
	static final String TYPE_PASSWORD = "password";

	/**
	 * コントロールタイプ(hidden)。
	 * inputタグのtype属性に使用できます。
	 */
	static final String TYPE_HIDDEN = "hidden";

	/**
	 * コントロールタイプ(file)。
	 * inputタグのtype属性に使用できます。ファイルアップロードをする場合に使用します。
	 */
	static final String TYPE_FILE = "file";

	/**
	 * コントロールタイプ(button)。
	 * buttonタグのtype属性に使用できます。
	 */
	static final String TYPE_BUTTON = "button";

	/**
	 * コントロールタイプ(submit)。
	 * buttonタグのtype属性に使用できます。
	 */
	static final String TYPE_SUBMIT = "submit";

	/**
	 * コントロールタイプ(reset)。
	 * buttonタグのtype属性に使用できます。
	 */
	static final String TYPE_RESET = "reset";

	/**
	 * コントロールタイプ(checkbox)。
	 * inputタグのtype属性に使用できます。
	 */
	static final String TYPE_CHECKBOX = "checkbox";

	/**
	 * コントロールタイプ(radio)。
	 * labelタグのtype属性に使用できます。
	 */
	static final String TYPE_RADIO = "radio";

	/**
	 * 属性値true。
	 */
	static final String TRUE = "true";

	/**
	 * 属性値false。
	 */
	static final String FALSE = "false";

	/**
	 * コントロールを縦方向に並べます。
	 * item-direction属性に使用できます。
	 */
	static final String VERTICAL = "vertical";

	/**
	 * コントロールを横方向に並べます。
	 * item-direction属性に使用できます。
	 */
	static final String HORIZONTAL = "horizontal";

	/**
	 * グループ化されたコントロールの属性値です。
	 * ページャのdata-role属性に使用できます。
	 */
	static final String CONTROL_GROUP = "controlgroup";

	/**
	 * 選択されているときの値。
	 * selected属性に使用できます。
	 */
	static final String SELECTED_VALUE = "1";

	/**
	 * 数値判別用正規表現。
	 */
	static final String NUMBER_FILTER = "[0-9]+";

	/**
	 * 選択されているときの値。
	 * checked属性に使用できます。
	 */
	static final String CHECKED = "checked";

	/**
	 * 選択されているときの値。
	 * selected属性に使用できます。
	 */
	static final String SELECTED = "selected";

	/**
	 * 無効状態の値。
	 * disabled属性に使用できます。
	 */
	static final String DISABLED = "disabled";

	/**
	 * 読み取り専用の値。
	 * readonly属性に使用できます。
	 */
	static final String READ_ONLY = "readonly";

	/**
	 * 複数選択可能。
	 */
	static final String MULTIPLE = "multiple";

	/**
	 * 表示を隠す。
	 * style属性に使用できます。
	 */
	static final String VISIBILITY_HIDDEN = "visibility:hidden";

	/**
	 * 昇順ソートの場合のCSSを指定します。
	 * 明細標題に使用できます。
	 */
	static final String SORTING_ASC = "ifm-sorting-asc";

	/**
	 * 降順ソートの場合のCSSを指定します。
	 * 明細標題に使用できます。
	 */
	static final String SORTING_DESC = "ifm-sorting-desc";

	/**
	 * ソート可能項目のCSSを指定します。
	 * 明細標題に使用できます。
	 */
	static final String SORTING_SORTABLE = "ifm-sorting-sortable";

	/**
	 * アクティブボタンのCSSを指定します。
	 */
	static final String UI_BTN_ACTIVE = "ui-btn-active";

	/**
	 * コード参照のアクションID。
	 */
	static final String CODE_REFERENCE = "_code_reference";

	/**
	 * コード参照タイプ「コード参照」を指定します。
	 */
	static final String CODE_TYPE_COD = "cod";

	/**
	 * コード参照タイプ「コード取得」を指定します。
	 */
	static final String CODE_TYPE_COG = "cog";

	/**
	 * コード参照タイプ「コード参照DRL」を指定します。
	 */
	static final String CODE_TYPE_DRL = "drl";

	/**
	 * コード参照タイプ「コードチェック」を指定します。
	 */
	static final String CODE_TYPE_CHECK = "check";

	/**
	 * タグの属性値の元となるパーツクラス
	 */
	public class Parts {

		/**
		 * ハイフン
		 */
		static final String HYPHEN = "-";

		/**
		 * ２連ハイフン
		 */
		static final String HYPHEN_DOUBLE = "--";

		/**
		 * ３連ハイフン
		 */
		static final String HYPHEN_TRIPLE = "---";

		/**
		 * ４連ハイフン
		 */
		static final String HYPHEN_QUADRUPLE = "----";

		/**
		 * コード名の接頭文字列
		 */
		static final String CODE_NAME_PREFIX = "code--";

		/**
		 * 結果パートの接尾文字列
		 */
		static final String RESULT_PART_POSTFIX = "----search_result_part";

		/**
		 * ソートキー
		 */
		static final String SORTKEYS = "&sortKeys=";

		/**
		 * クエリストリングのプラス文字
		 */
		static final String QUERY_PLUS = "+";

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

		/**
		 * ソート開始行指定のクエリストリング
		 */
		static final String QUERY_NAME_START ="start=";

		/**
		 * アクションタイプ指定のクエリストリング
		 */
		static final String QUERY_NAME_ACTIONTYPE = "actionType=";

		/**
		 * アンダースコア
		 */
		static final String UNDERSCORE = "_";

		/**
		 * ソートIDの接尾文字列
		 */
		static final String SORT_ID_POSTFIX = "_sorting";

		/**
		 * ページングIDの接尾文字列
		 */
		static final String PAGING_ID_POSTFIX = "_paging";

		/**
		 * ページングアクション
		 */
		static final String PAGING = "paging";

		/**
		 * ページ番号のクエリストリング
		 * ページャで使用できます。
		 */
		static final String QUERY_NAME_PAGENO = "pageNo=";
	}
}
