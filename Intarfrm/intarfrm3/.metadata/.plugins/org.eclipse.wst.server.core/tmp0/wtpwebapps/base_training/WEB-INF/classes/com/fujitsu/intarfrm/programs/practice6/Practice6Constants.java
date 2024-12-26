
package com.fujitsu.intarfrm.programs.practice6;

/**
 * <p>アプリケーション内部で使用するキー情報を設定するためのクラスです。</p>
 * 
 * @author INTARFRM
 */
public final class Practice6Constants {

    /**
	 * キーの接頭辞
	 */
	//private static final String PREFIX = "PRACTICE6";
	
	/**
	 * 業務でプログラム共通のデータを仮想セッションに保持するためのキーを保持するクラスです。
	 *
	 * サンプル：キーを定義するときは下記のように記述します。<br>
	 * public static final String [キーのフィールド名] = Key + [キー名]
	 */
	public static class VirtualSessionKey {
		// サンプル
		//public static final String TEST = PREFIX + "TEST";
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
		//public static final String TEST = PREFIX + "TEST";
	}
}