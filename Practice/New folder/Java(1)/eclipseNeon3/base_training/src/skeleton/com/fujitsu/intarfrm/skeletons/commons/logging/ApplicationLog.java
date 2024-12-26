package com.fujitsu.intarfrm.skeletons.commons.logging;

import com.fujitsu.intarfrm.helpers.commons.logging.IIfmLogWriter;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogContext;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogData;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogLevelType;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogSettings;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmStackFrame;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;

/**
 * アプリケーションログクラス
 * @author INTARFRM
 */
public class ApplicationLog {

	/**
	 * 既定のログ設定。
	 * 設定初期化前でもログ出力ができるよう、既定の設定をセットする。
	 */
    private static IfmLogSettings defaultSettings
        = LoggingConstants.createDefaultSetting(LoggingConstants.LOGNAME_APPLICATION);

	/**
	 * ログ出力の設定
	 */
	private IfmLogSettings logSettings;

    /**
     * アプリケーションログのデフォルト設定を取得します。
     * @return
     */
    public static IfmLogSettings getDefaultSettings() {
    	return defaultSettings;
    }

    /**
     * アプリケーションログのデフォルト設定を指定します。
     * @param value
     */
    public static void setDefaultSettings(IfmLogSettings value) {
    	ArgumentValidator.checkNull(value, "value");
    	ArgumentValidator.checkNull(value.getLogWriter(), "value.logWriter");
    	defaultSettings = value;
    }

	private IfmLogContext logContext;
	public IfmLogContext getLogContext() {
		return this.logContext;
	}

    /**
     * ログ出力のインタフェースを取得する
     * @return
     */
	public IIfmLogWriter getLogWriter() {
		return this.logSettings.getLogWriter();
	}

	/**
	 * ログ出力設定を取得する
	 * @return
	 */
	public IfmLogSettings getLogSettings() {
		return this.logSettings;
	}

	/**
	 * コンストラクタ
	 */
	public ApplicationLog() {
		this.logSettings = getDefaultSettings();
		this.logContext = new IfmLogContext();
	}

	/**
	 * DEBUGレベルのログを出力する
	 * @param message メッセージ
	 * @param e 例外情報
	 */
	public void debug(String message, Exception e) {
		if (this.contains(IfmLogLevelType.DEBUG)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.DEBUG, new IfmStackFrame(1), getMessageText(message, e)));
		}
	}

	/**
	 * DEBUGレベルのログを出力する
	 * @param message メッセージ
	 */
	public void debug(String message) {
		if (this.contains(IfmLogLevelType.DEBUG)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.DEBUG, new IfmStackFrame(1), getMessageText(message, null)));
		}
	}

	/**
	 * INFOレベルのログを出力する
	 * @param message メッセージ
	 * @param e 例外情報
	 */
	public void info(String message, Exception e) {
		if (this.contains(IfmLogLevelType.INFO)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.INFO, new IfmStackFrame(1), getMessageText(message, e)));
		}
	}

	/**
	 * INFOレベルのログを出力する
	 * @param message メッセージ
	 */
	public void info(String message) {
		if (this.contains(IfmLogLevelType.INFO)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.INFO, new IfmStackFrame(1), getMessageText(message, null)));
		}
	}

	/**
	 * WARNレベルのログを出力する
	 * @param message メッセージ
	 * @param e 例外情報
	 */
	public void warn(String message, Exception e) {
		if (this.contains(IfmLogLevelType.WARN)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.WARN, new IfmStackFrame(1), getMessageText(message, e)));
		}
	}

	/**
	 * WARNレベルのログを出力する
	 * @param message メッセージ
	 */
	public void warn(String message) {
		if (this.contains(IfmLogLevelType.WARN)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.WARN, new IfmStackFrame(1), getMessageText(message, null)));
		}
	}

	/**
	 * ERRORレベルのログを出力する
	 * @param message メッセージ
	 * @param e 例外情報
	 */
	public void error(String message, Exception e) {
		if (this.contains(IfmLogLevelType.ERROR)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.ERROR, new IfmStackFrame(1), getMessageText(message, e)));
		}
	}

	/**
	 * ERRORレベルのログを出力する
	 * @param message メッセージ
	 */
	public void error(String message) {
		if (this.contains(IfmLogLevelType.ERROR)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.ERROR, new IfmStackFrame(1), getMessageText(message, null)));
		}
	}

	/**
	 * FATALレベルのログを出力する
	 * @param message メッセージ
	 * @param e 例外情報
	 */
	public void fatal(String message, Exception e) {
		if (this.contains(IfmLogLevelType.FATAL)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.FATAL, new IfmStackFrame(1), getMessageText(message, e)));
		}
	}

	/**
	 * FATALレベルのログを出力する
	 * @param message メッセージ
	 */
	public void fatal(String message) {
		if (this.contains(IfmLogLevelType.FATAL)) {
			this.getLogWriter().writeLog(this.createLogData(IfmLogLevelType.FATAL, new IfmStackFrame(1), getMessageText(message, null)));
		}
	}

	/**
	 * メッセージと例外情報を統合した文字列を取得する
	 * @param message メッセージ
	 * @param e 例外情報
	 * @return メッセージと例外情報を統合した文字列
	 */
	protected String getMessageText(String message, Exception e) {
		if (e == null) {
			return message;
		}
		return StringHelper.formatString("%1$s\r\nException:%2$s", message, e);
	}

	/**
	 * ログデータを作成する
	 * @param logLevel ログレベル
	 * @param stackFrame ログ出力元の情報を示すStackFrame
	 * @param message ログメッセージ
	 * @return ログデータ
	 */
	protected IfmLogData createLogData(IfmLogLevelType logLevel, IfmStackFrame stackFrame, String message) {
		return new IfmLogData(logLevel, stackFrame, message, this.logSettings.getLogFormat(), this.logContext);
	}

	/**
	 * 使用できるログレベルかどうかを判別します。
	 * @param value 現在のログレベル
	 * @return true=使用可能、false=使用不可
	 */
	private boolean contains(IfmLogLevelType value) {
		for (IfmLogLevelType current : logSettings.getOutputLevels()) {
			if (current.equals(value)) {
				return true;
			}
		}
		return false;
	}
}
