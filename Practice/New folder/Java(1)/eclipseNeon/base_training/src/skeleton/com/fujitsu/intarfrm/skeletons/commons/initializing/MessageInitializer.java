package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;

/**
 * <p>メッセージ情報の初期化イニシャライザ。</p>
 * 
 * メッセージ情報の初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 * 
 * @author INTARFRM
 */
public class MessageInitializer implements ApplicationInitializer {

	/**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "メッセージ定義";
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public boolean isExitOnError() {
		return true;
	}
	
	@Override
	public void initialize(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//属性情報の初期化
		MessageInfos.ITEM.initialize();
	}

	@Override
	public void destroy(ServletContextEvent servletContextEvent)
			throws ApplicationInitializerException {
		// なにもしません
		
	}
}