package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

import java.io.Serializable;
import java.util.ArrayList;

import com.fujitsu.intarfrm.helpers.commons.codes.CodeKey;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeKeyElement;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeSortKey;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchType;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.IfmCollection;

/**
 * コード検索のコンテキスト
 *
 * @author INTARFRM
 */
public class CodeSearchContext implements Serializable {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 言語情報
	 */
	private LanguageInfo language;

	/**
	 * コードの検索条件リスト
	 */
	private ArrayList<CodeSearchCondition> searchConditions;

	/**
	 * コード画面のソートキーリスト
	 */
	private IfmCollection<CodeSortKey> sortKeys;

	/**
	 * コンストラクタ
	 */
	public CodeSearchContext() {
		this.searchConditions = new ArrayList<CodeSearchCondition>();
		this.sortKeys = new IfmCollection<CodeSortKey>();
	}

	/**
	 * コンストラクタ（コードキーの検索条件を設定する）
	 * @param codeKey コードキー
	 */
	public CodeSearchContext(CodeKey codeKey) {
		this();
		for (CodeKeyElement item : codeKey.values()) {
			this.searchConditions.add(new CodeSearchCondition(
					item.getColumnName(), CodeSearchType.EQUAL, item.getValue(), item.getType().getConverter().getSqlType()));
		}
	}

	/**
	 * 言語情報を取得する
	 * @return 言語情報
	 */
	public LanguageInfo getLanguage() {
		return this.language;
	}

	/**
	 * 言語情報を設定する
	 * @param language 言語情報
	 */
	public void setLanguage(LanguageInfo language) {
		this.language = language;
	}

	/**
	 * コードの検索条件リストを取得する
	 * @return コードの検索条件リスト
	 */
	public ArrayList<CodeSearchCondition> getSearchConditions() {
		return this.searchConditions;
	}

	/**
	 * コード画面のソートキーリストを取得する
	 * @return コード画面のソートキーリスト
	 */
	public ArrayList<CodeSortKey> getSortKeys() {
		return this.sortKeys;
	}

	/**
	 * コード画面のソートキーを設定する
	 * @param sortKeys コード画面のソートキーの配列
	 */
	public void setSortKeys(Iterable<CodeSortKey> sortKeys) {
		this.sortKeys.clear();
		for (CodeSortKey item : sortKeys) {
			this.sortKeys.add(item);
		}
	}
}
