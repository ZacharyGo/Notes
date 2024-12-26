package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkFilterCollection;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkFilterManager;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.afterFilters.SessionRemoveFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.BrowserCheckFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.CacheControlFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.HttpSessionCheckFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.InvalidActionCheckFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.SessionCheckFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.SessionLoadFilter;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionFilters.preFilters.SetViewTypeFilter;

/**
 * <p>フレームワークフィルターの初期化イニシャライザ。</p>
 *
 * フレームワークフィルターを初期化するためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class FrameworkFilterInilizer implements ApplicationInitializer{

	/**
	 * フレームワークフィルターを初期化する。
	 */
	@Override
	public void initialize(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {

		// フレームワークフィルターの前処理を初期化する
		this.initializePreCollection();
		// フレームワークフィルターの後処理を初期化する
		this.initializeAfterCollection();
	}

	/**
	 * フレームワークフィルターの前処理を初期化する。
	 */
	private void initializePreCollection() {
		// フレームワークフィルターのコレクションを取得する
		FrameworkFilterCollection col = FrameworkFilterManager.getInstance().getPreCollection();

		// HTTPセッションをチェックする処理を追加する
		col.add(new HttpSessionCheckFilter());
		// レスポンスヘッダにCacheContrilを追加する処理を追加する
		col.add(new CacheControlFilter());
		// コンテキストにviewTypeを設定する処理を追加する
		col.add(new SetViewTypeFilter());
		// ブラウザをチェックする処理を追加する
		col.add(new BrowserCheckFilter());
		// 仮想セッションを取得する処理を追加する
		col.add(new SessionLoadFilter());
		// 仮想セッションをチェックする処理を追加する
		col.add(new SessionCheckFilter());
		// 実行するアクションコントローラをチェックする処理を追加する
		col.add(new InvalidActionCheckFilter());
	}

	/**
	 * フレームワークフィルターの後処理を初期化する。
	 */
	private void initializeAfterCollection() {
		// フレームワークフィルターのコレクションを取得する
		FrameworkFilterCollection col = FrameworkFilterManager.getInstance().getAfterCollection();

		// 仮想セッションを削除する処理を追加する
		col.add(new SessionRemoveFilter());
	}

	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		FrameworkFilterManager.releaseSource();
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
		return "FrameworkFilter Definition";
	}
}
