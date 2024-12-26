package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.skeletons.inherits.PackageConfig;

/**
 * <p>自動生成アプリケーションのパッケージ設定の初期化イニシャライザ。</p>
 * 
 * 自動生成アプリケーションのパッケージ設定を初期化するためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 * 
 * @author INTARFRM
 */
public class ApplicationPackageInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "アプリケーションパッケージ設定";
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
		PackageConfig config = new PackageConfig();
		config.initialize();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません		
	}
}
