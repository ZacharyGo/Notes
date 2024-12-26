package com.fujitsu.intarfrm.skeletons.views.html;

import java.util.HashMap;
import java.util.List;

import com.fujitsu.intarfrm.helpers.views.taglibs.JspUtil;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;

/**
 * タグを作成するための情報を格納するクラスです
 *
 * @author INTARFRM
 */
public class TagElement {

	/**
	 * タグ名
	 */
	private String tagName;

	/**
	 * 属性
	 */
	private HashMap<String, String> attributes;

	/**
	 * ボディ
	 */
	private Object body;

	/**
	 * 本体を閉じた後に付加するタグ情報
	 */
	private List<TagElement> tail;

	/**
	 * 要素を並べる方向
	 */
	private TagDirectionType direction;

	/**
	 * 方向に並べる要素数
	 */
	private int directionElements;

	/**
	 * テーブル化するかどうか。初期値はテーブル化しない。
	 * true=tableを使用してHTML化
	 * false=tableを使用しない
	 */
	private boolean useTable = false;

	/**
	 * 要素の折り返しに自タグを挟むかどうか。初期値は挟まない。
	 * true=自タグを挟む
	 * false=自タグを挟まない
	 */
	private boolean useRepeat = false;

	/**
	 * 要素の折り返しを縦方向に行うかどうか。初期値は行わない。
	 * true=折り返しを縦方向に行う
	 * false=折り返しを横方向に行う
	 */
	private boolean repeatVertical = false;

	/**
	 * テーブルの開始タグ
	 */
	private static final String TABLE_START = "<table class=\"ifm-multicontrol\">";

	/**
	 * テーブルの終了タグ
	 */
	private static final String TABLE_CLOSE = "</table>";

	/**
	 * 行の開始タグ
	 */
	private static final String TR_START = "<tr>";

	/**
	 * 行の終了タグ
	 */
	private static final String TR_CLOSE = "</tr>";

	/**
	 * 列の開始タグ
	 */
	private static final String TD_START = "<td>";

	/**
	 * 列の終了タグ
	 */
	private static final String TD_CLOSE = "</td>";

	/**
	 * ディブの開始タグ
	 */
	private static final String DIV_START = "<div>";

	/**
	 * ディブの開始タグ
	 */
	private static final String DIV_START_VERTICAL = "<div class=\"np-unit-vertical\">";

	/**
	 * ディブの終了タグ
	 */
	private static final String DIV_CLOSE = "</div>";

	/**
	 * コンストラクタ
	 */
	public TagElement() {
		this.direction = TagDirectionType.HORIZONTAL;
		this.attributes = new HashMap<String, String>();
	}

	/**
	 * コンストラクタ
	 * @param tagName タグ名
	 * @param attributes タグの含まれる属性一覧
	 */
	public TagElement(String tagName, HashMap<String, String> attributes) {
		this.tagName = tagName;
		this.attributes = attributes;
		//デフォルトは横並びに出力します
		this.direction = TagDirectionType.HORIZONTAL;
	}

	/**
	 * コンストラクタ
	 * @param tagName タグ名
	 * @param attributes タグの含まれる属性一覧
	 * @param tail 親のタグ
	 */
	public TagElement(String tagName, HashMap<String, String> attributes, List<TagElement> tail) {
		this(tagName, attributes);
		this.tail = tail;
	}

	/**
	 * コンストラクタ
	 * @param tagName
	 * @param attributes
	 * @param body
	 */
	public TagElement(String tagName, HashMap<String, String> attributes, Object body) {
		this(tagName, attributes);
		this.body = body;
	}

	/**
	 * コンストラクタ
	 * @param attributes 属性のHashMap
	 * @param body ボディ（TagElementを入れ子にすることも可）
	 * @param tail 本体を閉じた後に付加するタグ情報
	 */
	public TagElement(String tagName, HashMap<String, String> attributes, Object body, List<TagElement> tail) {
		this(tagName, attributes);
		this.body = body;
		this.tail = tail;
	}

	/**
	 * 属性を設定する
	 * @param attributes 属性群
	 */
	public void setAttributes(HashMap<String, String> attributes) {
		this.attributes = attributes;
	}

	/**
	 * 属性を１つ設定する
	 * @param key キー
	 * @param value 値
	 */
	public void setAttribute(String key, String value) {
		this.attributes.put(key, value);
	}

	/**
	 * ボディを設定します。
	 * String型もしくはList TagElementを設定します。
	 * @param body
	 */
	public void setBody(String body) {
		this.body = body;
	}

	/**
	 * ボディを設定します。
	 * String型もしくはList TagElementを設定します。
	 * @param body
	 */
	public void setBody(List<TagElement> body) {
		this.body = body;
	}

	/**
	 * 後続タグを設定します。
	 * @param tail 後続タグの情報
	 */
	public void setTail(List<TagElement> tail) {
		this.tail = tail;
	}

	/**
	 * 要素をおく方向を設定します
	 * @param type 要素の方向
	 */
	public void setDirection(TagDirectionType type) {
		this.direction = type;
	}

	/**
	 * 方向に置く要素数を設定します
	 * 要素数は呼び出し側でマイナスが入らないように制御する必要があります。
	 * @param value 一つの方向に配置できるコントロールの数
	 */
	public void setDirectionElements(int value) {
		this.directionElements = value;
	}

	/**
	 * テーブルを使用してHTMLを作成するかどうかを設定します。
	 * @param useTable true=テーブルを使用する。false=テーブルを使用しない。
	 */
	public void setUseTable(boolean useTable) {
		this.useTable = useTable;
	}

	/**
	 * 要素の折り返しに自タグを挟むかどうかを設定します。
	 * @param useRepeat true=自タグを挟む。false=自タグを挟まない。
	 */
	public void setUseRepeat(boolean useRepeat) {
		this.useRepeat = useRepeat;
	}

	/**
	 * 要素の折り返しを縦方向に行うかどうかを設定します。
	 * @param repeatVertical true=折り返しを縦方向に行う。false=折り返しを横方向に行う。
	 */
	public void setRepeatVertical(boolean repeatVertical) {
		this.repeatVertical = repeatVertical;
	}
	
	/**
	 * タグを取得します。
	 * @return HTMLタグ
	 */
	protected String getTags() {
		StringBuilder ret = new StringBuilder();
		//bodyを設定する
		if (direction == TagDirectionType.VERTICAL) {
			ret.append(getTagsVertical());
		} else {
			ret.append(getTagsHorizontal());
		}

		//クローズした後にタグを追加する
		if (tail != null) {
			int index = 1;
			for (TagElement current : tail) {
				if (index != 1 && index % directionElements == 1) {
					ret.append(TagGeneratorConstant.BR);
				}
				ret.append(current.getTags());
			}
		}

		return ret.toString();
	}

	/**
	 * タグを取得します。
	 * @return HTMLタグ
	 */
	private String getTag() {
		StringBuilder ret = new StringBuilder();

		if (this.tagName != null) {
			ret.append("<").append(tagName);
			if (this.attributes != null) {
				for (String key : attributes.keySet()) {
					//属性をすべてセットする
					if (attributes.get(key) != null) {
						String val = attributes.get(key);
						if (!key.equals("value")) {
							val = JspUtil.escapeHtml(val);
						}
						ret.append(" ").append(JspUtil.escapeHtml(key)).append("=\"").append(val).append("\"");
					}
				}
			}
			if (this.tagName.equals(TagNameConstant.INPUT)) {
				ret.append("/>");
			} else {
				ret.append(">");
			}
			if (this.tagName == TagNameConstant.TEXTAREA) {
				ret.append("\r\n");
			}
		}

		return ret.toString();
	}

	/**
	 * ボディの文字列を取得します
	 * @return ボディ
	 */
	private String getTagsVertical() {
		boolean repeat = false;

		StringBuilder ret = new StringBuilder();

		//タグ名を取得する
		ret.append(getTag());

		if (useTable) ret.append(TABLE_START);

		if (body instanceof String) {
			if (useTable) ret.append(TR_START).append(TD_START);
			//String型の場合そのまま出力する
			ret.append((String)body);
			if (useTable) ret.append(TD_CLOSE).append(TR_CLOSE);
		} else if (body instanceof List) {
			@SuppressWarnings("unchecked")
			List<TagElement> list = (List<TagElement>) body;
			int elemNum = list.size();
			//軸の要素数を未定義、０が指定された場合、要素数より多いものを定義した場合は要素数に合わせる
			//上記以外は折り返しが発生するためフラグを立てる
			if (this.directionElements == 0 || elemNum < this.directionElements) {
				this.directionElements = elemNum;
			} else if (useRepeat) {
				repeat = true;
				if (!repeatVertical) {
					ret.insert(0, DIV_START);
				} else {
					//折り返し単位が垂直方向になるように属性を付与
					ret.insert(0, DIV_START_VERTICAL);
				}
			}

			for (int row = 0; row < this.directionElements || elemNum < row; row++) {
				if (useTable) ret.append(TR_START).append(TD_START);
				else if (useRepeat && row > 0) ret.append(getTag());
				//表示する項目を順番に出力する
				for (int index = 0; index < elemNum; index++) {
					if (index % this.directionElements == row)
						ret.append(list.get(index).getTags());
				}
				if (useTable) ret.append(TD_CLOSE).append(TR_CLOSE);
				else if (useRepeat && row + 1 >= this.directionElements && elemNum >= row + 1) ret.append("</").append(tagName).append(">");
				else ret.append(TagGeneratorConstant.BR);
			}

		} else if (body != null) {
			throw new SystemErrorException(String.format(TagGeneratorConstant.TAG_ERROR_MESSAGE_001, body.getClass()));
		}
		if (useTable) ret.append(TABLE_CLOSE);

		if (this.tagName != null && !this.tagName.equals(TagNameConstant.INPUT)) {
			ret.append("</").append(tagName).append(">");
		}
		if (repeat) {
			ret.append(DIV_CLOSE);
		}

		return ret.toString();
	}

	/**
	 * 横方向に並んだボディの文字列を取得します
	 * @return ボディ
	 */
	private String getTagsHorizontal() {
		boolean repeat = false;

		StringBuilder ret = new StringBuilder();

		//タグ名を取得する
		ret.append(getTag());

		if (useTable) ret.append(TABLE_START);

		if (body instanceof String) {
			if (useTable) ret.append(TR_START).append(TD_START);
			//String型の場合そのまま出力する
			ret.append((String)body);
			if (useTable) ret.append(TD_CLOSE).append(TR_CLOSE);
		} else if (body instanceof List) {
			//子のタグがある場合は要素数で改行を設定します
			@SuppressWarnings("unchecked")
			List<TagElement> list = (List<TagElement>) body;
			//List型の場合
			int index = 1;
			int elemNum = list.size();
			//軸の要素数を未定義、０以下、要素数より多いものを定義した場合は要素数に合わせる
			//上記以外は折り返しが発生するためフラグを立てる
			if (this.directionElements == 0 || elemNum < this.directionElements) {
				this.directionElements = elemNum;
			} else if (useRepeat) {
				repeat = true;
				if (!repeatVertical) {
					ret.insert(0, DIV_START);
				} else {
					//折り返し単位が垂直方向になるように属性を付与
					ret.insert(0, DIV_START_VERTICAL);
				}
			}

			if (useTable) ret.append(TR_START).append(TD_START);

			for (TagElement current : list) {

				if (useTable) ret.append(current.getTags());
				else ret.append(current.getTags());

				if (index % this.directionElements == 0) {
					if (elemNum != index) {
						//コントロールを出し終わった場合は、次の開始タグをつけない
						if (useTable) ret.append(TD_CLOSE).append(TR_CLOSE).append(TR_START).append(TD_START);
						else if (useRepeat) ret.append("</").append(tagName).append(">").append(getTag());
						else ret.append(TagGeneratorConstant.BR);
					} else if (useTable) ret.append(TD_CLOSE).append(TR_CLOSE);
					else if (useRepeat) ret.append("</").append(tagName).append(">");
				}

				index++;
			}
		} else if (body != null) {
			throw new SystemErrorException(String.format(TagGeneratorConstant.TAG_ERROR_MESSAGE_001, body.getClass()));
		}

		if (useTable) ret.append(TABLE_CLOSE);

		if (this.tagName != null && !this.tagName.equals(TagNameConstant.INPUT)) {
			ret.append("</").append(tagName).append(">");
		}
		if (repeat) {
			ret.append(DIV_CLOSE);
		}

		return ret.toString();
	}
}
