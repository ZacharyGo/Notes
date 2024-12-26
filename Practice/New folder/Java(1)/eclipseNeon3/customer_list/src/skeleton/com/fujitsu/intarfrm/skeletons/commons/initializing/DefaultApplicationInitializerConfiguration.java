package com.fujitsu.intarfrm.skeletons.commons.initializing;

import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerCollection;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerConfiguration;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransactionInitializer;

/**
 * <p>アプリケーション初期化処理の設定クラス。</p>
 *
 * アプリケーション初期化処理を実行するための初期化チェインのファクトリ機能を提供します。<br>
 * INTARFRMアプリケーションはアプリケーション起動時（サーブレットコンテナ起動時）に、
 * このクラスから初期化チェインを取得し、フレームワーク（アプリケーション）の初期化処理を実行します。<br>
 * また、アプリケーション終了時も起動時同様に終了処理を実行します。<br>
 * <br>
 * このクラスは初期化処理実行時にApplicationInitializerConfigurationクラスからリフレクションを介して生成され、
 * getInitializers()メソッドで返却する初期化チェインでApplicationInitializerConfigurationクラスが初期化処理を実行します。<br>
 * そのため、このクラスのフルクラス名および継承インターフェイスを変更することはできません。<br>
 * クラス名を変更した場合は初期化処理でエラーが発生します。<br>
 * <br>
 *
 * @author INTARFRM
 */
public class DefaultApplicationInitializerConfiguration extends ApplicationInitializerConfiguration {

	/**
	 * コンストラクタ
	 */
	public DefaultApplicationInitializerConfiguration() {
		//リフレクションでインスタンスを生成するためのデフォルトコンストラクタ
		//コンストラクタはpublicのデフォルトコンストラクタのみ使用可能です。
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public ApplicationInitializerCollection getInitializers() {

		//初期化チェインを生成する。
		ApplicationInitializerCollection list = new ApplicationInitializerCollection();

		//INTARFRMフレームワークの必須初期化処理を登録する。
		this.setDefaultInitializers(list);

		//アプリケーション固有の初期化処理を追加する場合は以下に記述（登録）します。
		//XXXXXの初期化
		//list.add(new XXXXXXX());

		return list;
	}

	/**
	 * <p>INTARFRMフレームワークが標準提供する初期化処理を初期化チェインに設定する。</p>
	 * @param list 初期化チェインのリスト
	 */
	private void setDefaultInitializers(ApplicationInitializerCollection list) {
		//以下の初期化処理はINTARFRMフレームワークが
		//アプリケーションを実行制御するのに必須な処理です。
		//処理の変更（追加、削除）および順序の変更をしてはいけません。

		//ログ初期化
		list.add(new LoggingInitializer());
		//フレームワーク設定初期化
		list.add(new FrameworkConfigInitializer());
		//例外ハンドリング設定初期化
		list.add(new ErrorMappingInitializer());
		//言語の初期化
		list.add(new LanguageInitializer());
		//標題リソースの初期化
		list.add(new CaptionResourceInitializer());
		//属性の初期化
		list.add(new AttributeInitializer());
		//フォーマットの初期化
		list.add(new FormatInitializer());
		//入力値チェックの初期化
		list.add(new InputValidationInitializer());
		//HTMLコントロールスタイル定義の初期化
		list.add(new HtmlDisplaySettingsInitializer());
		//タグ出力モジュールの初期化
		list.add(new HtmlTagInitializer());
		//トランザクションの初期化
		list.add(new DbTransactionInitializer());
		//フレームワークフィルターの初期化
		list.add(new FrameworkFilterInilizer());
		//自動生成パッケージの初期化
		list.add(new ApplicationPackageInitializer());
		//HTTPリクエストから取得した値の設定方法の初期化
		list.add(new RequestParserInitializer());
		//メッセージの初期化
		list.add(new MessageInitializer());
	}
}
