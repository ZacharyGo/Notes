package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

/**
 * コードドロップダウンコマンドの実行コンテキスト
 * 
 * @author INTARFRM
 */
public class CodeDropdownContext {
	/**
	 * コードが関連付けられているボタンの表示行インデックス
	 */
	private int displayRowIndex;

	/**
	 * コンストラクタ
	 */
	public CodeDropdownContext() {
	}

	/**
	 * 表示行インデックスを指定するコンストラクタ
	 * @param displayRowIndex 表示行インデックス
	 */
	public CodeDropdownContext(int displayRowIndex) {
		this.displayRowIndex = displayRowIndex;
	}

	/**
	 * 表示行インデックスを取得する
	 * @return 表示行インデックス
	 */
	public int getDisplayRowIndex() {
		return this.displayRowIndex;
	}
}
