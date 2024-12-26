package com.fujitsu.intarfrm.skeletons.commons.json;

/**
 * <code>JSONString</code>インターフェースは
 * <code>JSONObject.toString()</code>, <code>JSONArray.toString()</code>,
 * <code>JSONWriter.value(</code>Object<code>)</code>の振る舞いを変えることを許可するクラスです。
 * <code>toJSONString</code>メソッドは<code>toString()</code> を使用する
 * デフォルトの振る舞いの代わりに使用されます。
 *
 */
interface JSONString {
    /**
     * <code>toJSONString</code>メソッドはクラスが自身のJSON serializationを生成することを許可します。
     *
     * @return
	 *        厳密にチェックされるJSONテキスト
     */
    String toJSONString();
}
