package com.fujitsu.intarfrm.skeletons.commons.json;

/*
 Copyright (c) 2002 JSON.org

 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 The Software shall be used for Good, not Evil.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/**
 * JSON配列は順序付けられた値のシーケンスです。
 * そのテキスト形式は、文字列値を分離する, と[]で囲まれています。
 * 内部形式には、<code>get</code>と<code>opt</code>といった値にアクセスするためのメソッドと、
 * <code>put</code>といった値を追加または置き換えるメソッドがあります。
 * 値にはこれらのタイプがあります。
 * <code>Boolean</code>, <code>JSONArray</code>, <code>JSONObject</code>,
 * <code>Number</code>, <code>String</code>,または<code>JSONObject.NULL object</code>.
 * <p>
 * コンストラクタはJSONテキストをJavaオブジェクトに変換することが出来ます。
 * <code>toString</code>がJSONテキストを変換します。
 * <p>
 * <code>get</code>メソッドは値が存在する時その値を返します。存在しない時は例外をスローします。
 * <code>opt</code>メソッドは例外の代わりにデフォルト値を返します。追加の値を取得する時に役立ちます。
 * <p>
 * ジェネリックの<code>get()</code>と<code>opt()</code>メソッドはキャストや問い合わせできるオブジェクトを返します。
 *<p>
 * <code>toString</code>メソッドによって生成されるテキストは厳密にJSON文法ルールを確認します。
 * コンストラクタはテキストをより寛容に許可します。
 * <ul>
 * <li>余分な<code>,</code>&nbsp;<small>(comma)</small>が括弧を閉じる前に現れることがあります。</li>
 * <li><code>null</code> は、<code>,</code>&nbsp;<small>(comma)</small> elision.</li>
 * <li>Strings may be quoted with <code>'</code>&nbsp;<small>(single quote)</small>.</li>
 * <li>の時挿入されます。</li>
 * <li>シングルクオートやクオートで始まらない時、先頭または末尾に空白がない時、</li>
 * <li>次の文字：<code>{ } [ ] / \ : , #</code>を含まない時、</li>
 * <li>数字としてみていない時、<code>true</code>, <code>false</code>, <code>null</code>といった確保された文字でない時、</li>
 * <li>クオートで囲む必要がありません。</li>
 * </ul>
 *
 */
class JSONArray {

	/**
	 * JSON配列のプロパティが確保されているarrayList
	 */
	@SuppressWarnings("rawtypes")
	private final ArrayList myArrayList;

	/**
	 * コンストラクタ。
	 */
	@SuppressWarnings("rawtypes")
	JSONArray() {
		this.myArrayList = new ArrayList();
	}

	/**
	 * コンストラクタ。
	 *
	 * @param tokener
	 *            JSONトークン
	 * @throws JSONException
	 *             シンタックスエラーがあるとき
	 */
	@SuppressWarnings("unchecked")
	JSONArray(JSONTokener tokener) throws JSONException {
		this();
		if (tokener.nextClean() != '[') {
			throw tokener.syntaxError("A JSONArray text must start with '['");
		}
		if (tokener.nextClean() != ']') {
			tokener.back();
			for (;;) {
				if (tokener.nextClean() == ',') {
					tokener.back();
					this.myArrayList.add(JSONObject.NULL);
				} else {
					tokener.back();
					this.myArrayList.add(tokener.nextValue());
				}
				switch (tokener.nextClean()) {
				case ',':
					if (tokener.nextClean() == ']') {
						return;
					}
					tokener.back();
					break;
				case ']':
					return;
				default:
					throw tokener.syntaxError("Expected a ',' or ']'");
				}
			}
		}
	}

	/**
	 * コンストラクタ。
	 *
	 * @param source
	 *            次で始まる文字列<code>[</code>&nbsp;<small>(left
	 *            bracket)</small> and ends with <code>]</code>
	 *            &nbsp;<small>(right bracket)</small>.
	 * @throws JSONException
	 *            シンタックスエラーがあるとき
	 */
	JSONArray(String source) throws JSONException {
		this(new JSONTokener(source));
	}

	/**
	 * コンストラクタ。
	 *
	 * @param collection
	 *            コレクション
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	JSONArray(Collection collection) {
		this.myArrayList = new ArrayList();
		if (collection != null) {
			Iterator iterator = collection.iterator();
			while (iterator.hasNext()) {
				this.myArrayList.add(JSONObject.wrap(iterator.next()));
			}
		}
	}

	/**
	 * コンストラクタ。
	 *
	 * @throws JSONException
	 *             配列でない時
	 */
	JSONArray(Object array) throws JSONException {
		this();
		if (array.getClass().isArray()) {
			int length = Array.getLength(array);
			for (int i = 0; i < length; i += 1) {
				this.put(JSONObject.wrap(Array.get(array, i)));
			}
		} else {
			throw new JSONException(
					"JSONArray initial value should be a string or collection or array.");
		}
	}

	/**
	 * 値を取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            オブジェクト値
	 * @throws JSONException
	 *             インデックスに値がない時
	 */
	Object get(int index) throws JSONException {
		Object object = this.opt(index);
		if (object == null) {
			throw new JSONException("JSONArray[" + index + "] not found.");
		}
		return object;
	}

	/**
	 * 値をbooleanとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return true
	 * @throws JSONException
	 *             インデックスに値がない時または値がブール型に変換できない時
	 */
	boolean getBoolean(int index) throws JSONException {
		Object object = this.get(index);
		if (object.equals(Boolean.FALSE)
				|| (object instanceof String && ((String) object)
						.equalsIgnoreCase("false"))) {
			return false;
		} else if (object.equals(Boolean.TRUE)
				|| (object instanceof String && ((String) object)
						.equalsIgnoreCase("true"))) {
			return true;
		}
		throw new JSONException("JSONArray[" + index + "] is not a boolean.");
	}

	/**
	 * 値をdoubleとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 * @throws JSONException
	 *            キーが見つからない時、または値が数値に変換できない時
	 */
	double getDouble(int index) throws JSONException {
		Object object = this.get(index);
		try {
			return object instanceof Number ? ((Number) object).doubleValue()
					: Double.parseDouble((String) object);
		} catch (Exception e) {
			throw new JSONException("JSONArray[" + index + "] is not a number.");
		}
	}

	/**
	 * 値をintとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 * @throws JSONException
	 *            キーが見つからない時、または値が数値でない時
	 */
	int getInt(int index) throws JSONException {
		Object object = this.get(index);
		try {
			return object instanceof Number ? ((Number) object).intValue()
					: Integer.parseInt((String) object);
		} catch (Exception e) {
			throw new JSONException("JSONArray[" + index + "] is not a number.");
		}
	}

	/**
	 * 値をJSONArrayとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            JSON配列値
	 * @throws JSONException
	 *            インデックスに値がない時、または値がJSON配列でない時
	 */
	JSONArray getJSONArray(int index) throws JSONException {
		Object object = this.get(index);
		if (object instanceof JSONArray) {
			return (JSONArray) object;
		}
		throw new JSONException("JSONArray[" + index + "] is not a JSONArray.");
	}

	/**
	 * 値をJSONObjectとして取得します。
	 *
	 * @param index
	 *            subscript
	 * @return
	 *            JSONオブジェクト値
	 * @throws JSONException
	 *            インデックスに値がない時、または値がJSONオブジェクトでない時
	 */
	JSONObject getJSONObject(int index) throws JSONException {
		Object object = this.get(index);
		if (object instanceof JSONObject) {
			return (JSONObject) object;
		}
		throw new JSONException("JSONArray[" + index + "] is not a JSONObject.");
	}

	/**
	 * 値をlongとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 * @throws JSONException
	 *            キーが見つからない時、または値が数値に変換できない時
	 */
	long getLong(int index) throws JSONException {
		Object object = this.get(index);
		try {
			return object instanceof Number ? ((Number) object).longValue()
					: Long.parseLong((String) object);
		} catch (Exception e) {
			throw new JSONException("JSONArray[" + index + "] is not a number.");
		}
	}

	/**
	 * 値をStringとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            文字列値
	 * @throws JSONException
	 *            インデックスに文字列の値がない時
	 */
	String getString(int index) throws JSONException {
		Object object = this.get(index);
		if (object instanceof String) {
			return (String) object;
		}
		throw new JSONException("JSONArray[" + index + "] not a string.");
	}

	/**
	 * 指定した値のNULLチェックを実施します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            インデックスの値がnull、または値がない時
	 */
	boolean isNull(int index) {
		return JSONObject.NULL.equals(this.opt(index));
	}

	/**
	 * JSONArrayから文字列を作成します。
	 *
	 * @param separator
	 *            要素の間に挿入される文字列
	 * @return
	 *            文字列
	 * @throws JSONException
	 *            配列に不正な数値が含まれるとき
	 */
	String join(String separator) throws JSONException {
		int len = this.length();
		StringBuffer sb = new StringBuffer();

		for (int i = 0; i < len; i += 1) {
			if (i > 0) {
				sb.append(separator);
			}
			sb.append(JSONObject.valueToString(this.myArrayList.get(i)));
		}
		return sb.toString();
	}

	/**
	 * 要素数を取得します。
	 *
	 * @return
	 *            長さ
	 */
	int length() {
		return this.myArrayList.size();
	}

	/**
	 * オプションから値を取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            オブジェクト値、またはインデックスにオブジェクトがない時null
	 */
	Object opt(int index) {
		return (index < 0 || index >= this.length()) ? null : this.myArrayList.get(index);
	}

	/**
	 * オプションをbooleanとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            True
	 */
	boolean optBoolean(int index) {
		return this.optBoolean(index, false);
	}

	/**
	 * オプションをbooleanとして取得します。
	 * 指定したインデックスに値がない場合、もしくはboolean型、String型のtrue/falseでない場合はデフォルトの値を返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @param defaultValue
	 *            ブール型デフォルト
	 * @return
	 *            True
	 */
	boolean optBoolean(int index, boolean defaultValue) {
		try {
			return this.getBoolean(index);
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * オプションをdoubleとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 */
	double optDouble(int index) {
		return this.optDouble(index, Double.NaN);
	}

	/**
	 * オプションをdoubleとして取得します。
	 * 指定したインデックスに値がない場合、もしくは数値型でない場合はデフォルトの値を返します。
	 *
	 * @param index
	 *            subscript
	 * @param defaultValue
	 *            デフォルト値
	 * @return
	 *            値
	 */
	double optDouble(int index, double defaultValue) {
		try {
			return this.getDouble(index);
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * オプションをintとして取得します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 */
	int optInt(int index) {
		return this.optInt(index, 0);
	}

	/**
	 * オプションをintとして取得します。
	 * 指定したインデックスに値がない場合、もしくはint型でない場合、変換できない数値の場合はデフォルトの値を返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @param defaultValue
	 *            デフォルト値
	 * @return
	 *            値
	 */
	int optInt(int index, int defaultValue) {
		try {
			return this.getInt(index);
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * オプションをJSONArrayとして取得します。
	 *
	 * @param index
	 *            subscript
	 * @return
	 *            JSON配列値、またはJSON配列の値がない場合、null
	 */
	JSONArray optJSONArray(int index) {
		Object object = this.opt(index);
		return object instanceof JSONArray ? (JSONArray) object : null;
	}

	/**
	 * オプションをJSONObjectとして取得します。
	 * 指定したインデックスに値がない場合、nullを返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            JSONオブジェクト値
	 */
	JSONObject optJSONObject(int index) {
		Object object = this.opt(index);
		return object instanceof JSONObject ? (JSONObject) object : null;
	}

	/**
	 * オプションをlongとして取得します。
	 * 変換できない値は0で返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            値
	 */
	long optLong(int index) {
		return this.optLong(index, 0);
	}

	/**
	 * オプションをlongとして取得します。
	 * 指定したインデックスに値がない場合、もしくはlong型に変換できない値の場合はデフォルトの値を返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @param defaultValue
	 *            デフォルト値
	 * @return
	 *            値
	 */
	long optLong(int index, long defaultValue) {
		try {
			return this.getLong(index);
		} catch (Exception e) {
			return defaultValue;
		}
	}

	/**
	 * オプションをStringとして取得します。
	 * 指定したインデックスに値がない場合、もしくはString型に変換できない値の場合は空文字を返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @return
	 *            文字列
	 */
	String optString(int index) {
		return this.optString(index, "");
	}

	/**
	 * オプションをStringとして取得します。
	 * 指定したインデックスに値がない場合はデフォルトの値を返します。
	 *
	 * @param index
	 *            インデックス（0～length() - 1）
	 * @param defaultValue
	 *            デフォルト値
	 * @return
	 *            文字列
	 */
	String optString(int index, String defaultValue) {
		Object object = this.opt(index);
		return JSONObject.NULL.equals(object) ? defaultValue : object.toString();
	}

	/**
	 * booleanの値を挿入します。
	 *
	 * @param value
	 *            booleanの値
	 * @return this
	 */
	JSONArray put(boolean value) {
		this.put(value ? Boolean.TRUE : Boolean.FALSE);
		return this;
	}

	/**
	 * コレクションを挿入します。
	 *
	 * @param value
	 *            コレクション
	 * @return this.
	 */
	@SuppressWarnings("rawtypes")
	JSONArray put(Collection value) {
		this.put(new JSONArray(value));
		return this;
	}

	/**
	 * doubleの値を挿入します。
	 *
	 * @param value
	 *            doubleの値
	 * @throws JSONException
	 *            値が有限でない時
	 * @return this.
	 */
	JSONArray put(double value) throws JSONException {
		Double d = new Double(value);
		JSONObject.testValidity(d);
		this.put(d);
		return this;
	}

	/**
	 * intの値を挿入します。
	 *
	 * @param value
	 *            intの値
	 * @return this.
	 */
	JSONArray put(int value) {
		this.put(new Integer(value));
		return this;
	}

	/**
	 * longの値を挿入します。
	 *
	 * @param value
	 *            longの値
	 * @return this.
	 */
	JSONArray put(long value) {
		this.put(new Long(value));
		return this;
	}

	/**
	 * Map型(HashMap等)の値を挿入します。
	 *
	 * @param value
	 *            Map型
	 * @return this.
	 */
	@SuppressWarnings("rawtypes")
	JSONArray put(Map value) {
		this.put(new JSONObject(value));
		return this;
	}

	/**
	 * Objectの値を挿入します。
	 *
	 * @param value
	 *            オブジェクト値
	 * @return this.
	 */
	@SuppressWarnings("unchecked")
	JSONArray put(Object value) {
		this.myArrayList.add(value);
		return this;
	}

	/**
	 * booleanの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript
	 * @param value
	 *            booleanの値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負のとき
	 */
	JSONArray put(int index, boolean value) throws JSONException {
		this.put(index, value ? Boolean.TRUE : Boolean.FALSE);
		return this;
	}

	/**
	 * コレクションを指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript
	 * @param value
	 *            コレクション
	 * @return this.
	 * @throws JSONException
	 */
	@SuppressWarnings("rawtypes")
	JSONArray put(int index, Collection value) throws JSONException {
		this.put(index, new JSONArray(value));
		return this;
	}

	/**
	 * doubleの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript.
	 * @param value
	 *            doubleの値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負の時、または値が有限でない時
	 */
	JSONArray put(int index, double value) throws JSONException {
		this.put(index, new Double(value));
		return this;
	}

	/**
	 * intの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript.
	 * @param value
	 *            intの値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負の時
	 */
	JSONArray put(int index, int value) throws JSONException {
		this.put(index, new Integer(value));
		return this;
	}

	/**
	 * longの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript.
	 * @param value
	 *            longの値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負の時
	 */
	JSONArray put(int index, long value) throws JSONException {
		this.put(index, new Long(value));
		return this;
	}

	/**
	 * Mapの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript.
	 * @param value
	 *            Map型の値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負の時、または値が不正の時
	 */
	@SuppressWarnings("rawtypes")
	JSONArray put(int index, Map value) throws JSONException {
		this.put(index, new JSONObject(value));
		return this;
	}

	/**
	 * Objectの値を指定された番号に挿入します。
	 *
	 * @param index
	 *            The subscript.
	 * @param value
	 *            配列にに置く値
	 * @return this.
	 * @throws JSONException
	 *            インデックスが負の時、または値が不正の時
	 */
	@SuppressWarnings("unchecked")
	JSONArray put(int index, Object value) throws JSONException {
		JSONObject.testValidity(value);
		if (index < 0) {
			throw new JSONException("JSONArray[" + index + "] not found.");
		}
		if (index < this.length()) {
			this.myArrayList.set(index, value);
		} else {
			while (index != this.length()) {
				this.put(JSONObject.NULL);
			}
			this.put(value);
		}
		return this;
	}

	/**
	 * 指定された要素を削除します。
	 *
	 * @param index
	 *            削除される要素のインデックス
	 * @return
	 *            インデックスに関連付けられた値、または値がない時null
	 */
	Object remove(int index) {
		Object object = this.opt(index);
		this.myArrayList.remove(index);
		return object;
	}

	/**
	 * JSONObjectを作成します。
	 *
	 * @param names
	 *            キー文字列を含むJSON配列
	 * @return
	 *            JSONオブジェクト、またはJSON配列に値がない時null
	 * @throws JSONException
	 *            いくつかの名前がnullの時
	 */
	JSONObject toJSONObject(JSONArray names) throws JSONException {
		if (names == null || names.length() == 0 || this.length() == 0) {
			return null;
		}
		JSONObject jsonObject = new JSONObject();
		for (int i = 0; i < names.length(); i += 1) {
			jsonObject.put(names.getString(i), this.opt(i));
		}
		return jsonObject;
	}

	/**
	 * JSON配列のJSONテキストを作成します。
	 *
	 * @return
	 *            配列の印刷可能な、表示、送信可能な表現。
	 */
	public String toString() {
		try {
			return this.toString(0);
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * JSON配列の印刷可能なJSONテキストを作成します。
	 *
	 * @param indentFactor
	 *            インデントに追加する空白の数
	 * @return
	 *         配列の印刷可能な、表示、送信可能な表現。
	 * @throws JSONException
	 */
	String toString(int indentFactor) throws JSONException {
		StringWriter sw = new StringWriter();
		synchronized (sw.getBuffer()) {
			return this.write(sw, indentFactor, 0).toString();
		}
	}

	/**
	 * 保持しているデータを書き出します。
	 *
	 * @return
	 *            The writer.
	 * @throws JSONException
	 */
	Writer write(Writer writer) throws JSONException {
		return this.write(writer, 0, 0);
	}

	/**
	 * 保持しているデータを書き出します。
	 *
	 * @param indentFactor
	 *            インデントに追加する空白の数
	 * @param indent
	 *            トップレベルのインデント
	 * @return
	 *            The writer
	 * @throws JSONException
	 */
	Writer write(Writer writer, int indentFactor, int indent)
			throws JSONException {
		try {
			boolean commanate = false;
			int length = this.length();
			writer.write('[');

			if (length == 1) {
				JSONObject.writeValue(writer, this.myArrayList.get(0),
						indentFactor, indent);
			} else if (length != 0) {
				final int newindent = indent + indentFactor;

				for (int i = 0; i < length; i += 1) {
					if (commanate) {
						writer.write(',');
					}
					if (indentFactor > 0) {
						writer.write('\n');
					}
					JSONObject.indent(writer, newindent);
					JSONObject.writeValue(writer, this.myArrayList.get(i),
							indentFactor, newindent);
					commanate = true;
				}
				if (indentFactor > 0) {
					writer.write('\n');
				}
				JSONObject.indent(writer, indent);
			}
			writer.write(']');
			return writer;
		} catch (IOException e) {
			throw new JSONException(e);
		}
	}
}
