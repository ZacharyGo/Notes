package com.fujitsu.intarfrm.skeletons.commons.json;

/**
 *  JSONライブラリで発生する例外クラスです。
 *
 */
public class JSONException extends RuntimeException {
    private static final long serialVersionUID = 0;
    private Throwable cause;

    /**
     * コンストラクタ。
     *
     * @param message
	 *            例外理由の詳細
     */
    public JSONException(String message) {
        super(message);
    }

    /**
     * コンストラクタ。
     */
    public JSONException(Throwable cause) {
        super(cause.getMessage());
        this.cause = cause;
    }

    /**
     * 原因を取得します。
     *
     * @returns
	 *            原因が特定できないまたは未知の時、例外の原因またはnullを返す
     */
    public Throwable getCause() {
        return this.cause;
    }
}
