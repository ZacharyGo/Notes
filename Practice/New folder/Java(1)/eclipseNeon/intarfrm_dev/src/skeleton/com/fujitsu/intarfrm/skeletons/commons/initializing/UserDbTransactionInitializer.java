package com.fujitsu.intarfrm.skeletons.commons.initializing;

import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;

/**
 * <p>メッセージ情報の初期化イニシャライザ。</p>
 *
 * メッセージ情報の初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class UserDbTransactionInitializer implements ApplicationInitializer {

	/**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "ユーザコネクション定義";
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
	}

	@Override
	public void destroy(ServletContextEvent servletContextEvent)
			throws ApplicationInitializerException {
		// なにもしません
		Enumeration<Driver> drivers = DriverManager.getDrivers();
		while( drivers.hasMoreElements() ){
		    Driver driver = drivers.nextElement();
		    try {
				DriverManager.deregisterDriver(driver);
			} catch (SQLException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
		}
	}
}