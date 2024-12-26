package com.fujitsu.intarfrm.skeletons.commons.json;

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

import java.io.StringWriter;

/**
 * JSONStringerはJSONテキストを生成する迅速で便利な方法を提供します。
 * テキストは厳密なJSONシンタックスルールを生成します。
 * 空白は追加されず、移行や保存の結果が準備されます。
 * JSONStringerのどのインスタンスもJSONテキストを生成できます。
 * <p>
 * JSONStringerインスタンスはテキストへの値の追加に<code>value</code> メソッドを追加し、
 * バリューオブジェクトの前のキーを追加するために<code>key</code>メソッドを追加します。
 * 配列を作成、バインドする<code>array</code>や<code>endArray</code>メソッド、
 * オブジェクトの値を作成、バインドする<code>object</code>や<code>endObject</code>があります。
 * これらのメソッドはすべてJSONStringerインスタンスを返し、カスケードされたスタイルを許可します。例えば、
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
 * カンマやカラムを追加するメソッドはありません。JSONStringerはそれらを追加します。
 * オブジェクトや配列は20レベルの深さまでネストされることが可能です。
 * <p>
 * 文字列をビルドするのにJSONObjectを使うよりも容易な場合があります。
 */
class JSONStringer extends JSONWriter {
    /**
     * 新しいJSONStringerを作成します。
     */
    JSONStringer() {
        super(new StringWriter());
    }

    /**
	 * JSONテキストを返します。
	 * このメソッドはJSON文字列インスタンスの生成物を取得するために使用されます。
	 * JSONテキストの生成に失敗した時、<code>null</code>を返します。
     * @return
	 *        JSONテキスト
     */
    public String toString() {
        return this.mode == 'd' ? this.writer.toString() : null;
    }
}
