
package com.fujitsu.intarfrm.programs.practice1;

/**
 * <p>アプリケーション内部で使用するキー情報を設定するためのクラスです。</p>
 * 
 * @author INTARFRM
 */
public final class Practice1Constants {

    /**
	 * キーの接頭辞
	 */
	private static final String PREFIX = "PRACTICE1"; //ZG (20211207) Uncomment
	
	/**
	 * 業務でプログラム共通のデータを仮想セッションに保持するためのキーを保持するクラスです。
	 * It is a class that holds the key to hold the data common to the program in the business in the virtual session.
	 *
	 * サンプル：キーを定義するときは下記のように記述します。<br>
	 * public static final String [キーのフィールド名] = Key + [キー名]
	 * Sample: When defining the key, write as follows. <br>
	 * public static final String [key field name] = Key + [key name]
	 */
	public static class VirtualSessionKey {
		// サンプル
		public static final String TEST = PREFIX + "TEST";//ZG (20211207) Uncomment
	}
	
	/**
	 * 各Contextの値を取得/設定する際のキーを保持するクラスです。
	 * プログラム内で各コンテキストに値を取得/設定する時はこのクラスにキーを定義してください。
	 * * A class that holds the key when getting / setting the value of each Context.
	 * When getting / setting a value for each context in the program, define a key in this class.
	 * 
	 * サンプル：キーを定義するときは下記のように記述します。<br>
	 * public static final String [キーのフィールド名] = Key + [キー名]
	 * * Sample: When defining the key, write as follows. <br>
	 * public static final String [key field name] = Key + [key name]
	 */
	public static class ContextMapKey {
		// サンプル
		public static final String TEST = PREFIX + "TEST";//ZG (20211207) Uncomment
	}
}