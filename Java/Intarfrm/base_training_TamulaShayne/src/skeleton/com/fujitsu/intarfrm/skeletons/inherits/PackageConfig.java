package com.fujitsu.intarfrm.skeletons.inherits;

import com.fujitsu.intarfrm.helpers.commons.configurations.AppConfig;

/**
 * プロジェクト設定に指定されたパッケージ名をアプリケーションに反映するクラスです。
 * 
 * @author INTARFRM
 */
public class PackageConfig {
	/**
	 * コンストラクタ
	 */
	public PackageConfig() {
        //何もしません。
	}
	
	/**
	 * パッケージ名を設定保持クラスに設定します。
	 */
	public void initialize() {
		String packageName = "com.fujitsu.intarfrm";
		AppConfig.put(AppConfig.APP_PACKAGE, packageName);
	}
}
