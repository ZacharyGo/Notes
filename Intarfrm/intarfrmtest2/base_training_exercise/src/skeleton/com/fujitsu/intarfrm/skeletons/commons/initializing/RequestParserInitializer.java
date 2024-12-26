package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.beans.parsers.ParameterTrimMode;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.RequestParameterDataParser;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.databinders.CheckboxRequestParameterDataBinder;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.databinders.RequestParameterDataBinderBase;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.databinders.SelectableItemRequestParameterDataBinder;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.databinders.SimpleRequestParameterDataBinder;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;

/**
 * <p>HTTPリクエストから取得した値をフォームデータに設定するパーサー初期化イニシャライザ。</p>
 *
 * HTTPリクエストから取得した値の設定方法を初期化するためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class RequestParserInitializer implements ApplicationInitializer {

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "HTTPリクエストデータパーサー設定";
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

		//HTTPリクエストのパラメータ値のトリム方法を設定します。
		RequestParameterDataParser.setTrimMode(ParameterTrimMode.HALF_SPACE_ONLY);

		//各入力コントロールのデータバインダを設定します。

		//既定の制御
		RequestParameterDataBinderBase defaultBinder = new SimpleRequestParameterDataBinder();
		//TXT
		ItemControl.TXT.setDataBinder(defaultBinder);
		//TX2
		ItemControl.TX2.setDataBinder(defaultBinder);
		//TXR
		ItemControl.TXR.setDataBinder(defaultBinder);
		//PWD
		ItemControl.PWD.setDataBinder(defaultBinder);
		//ETC
		ItemControl.ETC.setDataBinder(defaultBinder);
		//FUP
		ItemControl.FUP.setDataBinder(defaultBinder);
		//HDN
		ItemControl.HDN.setDataBinder(defaultBinder);

		//チェックボックス項目
		RequestParameterDataBinderBase chkBinder = new CheckboxRequestParameterDataBinder();
		//CHK
		ItemControl.CHK.setDataBinder(chkBinder);

		// 選択項目
		RequestParameterDataBinderBase selectBinder = new SelectableItemRequestParameterDataBinder();
		//CHL
		ItemControl.CHL.setDataBinder(selectBinder);
		//RDO
		ItemControl.RDO.setDataBinder(selectBinder);
		//LST
		ItemControl.LST.setDataBinder(selectBinder);
		//DRL
		ItemControl.DRL.setDataBinder(selectBinder);

		//バインダ設定チェック
		ItemControl.validateInitialize();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません
	}
}
