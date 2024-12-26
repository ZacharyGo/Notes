package com.fujitsu.intarfrm.skeletons.commons.exceptions;

import com.fujitsu.intarfrm.helpers.commons.exceptions.IfmRuntimeException;

/**
 * アプリケーションで回復不可能なエラーが発生した場合の例外クラスです。
 * このクラスはRuntimeExceptionを継承しており、基本的にはcatchさせないエラーのためのクラスです。
 * ErrorMapping定義でハンドリングされ、エラー画面へ遷移させます。
 * 
 * @author INTARFRM
 */
public class SystemErrorException extends IfmRuntimeException {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コンストラクタ
	 */
	public SystemErrorException() {
		super();
	}

	/**
	 * コンストラクタ
	 * @param message 例外メッセージ
	 */
	public SystemErrorException(String message) {
		super(message);
	}

	/**
	 * コンストラクタ
	 * @param cause 例外クラス
	 */
	public SystemErrorException(Throwable cause) {
		super(cause);
	}

	/**
	 * コンストラクタ
	 * @param message 例外メッセージ
	 * @param cause 例外クラス
	 */
	public SystemErrorException(String message, Throwable cause) {
		super(message, cause);
	}
}
