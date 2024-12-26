package com.fujitsu.intarfrm.skeletons.commons.exceptions;

import java.util.Collection;

import com.fujitsu.intarfrm.helpers.commons.exceptions.IfmRuntimeException;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessageBase;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.utils.IfmCollection;

/**
 * アプリケーションで例外を発生させる場合の基底クラスです。
 * この例外を発生させた場合、基本的にはアプリケーションコード内でcatchし、処理してください。
 * 
 * @author INTARFRM
 */
public class BusinessException extends IfmRuntimeException {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 業務エラーメッセージのリスト
	 */
	public IfmCollection<ServerMessageBase> businessErrorMessages;

	/**
	 * コンストラクタ
	 */
	
	public BusinessException() {
		super();
		this.businessErrorMessages = new IfmCollection<ServerMessageBase>();
	}

	/**
	 * コンストラクタ
	 * @param message エラーメッセージ
	 */
	public BusinessException(String message) {
		super(message);
		this.businessErrorMessages = new IfmCollection<ServerMessageBase>();
	}

	/**
	 * コンストラクタ
	 * @param t 発生元となった例外
	 */
	public BusinessException(Throwable t) {
		super(t);
		this.businessErrorMessages = new IfmCollection<ServerMessageBase>();
	}

	/**
	 * コンストラクタ
	 * @param message エラーメッセージ
	 * @param t 発生元となった例外
	 */
	public BusinessException(String message, Throwable t) {
		super(message, t);
		this.businessErrorMessages = new IfmCollection<ServerMessageBase>();
	}
	
	/**
	 * コンストラクタ
	 * @param message サーバメッセージ
	 */
	public BusinessException(ServerMessageBase message) {
		this();
		ArgumentValidator.checkNull(message, "message");
		this.businessErrorMessages.add(message);
	}
	
	/**
	 * コンストラクタ
	 * @param messages サーバメッセージのコレクション
	 */
	public BusinessException(Collection<ServerMessageBase> messages) {
		this();
		ArgumentValidator.checkNull(messages, "messages");
		this.businessErrorMessages.addAll(messages);
	}
	
	/**
	 * 業務エラーメッセージのリストを取得する
	 * @return 業務エラーメッセージのリスト
	 */
	public IfmCollection<ServerMessageBase> getBusinessErrorMessages () {
		return this.businessErrorMessages;
	}
}
