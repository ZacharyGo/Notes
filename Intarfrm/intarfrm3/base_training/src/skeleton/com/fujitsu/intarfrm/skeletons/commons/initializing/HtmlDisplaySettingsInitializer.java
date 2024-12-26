package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.skeletons.commons.configurations.HtmlDisplaySettings;

/**
 * <p>HTMLコントロールのスタイル設定を初期化するイニシャライザ。</p>
 * 
 * HTMLコントロールのスタイル設定の初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 * 
 * @author INTARFRM
 */
public class HtmlDisplaySettingsInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "HTMLコントロールスタイル定義";
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public boolean isExitOnError() {
		return true;
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public void initialize(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//初期化処理
		
		//HTMLコントロールのスタイル設定
		HtmlDisplaySettings.ITEM.initialize();
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません		
	}
}
