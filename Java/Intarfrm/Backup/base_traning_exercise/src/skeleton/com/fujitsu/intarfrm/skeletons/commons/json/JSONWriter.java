package com.fujitsu.intarfrm.skeletons.commons.json;

import java.io.IOException;
import java.io.Writer;

/*
Copyright (c) 2006 JSON.org

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

/**
 * JSONWriterはJSONテキストを生成する迅速で便利な方法を提供します。
 * テキストは厳密なJSONシンタックスルールを生成します。
 * 空白は追加されず、移行や保存の結果が準備されます。
 * JSONWriterのどのインスタンスもJSONテキストを生成できます。
 * <p>
 * JSONWriterインスタンスはテキストへの値の追加に<code>value</code> メソッドを追加し、
 * バリューオブジェクトの前のキーを追加するために<code>key</code>メソッドを追加します。
 * 配列を作成、バインドする<code>array</code>や<code>endArray</code>メソッド、
 * オブジェクトの値を作成、バインドする<code>object</code>や<code>endObject</code>があります。
 * これらのメソッドはすべてJSONWriterインスタンスを返し、カスケードされたスタイルを許可します。例えば、
 * <pre>
 * myString = new JSONStringer()
 *     .object()
 *         .key("JSON")
 *         .value("Hello, World!")
 *     .endObject()
 *     .toString();</pre> which produces the string <pre>
 * {"JSON":"Hello, World!"}</pre>
 * <p>
 * 最初に呼ばれるメソッドは<code>array</code>または<code>object</code>です。
 * カンマやカラムを追加するメソッドはありません。JSONWriterはそれらを追加します。
 * オブジェクトや配列は20レベルの深さまでネストされることが可能です。
 * <p>
 * 文字列をビルドするのにJSONObjectを使うよりも容易な場合があります。
 *
 */
class JSONWriter {
    private static final int maxdepth = 200;

    /**
	 * 次の値を出力する前にカンマを出力する時、カンマフラグを設定します。
     */
    private boolean comma;

    /**
     * 現在のモードです。 値:
     * 'a' (array),
     * 'd' (done),
     * 'i' (initial),
     * 'k' (key),
     * 'o' (object).
     */
    protected char mode;

    /**
     * object/arrayスタック.
     */
    private final JSONObject stack[];

    /**
     * スタックのトップインデックス。0の値が指す値でスタックは空です。
     */
    private int top;

    /**
     * 出力を受け取るwriterです。
     */
    protected Writer writer;

    /**
     * 新しいJSONWriterを作成します。
     */
    JSONWriter(Writer w) {
        this.comma = false;
        this.mode = 'i';
        this.stack = new JSONObject[maxdepth];
        this.top = 0;
        this.writer = w;
    }

    /**
	 * 値を追加します。
     * @param string
	 *              文字列の値
     * @return this
     * @throws JSONException
	 *              シーケンス外の値の時
     */
    private JSONWriter append(String string) throws JSONException {
        if (string == null) {
            throw new JSONException("Null pointer");
        }
        if (this.mode == 'o' || this.mode == 'a') {
            try {
                if (this.comma && this.mode == 'a') {
                    this.writer.write(',');
                }
                this.writer.write(string);
            } catch (IOException e) {
                throw new JSONException(e);
            }
            if (this.mode == 'o') {
                this.mode = 'k';
            }
            this.comma = true;
            return this;
        }
        throw new JSONException("Value out of sequence.");
    }

    /**
	 * 新しい配列の追加を開始します。
     * @return this
     * @throws JSONException
	 *        ネストが深いとき、またはオブジェクトが異なる場所で開始されている時
     */
    JSONWriter array() throws JSONException {
        if (this.mode == 'i' || this.mode == 'o' || this.mode == 'a') {
            this.push(null);
            this.append("[");
            this.comma = false;
            return this;
        }
        throw new JSONException("Misplaced array.");
    }

    /**
	 * 終了する
     * @param mode
	 *        Mode
     * @param c
	 *        Closing character
     * @return this
     * @throws JSONException
	 *        If unbalanced.
     */
    private JSONWriter end(char mode, char c) throws JSONException {
        if (this.mode != mode) {
            throw new JSONException(mode == 'a'
                ? "Misplaced endArray."
                : "Misplaced endObject.");
        }
        this.pop(mode);
        try {
            this.writer.write(c);
        } catch (IOException e) {
            throw new JSONException(e);
        }
        this.comma = true;
        return this;
    }

    /**
	 * 配列を終了します。
     * @return this
     * @throws JSONException
	 *        誤ってネストされた時
     */
    JSONWriter endArray() throws JSONException {
        return this.end('a', ']');
    }

    /**
	 * オブジェクトを終了します。
     * @return this
     * @throws JSONException
	 *        誤ってネストされた時
     */
    JSONWriter endObject() throws JSONException {
        return this.end('k', '}');
    }

    /**
	 * キーを追加します。
     * @param string
	 *        キー文字列
     * @return this
     * @throws JSONException
	 *        キーが範囲外の時。
     */
    JSONWriter key(String string) throws JSONException {
        if (string == null) {
            throw new JSONException("Null key.");
        }
        if (this.mode == 'k') {
            try {
                this.stack[this.top - 1].putOnce(string, Boolean.TRUE);
                if (this.comma) {
                    this.writer.write(',');
                }
                this.writer.write(JSONObject.quote(string));
                this.writer.write(':');
                this.comma = false;
                this.mode = 'o';
                return this;
            } catch (IOException e) {
                throw new JSONException(e);
            }
        }
        throw new JSONException("Misplaced key.");
    }


    /**
	 * 新しいオブジェクトの追加を開始します。
     * @return this
     * @throws JSONException
	 *        ネストがとても深い時、またはオブジェクトが誤った場所で開始された時
     */
    JSONWriter object() throws JSONException {
        if (this.mode == 'i') {
            this.mode = 'o';
        }
        if (this.mode == 'o' || this.mode == 'a') {
            this.append("{");
            this.push(new JSONObject());
            this.comma = false;
            return this;
        }
        throw new JSONException("Misplaced object.");

    }


    /**
     * 配列またはオブジェクトスコープをポップします。
     * @param c
     *        閉じるスコープ
     * @throws JSONException
     *        ネストが誤っている時
     */
    private void pop(char c) throws JSONException {
        if (this.top <= 0) {
            throw new JSONException("Nesting error.");
        }
        char m = this.stack[this.top - 1] == null ? 'a' : 'k';
        if (m != c) {
            throw new JSONException("Nesting error.");
        }
        this.top -= 1;
        this.mode = this.top == 0
            ? 'd'
            : this.stack[this.top - 1] == null
            ? 'a'
            : 'k';
    }

    /**
     * 配列またはオブジェクトスコープをポップします。
     * @param c
     *        開くスコープ
     * @throws JSONException
     *        JSON例外
     */
    private void push(JSONObject jo) throws JSONException {
        if (this.top >= maxdepth) {
            throw new JSONException("Nesting too deep.");
        }
        this.stack[this.top] = jo;
        this.mode = jo == null ? 'a' : 'k';
        this.top += 1;
    }


    /**
     * <code>true</code> または<code>false</code>を追加します。
     * @param b
     *        ブール型
     * @return this
     * @throws JSONException
     */
    JSONWriter value(boolean b) throws JSONException {
        return this.append(b ? "true" : "false");
    }

    /**
     * double型の値を追加します。
     * @param d
     *        double型の値
     * @return this
     * @throws JSONException
     *        JSON例外
     */
    JSONWriter value(double d) throws JSONException {
        return this.value(new Double(d));
    }

    /**
     * long型の値を追加します。
     * @param l
     *        long型の値
     * @return this
     * @throws JSONException
     */
    JSONWriter value(long l) throws JSONException {
        return this.append(Long.toString(l));
    }


    /**
     * object型の値を追加します。
     * @param object
     *        追加するオブジェクト
     * @return this
     * @throws JSONException
     *        値がシーケンス外の時
     */
    JSONWriter value(Object object) throws JSONException {
        return this.append(JSONObject.valueToString(object));
    }
}
