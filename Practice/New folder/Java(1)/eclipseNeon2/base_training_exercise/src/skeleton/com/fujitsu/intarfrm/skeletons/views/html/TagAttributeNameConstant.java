package com.fujitsu.intarfrm.skeletons.views.html;

/**
 * 属性名の定数クラス。
 *
 * @author INTARFRM
 */
public class TagAttributeNameConstant {
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
	 * href属性
	 */
	static final String HREF = "href";

	/**
	 * body属性
	 */
	static final String BODY = "body";

	/**
	 * data-action-id属性。
	 * アクションを実行する場合に定義します。
	 */
	static final String DATA_ACTION_ID = "data-action-id";

	/**
	 * data-action-target属性。
	 * アクションの対象範囲を指定する場合に定義します。
	 */
	static final String DATA_ACTION_TARGET = "data-action-target";

	/**
	 * data-action-row属性
	 * 明細行アクションの場合に定義します。
	 */
	static final String DATA_ACTION_ROW = "data-action-row";

	/**
	 * data-action-get-param属性。
	 * GET方式でデータ送信する場合に定義します。
	 */
	static final String DATA_ACTION_GET_PARAM = "data-action-get-param";

	/**
	 * data-action-get-param属性。
	 * GET方式でデータ送信する場合に定義します。
	 */
	static final String DATA_ACTION_GET_ARGS = "data-action-get-args";


	/**
	 * data-action-post-param属性。
	 * POST方式でデータ送信する場合に定義します。
	 */
	static final String DATA_ACTION_POST_PARAM = "data-action-post-param";

	/**
	 * data-code-type属性。
	 * コード参照のタイプを指定します。
	 * TagAttributeValueConstantクラスの以下の定数を使用できます。
	 * CODE_TYPE_COD、CODE_TYPE_COG、CODE_TYPE_DRL、CODE_TYPE_CHECK。
	 */
	static final String DATA_CODE_TYPE = "data-code-type";

	/**
	 * data-type属性。
	 */
	static final String DATA_TYPE = "data-type";

	/**
	 * data-role属性。
	 */
	static final String DATA_ROLE = "data-role";

	/**
	 * data-mini属性
	 */
	static final String DATA_MINI = "data-mini";

	/**
	 * readonly属性
	 */
	static final String READ_ONLY = "readonly";

	/**
	 * checked属性。
	 * 選択項目で、項目が選択されている場合に使用します。
	 */
	static final String CHECKED = "checked";

	/**
	 * for属性。
	 * コンディション項目のラベルに使用します。
	 */
	static final String FOR = "for";

	/**
	 * disabled属性。
	 * 無効状態のラジオボタン、チェックボックスコントロールに使用します。
	 */
	static final String DISABLED = "disabled";

	/**
	 * value属性。
	 * タグの属性に表示文字列や選択された場合の値を持たせるために使用します。
	 */
	static final String VALUE = "value";

	/**
	 * multiple属性。
	 * 複数選択可能なコントロールの場合定義します。
	 */
	static final String MULTIPLE = "multiple";

	/**
	 * selected属性。
	 * 選択項目で、項目が選択されている場合に使用します。
	 */
	static final String SELECTED = "selected";

	/**
	 * item-direction属性。
	 * チェックボックスリストやラジオボタンなど複数タグを出力するコントロールの並び順を指定します。
	 * vertical = 縦、 horizontal = 横。
	 * 定義しない場合は、横並びで表示されます。
	 */
	static final String ITEM_DIRECTION = "item-direction";

	/**
	 * item-num-direction属性。
	 * item-direction属性で定義した方向にへの最大表示件数を指定します。
	 * 数値として認識できる値を設定する必要があります。
	 * 設定しない、もしくは数値以外が設定されている場合は改行しません。
	 */
	static final String ITEM_NUM_DIRECTION = "item-num-direction";

	/**
	 * style属性。
	 * ページャの「...」に使用します。
	 */
	static final String STYLE = "style";

	/**
	 * プレースホルダ属性。
	 */
	static final String PLACEHOLDER = "placeholder";

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
	 * pageSize属性。
	 * ページャの横に並べるページャ数を設定します。
	 */
	static final String PAGER_SIZE ="pagerSize";

	/**
	 * listId属性。
	 * 明細IDを設定します。
	 */
	static final String LIST_ID = "listId";

	/**
	 * displayRowCount属性。
	 * 明細の表示行数を設定します。
	 */
	static final String DISPLAY_ROW_COUNT = "displayRowCount";
}
