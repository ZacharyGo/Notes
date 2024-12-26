package com.fujitsu.intarfrm.skeletons.commons.initializing;

import javax.servlet.ServletContextEvent;

import com.fujitsu.intarfrm.helpers.commons.resources.AttributeResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.AttributeResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.CodeResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.CodeResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.ConditionResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.FileResourceReaderHelper;
import com.fujitsu.intarfrm.helpers.commons.resources.FormResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.MessageResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.ProjectCommonResourceReader;
import com.fujitsu.intarfrm.helpers.commons.resources.ConditionResourceManager;
import com.fujitsu.intarfrm.helpers.commons.delegates.ResourceConfig;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.commons.resources.FormResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.MessageResourceManager;
import com.fujitsu.intarfrm.helpers.commons.resources.ProjectCommonResourceManager;

/**
 * <p>標題リスソースを初期化するイニシャライザ。</p>
 *
 * 標題リスソースの初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class CaptionResourceInitializer implements ApplicationInitializer {

	private static FileResourceReaderHelper helper = new FileResourceReaderHelper();

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "標題リソース";
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

		//メッセージリソースの初期化
		this.initializeMessageResource();

		//属性標題リソースの初期化
		this.initializeAttributeCaptionResource();

		//コンディション標題リソースの初期化
		this.initializeConditionCaptionResource();

		//コード標題リソースの初期化
		this.initializeCodeCaptionResource();

		//フォーム関連標題リソースの初期化
		this.initializeFormCaptionResource();

		//共通標題リソースの初期化
		this.initializeCommonCaptionResource();
	}

	/**
     * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。 <br/>
     * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。 <br/>
     * @return
     *         メッセージリソース管理クラス <br/>
     *         
     */
    @SuppressWarnings("unused")
    private static MessageResourceManager messageManager() {
        return new MessageResourceManager(new MessageResourceReader(helper));
    }

    /**
     * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。<br/>
     * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。
     * @return <br/>
     *         プログラム共通標題リソース管理クラス <br/>
     *         
     */
    @SuppressWarnings("unused")
    private static ProjectCommonResourceManager projectCommonManager() {
        return new ProjectCommonResourceManager(new ProjectCommonResourceReader(helper));
    }

    /**
     * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。<br/>
     * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。
     * @return <br/>
     *         コンディションリソース管理クラス <br/>
     *         
     */
    @SuppressWarnings("unused")
    private static ConditionResourceManager conditionManager() {
        return new ConditionResourceManager(new ConditionResourceReader(helper));
    }

     /**
     * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。<br/>
     * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。
     * return<br/>
     * 属性リソース管理クラス
     * <br/>
     * 
     */
    @SuppressWarnings("unused")
    private static AttributeResourceManager attributeManager() {
    	return new AttributeResourceManager(new AttributeResourceReader(helper));
    }

     /**
     * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。<br/>
     * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。
     * @return
     * フォームリソース管理クラス
     * <br/>
     * 
     */
    @SuppressWarnings("unused")
    private static FormResourceManager formManager() {
    	return new FormResourceManager(new FormResourceReader(helper));
    }

    /**
    * 初期化処理で使用するコンディションリソース管理クラスを返すメソッドです。<br/>
    * このメソッドで返す値を変更することで、カスタマイズしたリソース管理クラスを使用することが出来ます。
    * return<br/>
    * 属性リソース管理クラス
    * <br/>
    * 
    */
   @SuppressWarnings("unused")
   private static CodeResourceManager codeResourceManager() {
	   return new CodeResourceManager(new CodeResourceReader(helper));
   }

	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません
	}


	/**
	 * メッセージリソースの初期化
	 */
	private void initializeMessageResource() {
		//メッセージリソースはシングルトン制御なのでインスタンスを生成して設定する。
		ResourceConfig.setHandler("MessageResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "messageManager"));
		MessageResourceManager.setInstance(new MessageResourceManager(new MessageResourceReader(helper)));
	}

	/**
	 * 属性標題リソースの初期化
	 */
	private void initializeAttributeCaptionResource() {
		//属性標題リソースはシングルトン制御なのでインスタンスを生成して設定する。
		ResourceConfig.setHandler("AttributeResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "attributeManager"));
		AttributeResourceManager.setInstance(new AttributeResourceManager(new AttributeResourceReader(helper)));
	}

	/**
	 * コンディション標題リソースの初期化
	 */
	private void initializeConditionCaptionResource() {
		//コンディション標題リソースは、
		//コンディション毎にリソースクラスを内部で生成するので、
		//リソースのクラス型を設定する。
		ResourceConfig.setHandler("ConditionResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "conditionManager"));
	}

	/**
	 * コード標題リソースの初期化
	 */
	private void initializeCodeCaptionResource() {
		//コード標題リソースは、
		//コード毎にリソースクラスを内部で生成するので、
		//リソースのクラス型を設定する。
		ResourceConfig.setHandler("CodeResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "codeResourceManager"));
	}

	/**
	 * フォーム関連標題リソースの初期化
	 */
	private void initializeFormCaptionResource() {
		//フォーム標題リソースは、
		//フォーム毎にリソースクラスを内部で生成するので、
		//リソースのクラス型を設定する。
		ResourceConfig.setHandler("FormResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "formManager"));
	}

	/**
	 * 共通リソースの初期化
	 */
	private void initializeCommonCaptionResource() {
		//共通標題リソースはシングルトン制御なのでインスタンスを生成して設定する。
		ResourceConfig.setHandler("ProjectCommonResourceManager", ResourceConfig.getMethod(CaptionResourceInitializer.class, "projectCommonManager"));
		ProjectCommonResourceManager.setInstance(new ProjectCommonResourceManager(new ProjectCommonResourceReader(helper)));
	}
}
