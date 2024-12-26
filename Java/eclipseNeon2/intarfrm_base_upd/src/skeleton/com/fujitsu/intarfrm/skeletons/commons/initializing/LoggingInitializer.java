package com.fujitsu.intarfrm.skeletons.commons.initializing;

import java.util.ArrayList;

import javax.servlet.ServletContextEvent;
import javax.xml.xpath.XPath;
import javax.xml.xpath.XPathConstants;
import javax.xml.xpath.XPathExpressionException;
import javax.xml.xpath.XPathFactory;

import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import com.fujitsu.intarfrm.helpers.commons.configurations.AppConfig;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializer;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException;
import com.fujitsu.intarfrm.helpers.commons.initializing.ApplicationInitializerException.InitializerErrorType;
import com.fujitsu.intarfrm.skeletons.commons.logging.LoggingConstants;
import com.fujitsu.intarfrm.skeletons.commons.logging.LogDateTimeFormatter;
import com.fujitsu.intarfrm.skeletons.commons.logging.ApplicationLog;
import com.fujitsu.intarfrm.helpers.commons.logging.LogDateTimeManager;
import com.fujitsu.intarfrm.helpers.commons.logging.LogOutputManager;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogLevelType;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogSettings;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogSettingsManager;
import com.fujitsu.intarfrm.helpers.commons.logging.FrameworkLog;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmTraceLogWriter;
import com.fujitsu.intarfrm.helpers.commons.logging.SqlLog;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.commons.xml.XmlUtil;

/**
 * <p>ログの初期化イニシャライザ。</p>
 *
 * ログの初期化を行うためのイニシャライザクラスです。<br>
 * このクラスは初期化チェインに登録され、アプリケーションコンテナ起動時にINTARFRMフレームワークにより実行されます。<br>
 *
 * @author INTARFRM
 */
public class LoggingInitializer implements ApplicationInitializer {

	/**
	 * ログ設定ファイルのパス
	 */
	public static String CONFIG_PATH = AppConfig.getConfigPath() + "/logsettings-config.xml";

	/**
	 * コンストラクタ
	 */
	public LoggingInitializer() {
		//ログの日付フォーマッタを初期設定
		LogDateTimeManager.INSTANCE.setFormatter(new LogDateTimeFormatter());
	}

    /**
     * {@inheritDoc}
     */
	@Override
	public String getName() {
		return "ログ定義";
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

		//XML読み込み及びドキュメントROOT取得
		Element root = XmlUtil.readXml(CONFIG_PATH).getDocumentElement();
		NodeList nodeList = root.getElementsByTagName("logsetting");

		//各ログ定義から設定を読み込む
		for (int i = 0; i < nodeList.getLength(); i++) {
			IfmLogSettings logSettings = parseSettings(nodeList.item(i));
			IfmLogSettingsManager.INSTANCE.put(logSettings.getName(), logSettings);
		}

		//ログ出力マネージャを初期化します。
		LogOutputManager manager = new LogOutputManager();
		manager.initialize();
		//初期化処理
		//XMLからログ設定を読み込む
		FrameworkLog.Instance = new FrameworkLog(getSettingsOrDefault(IfmLogSettingsManager.INSTANCE, LoggingConstants.LOGNAME_FRAMEWORK));
		SqlLog.Instance = new SqlLog(getSettingsOrDefault(IfmLogSettingsManager.INSTANCE, LoggingConstants.LOGNAME_SQL));
		ApplicationLog.setDefaultSettings(getSettingsOrDefault(IfmLogSettingsManager.INSTANCE, LoggingConstants.LOGNAME_APPLICATION));
	}

	/**
	 * デフォルト設定情報を取得する
	 * @param settingsManager ログ設定マネージャ
	 * @param logSettingName ログ設定名
	 * @return デフォルト設定情報
	 */
	private IfmLogSettings getSettingsOrDefault(IfmLogSettingsManager settingsManager, String logSettingName) {
		if (!settingsManager.containsKey(logSettingName)) {
			settingsManager.put(logSettingName, LoggingConstants.createDefaultSetting(logSettingName));
		}
		return settingsManager.get(logSettingName);
	}


	/**
	 * {@inheritDoc}
	 */
	@Override
	public void destroy(ServletContextEvent servletContextEvent) throws ApplicationInitializerException {
		//終了処理は何もしません
	}

	/**
	 * ログの設定情報を取得する
	 * @param n XMLファイルの要素
	 * @return ログの設定情報
	 * @throws ApplicationInitializerException
	 */
	private IfmLogSettings parseSettings(Node n) throws ApplicationInitializerException {

		ArrayList<IfmLogLevelType> levels = new ArrayList<IfmLogLevelType>();
		String key = null;
		Node logFormat = null;

		try {
			XPath xpath = XPathFactory.newInstance().newXPath();

			key = n.getAttributes().getNamedItem("name").getNodeValue();
			Node loglevel = (Node) xpath.evaluate("loglevel", n, XPathConstants.NODE);
			logFormat = (Node) xpath.evaluate("logformat", n, XPathConstants.NODE);
			if (!StringHelper.isNullOrEmpty(loglevel.getTextContent())){
				for (String lv : loglevel.getTextContent().split(",")) {
					IfmLogLevelType parsed = IfmLogLevelType.getEnum(lv);
					if (parsed == null) {
						throw new ApplicationInitializerException(String.format("Found invalid value at log config: %1$s ", lv), new Throwable(), ApplicationInitializerException.InitializerErrorType.READ_CONFIGURATION);
					} else {
						levels.add(parsed);
					}
				}
			}
		} catch (XPathExpressionException e) {
	            throw new ApplicationInitializerException(String.format("Cannot read logsettings file [%s]", e.getMessage()), e, InitializerErrorType.READ_CONFIGURATION);
		}

		//ログ設定の作成
		return new IfmLogSettings(key, logFormat.getTextContent(), levels, new IfmTraceLogWriter());
	}
}
