package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.configurations.FrameworkConfig;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.skeletons.inherits.ProgramIds.ProgramRepository;
/**
 * <p>フレームワーク設定の初期化イニシャライザ。</p>
 *
 * フレームワーク設定を初期化するためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class FrameworkConfigInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "フレームワーク設定";
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
		//フレームワーク動作設定です。

		//JavaScriptインラインモード
		FrameworkConfig.setLoadJsInline(false);

		//サーブレット関連の設定
		//ポストされるリクエストの標準文字コード
		FrameworkConfig.setParamConvertFrom("ISO-8859-1");
		//フレームワークがHTML画面を解釈する際の文字コード
		FrameworkConfig.setParamConvertTo("UTF-8");
		//HTTPヘッダのContentType文字列
		FrameworkConfig.setContentType("text/html; charset=UTF-8");
		//バイト数チェックの文字コード
		FrameworkConfig.setCheckByteEncode(StringHelper.SHIFT_JIS_CHARSET);
		//ProgramRepositoryを初期化する
		ProgramRepository.init();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません
	}
}
