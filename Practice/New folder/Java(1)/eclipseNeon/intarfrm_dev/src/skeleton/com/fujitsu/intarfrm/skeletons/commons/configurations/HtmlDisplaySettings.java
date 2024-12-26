package com.fujitsu.intarfrm.skeletons.commons.configurations;

import com.fujitsu.intarfrm.helpers.views.taglibs.config.HtmlDisplaySettingBase;

/**
 * HTMLコントロールのスタイル設定を定義するクラスです。
 *
 * @author INTARFRM
 */
public final class HtmlDisplaySettings extends HtmlDisplaySettingBase {
	/**
	 * シングルトンインスタンス
	 */
	public static final HtmlDisplaySettings ITEM = new HtmlDisplaySettings();

	/**
	 * コンストラクタ
	 */
	private HtmlDisplaySettings() {
	}

	/**
	 * HTMLコントロールのスタイル定義を初期化します。
	 */
	public void initialize() {

		//明細情報表示設定
		super.getListInfoKeys().setInfoKey("listInfo");
		super.getListInfoKeys().setNoRecordKey("listNoRecord");

		//debugInfoタグの出力設定
		super.setOutputDebugTag(true);
	}
}
