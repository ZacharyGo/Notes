package com.fujitsu.intarfrm.skeletons.views.html;

/**
 * コントロールを配置する方向を定義する列挙型
 *
 * @author INTARFRM
 */
public enum TagDirectionType {

	/**
	 * 横方向（デフォルト）
	 */
	HORIZONTAL (1),
	/**
	 * 縦方向
	 */
	VERTICAL (2);
	
	/**
	 * 値
	 */
	private int value;

	/**
	 * コンストラクタ
	 */
	private TagDirectionType(int value) {
		this.value = value;
	}
	
	/**
	 * 値を取得する
	 * @return 値
	 */
	public int getValue() {
		return this.value;
	}
}
