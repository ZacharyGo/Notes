package com.fujitsu.intarfrm.skeletons.commons.framework;

import com.fujitsu.intarfrm.helpers.commons.exceptions.IfmRuntimeException;

/**
 * 直接アクセスエラーの例外クラス
 * 
 */
public class DirectAccessException extends IfmRuntimeException {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コンストラクタ
	 * 
	 * @param message コマンドエンベロップ
	 */
	public DirectAccessException(String message) {
		super(message);
	}
}
