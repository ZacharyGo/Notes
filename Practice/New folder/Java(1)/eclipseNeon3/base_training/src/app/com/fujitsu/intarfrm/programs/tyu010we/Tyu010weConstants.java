
package com.fujitsu.intarfrm.programs.tyu010we;

/**
 * <p>アプリケーション内部で使用するキー情報を設定するためのクラスです。</p>
 * 
 * @author INTARFRM
 */
public final class Tyu010weConstants {

    /**
	 * キーの接頭辞
	 */
	//private static final String PREFIX = "TYU010WE";
	 //ZSG-C 20211019 (Start)
	private static final String PREFIX = "TYU010WE";
	public static final String EDIT_MODE = "edit";
	public static final String ADD_MODE = "add";
	public static final String STOREID = "storeId";
	public static final String STORENAME = "storeName";
	public static final String STOREID_VALUE = "A001";
	public static final String CUSID = "cusID";
//	public static final String ROW_INDEX = "rowIndex";
	public static final String ROW_INDEX = "rowNo";
	//ZSG-C 20211019 (End)
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
		 //ZSG-C 20211019 (Start)
		public static String MODE = PREFIX + EDIT_MODE;
		public static final String CUSTOMERID = PREFIX + CUSID;
		//ZSG-C 20211019 (End)

	}
}