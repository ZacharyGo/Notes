package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.framework.BrowserCheckException;
import com.fujitsu.intarfrm.helpers.commons.framework.CommandErrorHandler;
import com.fujitsu.intarfrm.helpers.commons.framework.CommandNotFoundException;
import com.fujitsu.intarfrm.helpers.commons.framework.SessionInvalidatedException;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.skeletons.commons.errorhandling.BrowserCheckHandle;
import com.fujitsu.intarfrm.skeletons.commons.errorhandling.CommandNotFoundHandle;
import com.fujitsu.intarfrm.skeletons.commons.errorhandling.ExceptionHandle;
import com.fujitsu.intarfrm.skeletons.commons.errorhandling.SessionInvalidatedHandle;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;

/**
 * <p>例外クラスのハンドリング定義の初期化イニシャライザ。</p>
 * 
 * 例外クラスのハンドリング定義を初期化するためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 * 
 * @author INTARFRM
 */
public class ErrorMappingInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "例外ハンドリング設定";
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

		//例外ハンドラは指定した例外の順に実際に発生した例外と比較します。
		//そのため、例外の継承関係や設定順序に矛盾が発生しないようにハンドラを設定して下さい。
		
		//指定したコマンドが見つからない場合の制御
		CommandErrorHandler.getInstance().addHandler(CommandNotFoundException.class, CommandNotFoundHandle.class);
		//セッションが無効になった場合の制御
		CommandErrorHandler.getInstance().addHandler(SessionInvalidatedException.class, SessionInvalidatedHandle.class);
		//許可されていないブラウザからアクセスされた場合の制御
		CommandErrorHandler.getInstance().addHandler(BrowserCheckException.class, BrowserCheckHandle.class);
		//システムエラーの場合の制御
		CommandErrorHandler.getInstance().addHandler(SystemErrorException.class, ExceptionHandle.class);

		//予期せぬ例外が発生した場合の制御
		//全ての例外を例外処理に引き渡せるようにThrowableに対してのハンドラは常に設定して下さい。
		CommandErrorHandler.getInstance().addHandler(Throwable.class, ExceptionHandle.class);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません		
	}
}
