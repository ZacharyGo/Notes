package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.views.taglibs.HtmlGeneratorManager;
import com.fujitsu.intarfrm.skeletons.views.html.HtmlGeneratorSelector;

/**
 * <p>タグ生成セレクタを初期化するイニシャライザ。</p>
 *
 * タグ生成セレクタの初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class HtmlTagInitializer implements ApplicationInitializer {

	/**
	 * タグ生成セレクタを初期化する。
	 */
	@Override
	public void initialize(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		try {
			//デフォルトのセレクタを処理を設定します。
			HtmlGeneratorManager.setInstance(new HtmlGeneratorSelector());
		} catch(Exception e) {
			throw new ApplicationInitializerException("Error is occured during entity initializing process.", e, ApplicationInitializerException.InitializerErrorType.EXECUTE);
		}
	}

	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		HtmlGeneratorManager.releaseSource();
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public boolean isExitOnError() {
		return false;
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "HtmlTagGeneratorSelector Definition";
	}
}
