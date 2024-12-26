
package com.fujitsu.intarfrm.programs.practice3;

/**
 * <p>アプリケーション内部で使用するキー情報を設定するためのクラスです。</p>
 * 
 * @author INTARFRM
 */
public final class Practice3Constants {

    /**
	 * キーの接頭辞
	 */
	// ADD START---------------------------------------------------
	private static final String PREFIX = "PRACTICE3";
	// ADD END-----------------------------------------------------
	
	/**
	 * 業務でプログラム共通のデータを仮想セッションに保持するためのキーを保持するクラスです。
	 *
	 * サンプル：キーを定義するときは下記のように記述します。<br>
	 * public static final String [キーのフィールド名] = Key + [キー名]
	 */
	public static class VirtualSessionKey {
		// ADD START---------------------------------------------------
		// 顧客名を管理するキー			Key to manage customer name 
		public static final String CUSNAME = PREFIX + "CUSNAMEKEY";
		public static final String TESTKEY = "MYKEY";
		// ADD END-----------------------------------------------------
	}
	
	/**
	 * 各Contextの値を取得/設定する際のキーを保持するクラスです。
	 * プログラム内で各コンテキストに値を取得/設定する時はこのクラスにキーを定義してください。
	 * 
	 * サンプル：キーを定義するときは下記のように記述します。<br>
	 * public static final String [キーのフィールド名] = Key + [キー名]
	 */
	public static class ContextMapKey {
		// サンプル
		//public static final String TEST = PREFIX + "TEST"; // ZG Uncomment Codes (20211208) 
	}
}