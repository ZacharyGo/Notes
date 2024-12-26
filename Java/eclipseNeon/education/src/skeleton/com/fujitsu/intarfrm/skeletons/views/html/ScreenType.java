package com.fujitsu.intarfrm.skeletons.views.html;

/**
 * ブラウザタイプなどを判定するためのenumクラス
 *
 *　@author INTARFRM
 */
public enum ScreenType {

	/**
	 * クライアントがPC用のフルブラウザ
	 */
	FULLBROWSER("0"),

	/**
	 * モバイル用ブラウザ
	 */
	MOBILEBROWSER("1"),

	/**
	 * タブレット用ブラウザ
	 */
	TABLETBROWSER("2");

	private String value;

	/**
	 * コンストラクタ
	 * @param value
	 */
	private ScreenType(String value) {
		this.value = value;
	}

	/**
	 * タイプの値を取得するゲッタ
	 * @return タイプ値
	 */
	public String getValue() {
		return this.value;
	}
}
