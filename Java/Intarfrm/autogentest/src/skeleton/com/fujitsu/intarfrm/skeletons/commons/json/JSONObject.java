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
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

/**
 * JSONオブジェクトは順序のないname/valueのペアです。
 * その外部形式は{:}で名前と値が区切られて囲まれ、それぞれ, で囲まれます。
 * 内部形式は、名前によって値にアクセスする<code>get</code>と<code>opt</code>メソッドを、
 * 名前によって値を追加または置き換える<code>put</code>メソッドを持っています。
 * 値はこれらのタイプとなります。
 * <code>Boolean</code>, <code>JSONArray</code>, <code>JSONObject</code>,
 * <code>Number</code>, <code>String</code>, or the <code>JSONObject.NULL</code>
 * JSONオブジェクトのコンストラクタはJSONテキストの値を<code>get</code>や<code>opt</code>で取得できる形に
 * また<code>put</code>や<code>toString</code>使用できる形に変換します。
 * <code>get</code>は、値が見つかった時はその値を、見つからない時は例外をスローします。
 * <code>opt</code>は、例外の代わりにデフォルト値を返します。追加の値を取得する時に役立ちます。
 * <p>
 * ジェネリックの<code>get()</code>と<code>opt()</code>メソッドはキャストや問い合わせできるオブジェクトを返します。
 *<p>
 * <code>put</code>メソッドはオブジェクトに値を追加または置き換えをします。例えば、
 * <pre>
 * myString = new JSONObject()
 *         .put(&quot;JSON&quot;, &quot;Hello, World!&quot;).toString();
 * </pre>
 *は<code>{"JSON": "Hello, World"}</code>文字列を生成します。
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
 * <li>数字としてみていない時、<code>true</code>, <
 *
 */
public class JSONObject {
    /**
     * JSONObjectにおけるNULL値を定義するクラス。
     */
    private static final class Null {

        /**
    	 * Nullオブジェクトの単一のインスタンス
         *
         * @return NULL.
         */
        protected final Object clone() {
            return this;
        }

        /**
    	 * Nullオブジェクトはnullと等しいです。
         *
         * @param object
    	 *			  nullを確認するオブジェクト
         * @return
    	 *			  パラメータがJSONオブジェクトの時true。
         */
        public boolean equals(Object object) {
            return object == null || object == this;
        }

        /**
    	 * 「null」文字列を取得します。
         *
         * @return
    	 *        「null」文字列
         */
        public String toString() {
            return "null";
        }
    }

    /**
     * JSONオブジェクトのプロパティが保管されているMap
     */
    @SuppressWarnings("rawtypes")
	private final Map map;

    /**
     * <code>NULL</code> object than to use Java's <code>null</code> value.
     * <code>JSONObject.NULL.equals(null)</code> returns <code>true</code>.
     * <code>JSONObject.NULL.toString()</code> returns <code>"null"</code>.
     * を持つことでより便利になり、曖昧さが減少します。
     */
    public static final Object NULL = new Null();

    /**
     * コンストラクタ。
     */
    @SuppressWarnings("rawtypes")
	public JSONObject() {
        this.map = new HashMap();
    }

    /**
     * コンストラクタ。
     *
     * @param jsonObj
     *            A JSONObject.
     * @param names
	 *            文字列の配列
     * @throws JSONException
	 *
     * @exception JSONException
	 *            値が有限でない時、または名前が重複している時
     */
    JSONObject(JSONObject jsonObj, String[] names) {
        this();
        for (int i = 0; i < names.length; i += 1) {
            try {
                this.putOnce(names[i], jsonObj.opt(names[i]));
            } catch (Exception ignore) {
            }
        }
    }

    /**
     * コンストラクタ。
     *
     * @param tokener
	 *            ソース文字列を含むJSONトークンオブジェクト
     * @throws JSONException
	 *             ソース文字列にシンタックスエラーがある時、またはキーが重複している時
     */
    JSONObject(JSONTokener tokener) throws JSONException {
        this();
        char c;
        String key;

        if (tokener.nextClean() != '{') {
            throw tokener.syntaxError("A JSONObject text must begin with '{'");
        }
        for (;;) {
            c = tokener.nextClean();
            switch (c) {
            case 0:
                throw tokener.syntaxError("A JSONObject text must end with '}'");
            case '}':
                return;
            default:
                tokener.back();
                key = tokener.nextValue().toString();
            }

// キー が':'で続いている。

            c = tokener.nextClean();
            if (c != ':') {
                throw tokener.syntaxError("Expected a ':' after a key");
            }
            this.putOnce(key, tokener.nextValue());

// ペアが','で分割されている。

            switch (tokener.nextClean()) {
            case ';':
            case ',':
                if (tokener.nextClean() == '}') {
                    return;
                }
                tokener.back();
                break;
            case '}':
                return;
            default:
                throw tokener.syntaxError("Expected a ',' or '}'");
            }
        }
    }

    /**
     * コンストラクタ。
     *
     * @param map
	 *            JSONオブジェクトの中身を初期化するのに使われるMAPオブジェクト
     * @throws JSONException
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	public JSONObject(Map map) {
        this.map = new HashMap();
        if (map != null) {
            Iterator i = map.entrySet().iterator();
            while (i.hasNext()) {
                Map.Entry entry = (Map.Entry) i.next();
                Object value = entry.getValue();
                if (value != null) {
                    this.map.put(entry.getKey(), wrap(value));
                }
            }
        }
    }

    /**
     * コンストラクタ。
     *
     * @param bean
	 *            ゲッターメソッドのオブジェクト
     */
    JSONObject(Object bean) {
        this();
        this.populateMap(bean);
    }

    /**
     * コンストラクタ。
     *
     * @param object
     *            JSONオブジェクトを生成するのに使われるフィールドを持つオブジェクト
     * @param names
	 *            文字列の配列
     */
    @SuppressWarnings("rawtypes")
	JSONObject(Object object, String names[]) {
        this();
        Class c = object.getClass();
        for (int i = 0; i < names.length; i += 1) {
            String name = names[i];
            try {
                this.putOpt(name, c.getField(name).get(object));
            } catch (Exception ignore) {
            }
        }
    }

    /**
     * コンストラクタ。
     *
     * @param source
	 *            <code>{</code>&nbsp;<small>(left
     *            brace)</small> and ending with <code>}</code>
     *            &nbsp;<small>(right brace)</small>.　で始まる文字列
     * @exception JSONException
	 *            ソースにシンタックスエラーがある時、またはキーが重複している時
     */
    JSONObject(String source) throws JSONException {
        this(new JSONTokener(source));
    }

    /**
     * コンストラクタ。
     *
     * @param baseName
	 *            リソースバンドルの元となる名前
     * @param locale
	 *            ロケール用のResourceBundle
     * @throws JSONException
	 *            JSON例外が見つかった時
     */
    @SuppressWarnings("rawtypes")
	JSONObject(String baseName, Locale locale) throws JSONException {
        this();
        ResourceBundle bundle = ResourceBundle.getBundle(baseName, locale,
                Thread.currentThread().getContextClassLoader());

// Iterate through the keys in the bundle.

        Enumeration keys = bundle.getKeys();
        while (keys.hasMoreElements()) {
            Object key = keys.nextElement();
            if (key instanceof String) {

// Go through the path, ensuring that there is a nested JSONObject for each
// segment except the last. Add the value using the last segment's name into
// the deepest nested JSONObject.

                String[] path = ((String) key).split("\\.");
                int last = path.length - 1;
                JSONObject target = this;
                for (int i = 0; i < last; i += 1) {
                    String segment = path[i];
                    JSONObject nextTarget = target.optJSONObject(segment);
                    if (nextTarget == null) {
                        nextTarget = new JSONObject();
                        target.put(segment, nextTarget);
                    }
                    target = nextTarget;
                }
                target.put(path[last], bundle.getString((String) key));
            }
        }
    }

    /**
     * 要素を追加します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            キーに蓄積されたオブジェクト
     * @return this
     * @throws JSONException
	 *            値が不正な数の時、またはキーがnullの時
     */
    JSONObject accumulate(String key, Object value) throws JSONException {
        testValidity(value);
        Object object = this.opt(key);
        if (object == null) {
            this.put(key,
                    value instanceof JSONArray ? new JSONArray().put(value)
                            : value);
        } else if (object instanceof JSONArray) {
            ((JSONArray) object).put(value);
        } else {
            this.put(key, new JSONArray().put(object).put(value));
        }
        return this;
    }

    /**
     * 要素を追加します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            キーに蓄積されたオブジェクト
     * @return this
     * @throws JSONException
	 *            キーがnullの時、または現在の値がJSON配列のキーと関連づかない時
     */
    JSONObject append(String key, Object value) throws JSONException {
        testValidity(value);
        Object object = this.opt(key);
        if (object == null) {
            this.put(key, new JSONArray().put(value));
        } else if (object instanceof JSONArray) {
            this.put(key, ((JSONArray) object).put(value));
        } else {
            throw new JSONException("JSONObject[" + key
                    + "] is not a JSONArray.");
        }
        return this;
    }

    /**
     * double型をString型に変換します。
     *
     * @param d
	 *            double型
     * @return
	 *            String型
     */
    static String doubleToString(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            return "null";
        }

// Shave off trailing zeroes and decimal points, if possible.

        String string = Double.toString(d);
        if (string.indexOf('.') > 0 && string.indexOf('e') < 0
                && string.indexOf('E') < 0) {
            while (string.endsWith("0")) {
                string = string.substring(0, string.length() - 1);
            }
            if (string.endsWith(".")) {
                string = string.substring(0, string.length() - 1);
            }
        }
        return string;
    }

    /**
     * 値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            キーに関連づくオブジェクト
     * @throws JSONException
	 *            キーが見つからない時
     */
    Object get(String key) throws JSONException {
        if (key == null) {
            throw new JSONException("Null key.");
        }
        Object object = this.opt(key);
        if (object == null) {
            throw new JSONException("JSONObject[" + quote(key) + "] not found.");
        }
        return object;
    }

    /**
     * booleanの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            true
     * @throws JSONException
	 *            値がbooleanでない時、またはtrue, falseといった文字列である時
     */
    boolean getBoolean(String key) throws JSONException {
        Object object = this.get(key);
        if (object.equals(Boolean.FALSE)
                || (object instanceof String && ((String) object)
                        .equalsIgnoreCase("false"))) {
            return false;
        } else if (object.equals(Boolean.TRUE)
                || (object instanceof String && ((String) object)
                        .equalsIgnoreCase("true"))) {
            return true;
        }
        throw new JSONException("JSONObject[" + quote(key)
                + "] is not a Boolean.");
    }

    /**
     * doubleの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            数値
     * @throws JSONException
	 *            キーが見つからない時、または値が数値でなく、数値に変換できない時
     */
    double getDouble(String key) throws JSONException {
        Object object = this.get(key);
        try {
            return object instanceof Number ? ((Number) object).doubleValue()
                    : Double.parseDouble((String) object);
        } catch (Exception e) {
            throw new JSONException("JSONObject[" + quote(key)
                    + "] is not a number.");
        }
    }

    /**
     * intの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            intの値
     * @throws JSONException
	 *             キーが見つからない時、または値が数値に変換できない時
     */
    int getInt(String key) throws JSONException {
        Object object = this.get(key);
        try {
            return object instanceof Number ? ((Number) object).intValue()
                    : Integer.parseInt((String) object);
        } catch (Exception e) {
            throw new JSONException("JSONObject[" + quote(key)
                    + "] is not an int.");
        }
    }

    /**
     * JSONArrayの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            JSON配列の値
     * @throws JSONException
	 *            キーが見つからない時、または値がJSON配列でないとき
     */
    JSONArray getJSONArray(String key) throws JSONException {
        Object object = this.get(key);
        if (object instanceof JSONArray) {
            return (JSONArray) object;
        }
        throw new JSONException("JSONObject[" + quote(key)
                + "] is not a JSONArray.");
    }

    /**
     * JSONObjectの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            JSONオブジェクトの値
     * @throws JSONException
	 *            キーが見つからない時、または値がJSONオブジェクトでない時
     */
    JSONObject getJSONObject(String key) throws JSONException {
        Object object = this.get(key);
        if (object instanceof JSONObject) {
            return (JSONObject) object;
        }
        throw new JSONException("JSONObject[" + quote(key)
                + "] is not a JSONObject.");
    }

    /**
     * longの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            longの値
     * @throws JSONException
	 *            キーが見つからない時、または値がlong型に変換できない時
     */
    long getLong(String key) throws JSONException {
        Object object = this.get(key);
        try {
            return object instanceof Number ? ((Number) object).longValue()
                    : Long.parseLong((String) object);
        } catch (Exception e) {
            throw new JSONException("JSONObject[" + quote(key)
                    + "] is not a long.");
        }
    }

    /**
     * 指定したJSONObjectの名前を取得します。
     *
     * @return
	 *            フィールド名の配列、または名前がない時null
     */
    @SuppressWarnings("rawtypes")
	static String[] getNames(JSONObject jsonObj) {
        int length = jsonObj.length();
        if (length == 0) {
            return null;
        }
        Iterator iterator = jsonObj.keys();
        String[] names = new String[length];
        int i = 0;
        while (iterator.hasNext()) {
            names[i] = (String) iterator.next();
            i += 1;
        }
        return names;
    }

    /**
     * 指定したオブジェクトのフィールド名の値を取得します。
     *
     * @return
	 *        フィールド名の配列、または名前がない時null
     */
    @SuppressWarnings("rawtypes")
	static String[] getNames(Object object) {
        if (object == null) {
            return null;
        }
        Class klass = object.getClass();
        Field[] fields = klass.getFields();
        int length = fields.length;
        if (length == 0) {
            return null;
        }
        String[] names = new String[length];
        for (int i = 0; i < length; i += 1) {
            names[i] = fields[i].getName();
        }
        return names;
    }

    /**
     * Stringの値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            stringの値
     * @throws JSONException
	 *             キーにstringの値がない時
     */
    String getString(String key) throws JSONException {
        Object object = this.get(key);
        if (object instanceof String) {
            return (String) object;
        }
        throw new JSONException("JSONObject[" + quote(key) + "] not a string.");
    }

    /**
     * 指定したキー要素の存在をチェックします。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            JSONオブジェクトにキーが存在する時true
     */
    boolean has(String key) {
        return this.map.containsKey(key);
    }

    /**
     * 指定したキーのプロパティをインクリメントします。
     * 存在しない場合は1として作成します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            this
     * @throws JSONException
	 *            Integer, Long, Double, or Floatでない名前がすでに存在する時
     */
    JSONObject increment(String key) throws JSONException {
        Object value = this.opt(key);
        if (value == null) {
            this.put(key, 1);
        } else if (value instanceof Integer) {
            this.put(key, ((Integer) value).intValue() + 1);
        } else if (value instanceof Long) {
            this.put(key, ((Long) value).longValue() + 1);
        } else if (value instanceof Double) {
            this.put(key, ((Double) value).doubleValue() + 1);
        } else if (value instanceof Float) {
            this.put(key, ((Float) value).floatValue() + 1);
        } else {
            throw new JSONException("Unable to increment [" + quote(key) + "].");
        }
        return this;
    }

    /**
     * 指定したキーの要素がNULLかどうかを判別します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            値がキーに関連づいていない時true、値がJSONオブジェクトの時null
     */
    boolean isNull(String key) {
        return JSONObject.NULL.equals(this.opt(key));
    }

    /**
     * キーを取得します。
     *
     * @return
	 *            キーの数値
     */
    @SuppressWarnings("rawtypes")
	Iterator keys() {
        return this.keySet().iterator();
    }

    /**
     * キーセットを取得します。
     *
     * @return
	 *       キーセット
     */
    @SuppressWarnings("rawtypes")
	Set keySet() {
        return this.map.keySet();
    }

    /**
     * 要素の数を取得します。
     *
     * @return
	 *            JSONオブジェクトの中のキーの数
     */
    int length() {
        return this.map.size();
    }

    /**
     * 要素の名前を取得します。
     *
     * @return
	 *            キー文字列を含むJSON配列、またはJSONオブジェクトが空の時null
     */
    @SuppressWarnings("rawtypes")
	JSONArray names() {
        JSONArray ja = new JSONArray();
        Iterator keys = this.keys();
        while (keys.hasNext()) {
            ja.put(keys.next());
        }
        return ja.length() == 0 ? null : ja;
    }

    /**
     * 数値を文字列に変換します。
     *
     * @param number
	 *            数値
     * @return
	 *            文字列
     * @throws JSONException
	 *            nが有限の数値の時
     */
    static String numberToString(Number number) throws JSONException {
        if (number == null) {
            throw new JSONException("Null pointer");
        }
        testValidity(number);

// Shave off trailing zeroes and decimal points, if possible.

        String string = number.toString();
        if (string.indexOf('.') > 0 && string.indexOf('e') < 0
                && string.indexOf('E') < 0) {
            while (string.endsWith("0")) {
                string = string.substring(0, string.length() - 1);
            }
            if (string.endsWith(".")) {
                string = string.substring(0, string.length() - 1);
            }
        }
        return string;
    }

    /**
     * Object型のオプション値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            Object型の値、値でない時null
     */
    Object opt(String key) {
        return key == null ? null : this.map.get(key);
    }

    /**
     * boolean型のオプション値を取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            オプション値
     */
    boolean optBoolean(String key) {
        return this.optBoolean(key, false);
    }

    /**
	 * オプションをbooleanとして取得します。
	 * 指定したインデックスに値がない場合、もしくはboolean型、String型のtrue/falseでない場合はデフォルトの値を返します。
     *
     * @param key
	 *            キー文字列
     * @param defaultValue
	 *            デフォルト値
     * @return
	 *            The truth.
     */
    boolean optBoolean(String key, boolean defaultValue) {
        try {
            return this.getBoolean(key);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
	 * オプションをdoubleとして取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            オブジェクトの値
     */
    double optDouble(String key) {
        return this.optDouble(key, Double.NaN);
    }

    /**
	 * オプションをdoubleとして取得します。
	 * 指定したインデックスに値がない場合、もしくは数値型でない場合はデフォルトの値を返します。
     *
     * @param key
	 *            キー文字列
     * @param defaultValue
	 *            デフォルト値
     * @return
	 *            オブジェクトの値
     */
    double optDouble(String key, double defaultValue) {
        try {
            return this.getDouble(key);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
	 * オプションをintとして取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            オブジェクトの値
     */
    int optInt(String key) {
        return this.optInt(key, 0);
    }

    /**
	 * オプションをintとして取得します。
	 * 指定したインデックスに値がない場合、もしくはint型でない場合、変換できない数値の場合はデフォルトの値を返します。
     *
     * @param key
	 *            キー文字列
     * @param defaultValue
	 *            デフォルト値
     * @return
	 *            オブジェクトの値
     */
    int optInt(String key, int defaultValue) {
        try {
            return this.getInt(key);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
	 * オプションをJSONArrayとして取得します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            JSON配列の値
     */
    JSONArray optJSONArray(String key) {
        Object object = this.opt(key);
        return object instanceof JSONArray ? (JSONArray) object : null;
    }

    /**
	 * オプションをJSONObjectとして取得します。
	 * 指定したインデックスに値がない場合、nullを返します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            JSONオブジェクトの値
     */
    JSONObject optJSONObject(String key) {
        Object object = this.opt(key);
        return object instanceof JSONObject ? (JSONObject) object : null;
    }

    /**
	 * オプションをlongとして取得します。
	 * 変換できない値は0で返します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            オブジェクトの値
     */
    long optLong(String key) {
        return this.optLong(key, 0);
    }

    /**
	 * オプションをlongとして取得します。
	 * 指定したインデックスに値がない場合、もしくはlong型に変換できない値の場合はデフォルトの値を返します。
     *
     * @param key
	 *            キー文字列の値
     * @param defaultValue
	 *            デフォルト値
     * @return
	 *            オブジェクトの値
     */
    long optLong(String key, long defaultValue) {
        try {
            return this.getLong(key);
        } catch (Exception e) {
            return defaultValue;
        }
    }

    /**
	 * オプションをStringとして取得します。
	 * 指定したインデックスに値がない場合、もしくはString型に変換できない値の場合は空文字を返します。
     *
     * @param key
	 *            キー文字列
     * @return
	 *            stringの値
     */
    String optString(String key) {
        return this.optString(key, "");
    }

    /**
	 * オプションをStringとして取得します。
	 * 指定したインデックスに値がない場合はデフォルトの値を返します。
     *
     * @param key
	 *            キー文字列
     * @param defaultValue
	 *            デフォルト値
     * @return
	 *            stringの値
     */
    String optString(String key, String defaultValue) {
        Object object = this.opt(key);
        return NULL.equals(object) ? defaultValue : object.toString();
    }

    /**
     * マップを作成します。
     * @param bean
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	private void populateMap(Object bean) {
        Class klass = bean.getClass();

// If klass is a System class then set includeSuperClass to false.

        boolean includeSuperClass = klass.getClassLoader() != null;

        Method[] methods = includeSuperClass ? klass.getMethods() : klass
                .getDeclaredMethods();
        for (int i = 0; i < methods.length; i += 1) {
            try {
                Method method = methods[i];
                if (Modifier.isPublic(method.getModifiers())) {
                    String name = method.getName();
                    String key = "";
                    if (name.startsWith("get")) {
                        if ("getClass".equals(name)
                                || "getDeclaringClass".equals(name)) {
                            key = "";
                        } else {
                            key = name.substring(3);
                        }
                    } else if (name.startsWith("is")) {
                        key = name.substring(2);
                    }
                    if (key.length() > 0
                            && Character.isUpperCase(key.charAt(0))
                            && method.getParameterTypes().length == 0) {
                        if (key.length() == 1) {
                            key = key.toLowerCase();
                        } else if (!Character.isUpperCase(key.charAt(1))) {
                            key = key.substring(0, 1).toLowerCase()
                                    + key.substring(1);
                        }

                        Object result = method.invoke(bean, (Object[]) null);
                        if (result != null) {
                            this.map.put(key, wrap(result));
                        }
                    }
                }
            } catch (Exception ignore) {
            }
        }
    }

    /**
     * booleanの値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            booleanの値
     * @return this.
     * @throws JSONException
	 *            キーがnullの時
     */
    JSONObject put(String key, boolean value) throws JSONException {
        this.put(key, value ? Boolean.TRUE : Boolean.FALSE);
        return this;
    }

    /**
     * コレクションを挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            コレクション
     * @return this
     * @throws JSONException
     */
    @SuppressWarnings("rawtypes")
	JSONObject put(String key, Collection value) throws JSONException {
        this.put(key, new JSONArray(value));
        return this;
    }

    /**
     * doubleの値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            doubleの値
     * @return this
     * @throws JSONException
	 *            キーがnullの時、または数値が不正の時
     */
    JSONObject put(String key, double value) throws JSONException {
        this.put(key, new Double(value));
        return this;
    }

    /**
     * intの値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            intの値
     * @return this
     * @throws JSONException
	 *            キーがnullの時
     */
    JSONObject put(String key, int value) throws JSONException {
        this.put(key, new Integer(value));
        return this;
    }

    /**
     * longの値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            longの値
     * @return this
     * @throws JSONException
	 *            キーがnullの時
     */
    JSONObject put(String key, long value) throws JSONException {
        this.put(key, new Long(value));
        return this;
    }

    /**
	 * Map型(HashMap等)の値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            Mapの値
     * @return this
     * @throws JSONException
     */
    @SuppressWarnings("rawtypes")
	public JSONObject put(String key, Map value) throws JSONException {
        this.put(key, new JSONObject(value));
        return this;
    }

    /**
     * Objectの値を挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            objectの値
     * @return this
     * @throws JSONException
	 *            値が有限でない数値の時、またはキーがnullの時
     */
    @SuppressWarnings("unchecked")
	JSONObject put(String key, Object value) throws JSONException {
        if (key == null) {
            throw new NullPointerException("Null key.");
        }
        if (value != null) {
            testValidity(value);
            this.map.put(key, value);
        } else {
            this.remove(key);
        }
        return this;
    }

    /**
     * booleanの値を指定された番号に挿入します。
     *
     * @param key
     * @param value
     * @return his.
     * @throws JSONException
	 *            キーが重複している時
     */
    JSONObject putOnce(String key, Object value) throws JSONException {
        if (key != null && value != null) {
            if (this.opt(key) != null) {
                throw new JSONException("Duplicate key \"" + key + "\"");
            }
            this.put(key, value);
        }
        return this;
    }

    /**
     * コレクションを指定された番号に挿入します。
     *
     * @param key
	 *            キー文字列
     * @param value
	 *            objectの値
     * @return this
     * @throws JSONException
	 *            値が有限でない数値の時
     */
    JSONObject putOpt(String key, Object value) throws JSONException {
        if (key != null && value != null) {
            this.put(key, value);
        }
        return this;
    }

    /**
     * 特殊文字列をエスケープして出力します。
     *
     * @param string
	 *            文字列
     * @return
	 *            JSONテキストで正しくフォーマットされた文字列
     */
    static String quote(String string) {
        StringWriter sw = new StringWriter();
        synchronized (sw.getBuffer()) {
            try {
                return quote(string, sw).toString();
            } catch (IOException ignored) {
            	// will never happen - we are writing to a string writer
                return "";
            }
        }
    }

    static Writer quote(String string, Writer writer) throws IOException {
        if (string == null || string.length() == 0) {
            writer.write("\"\"");
            return writer;
        }

        char previousChar;
        char currentChar = 0;
        String hexString;
        int i;
        int len = string.length();

        writer.write('"');
        for (i = 0; i < len; i += 1) {
            previousChar = currentChar;
            currentChar = string.charAt(i);
            switch (currentChar) {
            case '\\':
            case '"':
                writer.write('\\');
                writer.write(currentChar);
                break;
            case '/':
                if (previousChar == '<') {
                    writer.write('\\');
                }
                writer.write(currentChar);
                break;
            case '\b':
                writer.write("\\b");
                break;
            case '\t':
                writer.write("\\t");
                break;
            case '\n':
                writer.write("\\n");
                break;
            case '\f':
                writer.write("\\f");
                break;
            case '\r':
                writer.write("\\r");
                break;
            default:
                if (currentChar < ' ' || (currentChar >= '\u0080' && currentChar < '\u00a0')
                        || (currentChar >= '\u2000' && currentChar < '\u2100')) {
                    writer.write("\\u");
                    hexString = Integer.toHexString(currentChar);
                    writer.write("0000", 0, 4 - hexString.length());
                    writer.write(hexString);
                } else {
                    writer.write(currentChar);
                }
            }
        }
        writer.write('"');
        return writer;
    }

    /**
     * 指定された要素を削除します。
     *
     * @param key
	 *            削除される名前
     * @return
	 *            名前に関連づく値、または値がない時null
     */
    Object remove(String key) {
        return this.map.remove(key);
    }

    /**
     * String型を値に変換します。
     *
     * @param string
	 *            文字列
     * @return
	 *            JSONの値
     */
    static Object stringToValue(String string) {
        Double d;
        if (string.equals("")) {
            return string;
        }
        if (string.equalsIgnoreCase("true")) {
            return Boolean.TRUE;
        }
        if (string.equalsIgnoreCase("false")) {
            return Boolean.FALSE;
        }
        if (string.equalsIgnoreCase("null")) {
            return JSONObject.NULL;
        }

        /*
         * If it might be a number, try converting it. If a number cannot be
         */

        char b = string.charAt(0);
        if ((b >= '0' && b <= '9') || b == '-') {
            try {
                if (string.indexOf('.') > -1 || string.indexOf('e') > -1
                        || string.indexOf('E') > -1) {
                    d = Double.valueOf(string);
                    if (!d.isInfinite() && !d.isNaN()) {
                        return d;
                    }
                } else {
                    Long myLong = new Long(string);
                    if (string.equals(myLong.toString())) {
                        if (myLong.longValue() == myLong.intValue()) {
                            return new Integer(myLong.intValue());
                        } else {
                            return myLong;
                        }
                    }
                }
            } catch (Exception ignore) {
            }
        }
        return string;
    }

    /**
	 * objectがNaNまたは無限の数の時例外をスローします。
     *
     * @param object
	 *            テストオブジェクト
     * @throws JSONException
	 *            oが無限の数の時
     */
    static void testValidity(Object object) throws JSONException {
        if (object != null) {
            if (object instanceof Double) {
                if (((Double) object).isInfinite() || ((Double) object).isNaN()) {
                    throw new JSONException(
                            "JSON does not allow non-finite numbers.");
                }
            } else if (object instanceof Float) {
                if (((Float) object).isInfinite() || ((Float) object).isNaN()) {
                    throw new JSONException(
                            "JSON does not allow non-finite numbers.");
                }
            }
        }
    }

    /**
     * JSONArrayに変換します。
     *
     * @param names
	 *            キー文字列のリストを含むJSON配列
     * @return
	 *            JSON配列の値
     * @throws JSONException
	 *            値が無限の数の時
     */
    JSONArray toJSONArray(JSONArray names) throws JSONException {
        if (names == null || names.length() == 0) {
            return null;
        }
        JSONArray ja = new JSONArray();
        for (int i = 0; i < names.length(); i += 1) {
            ja.put(this.opt(names.getString(i)));
        }
        return ja;
    }

    /**
     * JSONテキストに変換します。
     *
     * @return
	 *         配列の印刷可能な、表示、送信可能な表現。
     */
    public String toString() {
        try {
            return this.toString(0);
        } catch (Exception e) {
            return null;
        }
    }

    /**
	 * JSONテキストを作成します。
     *
     * @param indentFactor
	 *            インデントに追加する空白の数
     * @return
	 *         配列の印刷可能な、表示、送信可能な表現。
     * @throws JSONException
     *             無効な数値を含んでいる場合
     */
    public String toString(int indentFactor) throws JSONException {
        StringWriter w = new StringWriter();
        synchronized (w.getBuffer()) {
            return this.write(w, indentFactor, 0).toString();
        }
    }

    /**
	 * オブジェクトの値のJSONテキストを作成します。
     *
     * @param value
	 *            シリアライズ可能な値
     * @return
	 *         配列の印刷可能な、表示、送信可能な表現。
     * @throws JSONException
	 *             値が不正な値を含むとき
     */
    @SuppressWarnings("rawtypes")
	static String valueToString(Object value) throws JSONException {
        if (value == null || value.equals(null)) {
            return "null";
        }
        if (value instanceof JSONString) {
            Object object;
            try {
                object = ((JSONString) value).toJSONString();
            } catch (Exception e) {
                throw new JSONException(e);
            }
            if (object instanceof String) {
                return (String) object;
            }
            throw new JSONException("Bad value from toJSONString: " + object);
        }
        if (value instanceof Number) {
            return numberToString((Number) value);
        }
        if (value instanceof Boolean || value instanceof JSONObject
                || value instanceof JSONArray) {
            return value.toString();
        }
        if (value instanceof Map) {
            return new JSONObject((Map) value).toString();
        }
        if (value instanceof Collection) {
            return new JSONArray((Collection) value).toString();
        }
        if (value.getClass().isArray()) {
            return new JSONArray(value).toString();
        }
        return quote(value.toString());
    }

    /**
	 * 必要に応じて値をラップします。
     *
     * @param object
	 *            ラップするオブジェクト
     * @return
	 *         ラップした値
     */
    @SuppressWarnings("rawtypes")
	static Object wrap(Object object) {
        try {
            if (object == null) {
                return NULL;
            }
            if (object instanceof JSONObject || object instanceof JSONArray
                    || NULL.equals(object) || object instanceof JSONString
                    || object instanceof Byte || object instanceof Character
                    || object instanceof Short || object instanceof Integer
                    || object instanceof Long || object instanceof Boolean
                    || object instanceof Float || object instanceof Double
                    || object instanceof String) {
                return object;
            }

            if (object instanceof Collection) {
                return new JSONArray((Collection) object);
            }
            if (object.getClass().isArray()) {
                return new JSONArray(object);
            }
            if (object instanceof Map) {
                return new JSONObject((Map) object);
            }
            Package objectPackage = object.getClass().getPackage();
            String objectPackageName = objectPackage != null ? objectPackage
                    .getName() : "";
            if (objectPackageName.startsWith("java.")
                    || objectPackageName.startsWith("javax.")
                    || object.getClass().getClassLoader() == null) {
                return object.toString();
            }
            return new JSONObject(object);
        } catch (Exception exception) {
            return null;
        }
    }

    /**
	 * JSONオブジェクトのコンテンツをJSONテキストとして記述します。
     *
     * @return
	 *         The writer.
     * @throws JSONException
     */
    Writer write(Writer writer) throws JSONException {
        return this.write(writer, 0, 0);
    }

    @SuppressWarnings("rawtypes")
	static final Writer writeValue(Writer writer, Object value,
            int indentFactor, int indent) throws JSONException, IOException {
        if (value == null || value.equals(null)) {
            writer.write("null");
        } else if (value instanceof JSONObject) {
            ((JSONObject) value).write(writer, indentFactor, indent);
        } else if (value instanceof JSONArray) {
            ((JSONArray) value).write(writer, indentFactor, indent);
        } else if (value instanceof Map) {
            new JSONObject((Map) value).write(writer, indentFactor, indent);
        } else if (value instanceof Collection) {
            new JSONArray((Collection) value).write(writer, indentFactor,
                    indent);
        } else if (value.getClass().isArray()) {
            new JSONArray(value).write(writer, indentFactor, indent);
        } else if (value instanceof Number) {
            writer.write(numberToString((Number) value));
        } else if (value instanceof Boolean) {
            writer.write(value.toString());
        } else if (value instanceof JSONString) {
            Object o;
            try {
                o = ((JSONString) value).toJSONString();
            } catch (Exception e) {
                throw new JSONException(e);
            }
            writer.write(o != null ? o.toString() : quote(value.toString()));
        } else {
            quote(value.toString(), writer);
        }
        return writer;
    }

    static final void indent(Writer writer, int indent) throws IOException {
        for (int i = 0; i < indent; i += 1) {
            writer.write(' ');
        }
    }

    /**
	 * JSONオブジェクトのコンテンツをJSONテキストとして記述します。
     *
     * @return
	 *         The writer.
     * @throws JSONException
     */
    @SuppressWarnings("rawtypes")
	Writer write(Writer writer, int indentFactor, int indent)
            throws JSONException {
        try {
            boolean commanate = false;
            final int length = this.length();
            Iterator keys = this.keys();
            writer.write('{');

            if (length == 1) {
                Object key = keys.next();
                writer.write(quote(key.toString()));
                writer.write(':');
                if (indentFactor > 0) {
                    writer.write(' ');
                }
                writeValue(writer, this.map.get(key), indentFactor, indent);
            } else if (length != 0) {
                final int newindent = indent + indentFactor;
                while (keys.hasNext()) {
                    Object key = keys.next();
                    if (commanate) {
                        writer.write(',');
                    }
                    if (indentFactor > 0) {
                        writer.write('\n');
                    }
                    indent(writer, newindent);
                    writer.write(quote(key.toString()));
                    writer.write(':');
                    if (indentFactor > 0) {
                        writer.write(' ');
                    }
                    writeValue(writer, this.map.get(key), indentFactor,
                            newindent);
                    commanate = true;
                }
                if (indentFactor > 0) {
                    writer.write('\n');
                }
                indent(writer, indent);
            }
            writer.write('}');
            return writer;
        } catch (IOException exception) {
            throw new JSONException(exception);
        }
    }
}
