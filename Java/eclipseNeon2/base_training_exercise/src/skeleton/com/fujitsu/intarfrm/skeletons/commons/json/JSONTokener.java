package com.fujitsu.intarfrm.skeletons.commons.json;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.io.StringReader;

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

/**
 * JSON表記のデータをパースするためのクラスです。
 * 
 * @author INTARFRM
 */
class JSONTokener {

	/**
	 * 判別対象文字
	 */
    private long    character;
    /**
     * データの終了
     */
    private boolean eof;
    /**
     * インデックス
     */
    private long    index;
    /**
     * 行番号
     */
    private long    line;
    /**
     * 直前の文字
     */
    private char    previous;
    /**
     * リーダ
     */
    private Reader  reader;
    /**
     * 直前の文字を判定に使用するかどうか
     */
    private boolean usePrevious;


    /**
     * コンストラクタ。
     *
     * @param reader     A reader.
     */
    JSONTokener(Reader reader) {
        this.reader = reader.markSupported()
            ? reader
            : new BufferedReader(reader);
        this.eof = false;
        this.usePrevious = false;
        this.previous = 0;
        this.index = 0;
        this.character = 1;
        this.line = 1;
    }


    /**
     * コンストラクタ。
     */
    JSONTokener(InputStream inputStream) throws JSONException {
        this(new InputStreamReader(inputStream));
    }


    /**
     * コンストラクタ。
     *
     * @param s     ソース文字列
     */
    JSONTokener(String s) {
        this(new StringReader(s));
    }


    /**
     * 現在の文字を一時的に保存します。
     * 次の文字判別に現在の文字を使用する場合に、このメソッドを使用します。
     */
    void back() throws JSONException {
        if (this.usePrevious || this.index <= 0) {
            throw new JSONException("Stepping back two steps is not supported");
        }
        this.index -= 1;
        this.character -= 1;
        this.usePrevious = true;
        this.eof = false;
    }


    /**
     * 文字を16進数(base16エンコード)で取得します。
     * @param c
	 *         「0」～「9」、「A」～「F」、「a」～「f」の文字
     * @return
	 *         「0」～「15」のint型の整数、cが16進数でない時「-1」
     */
    static int dehexchar(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        if (c >= 'A' && c <= 'F') {
            return c - ('A' - 10);
        }
        if (c >= 'a' && c <= 'f') {
            return c - ('a' - 10);
        }
        return -1;
    }

    boolean end() {
        return this.eof && !this.usePrevious;
    }


    /**
     * 次の文字を検査します。
     * @return
	 *         ソースの最後でない時、true
     */
    boolean more() throws JSONException {
        this.next();
        if (this.end()) {
            return false;
        }
        this.back();
        return true;
    }


    /**
     * JSONデータから次の文字を取得します。
     *
     * @return
	 *         次の文字。ソースの最後の文字の時、0。
     */
    char next() throws JSONException {
        int c;
        if (this.usePrevious) {
            this.usePrevious = false;
            c = this.previous;
        } else {
            try {
                c = this.reader.read();
            } catch (IOException exception) {
                throw new JSONException(exception);
            }

            if (c <= 0) { // End of stream
                this.eof = true;
                c = 0;
            }
        }
        this.index += 1;
        if (this.previous == '\r') {
            this.line += 1;
            this.character = c == '\n' ? 0 : 1;
        } else if (c == '\n') {
            this.line += 1;
            this.character = 0;
        } else {
            this.character += 1;
        }
        this.previous = (char) c;
        return this.previous;
    }

    /**
     * 次の文字を検査します。
     * @param c
	 *         一致する文字
     * @return
	 *         文字
     * @throws JSONException
	 *         文字が一致しない時
     */
    char next(char c) throws JSONException {
        char n = this.next();
        if (n != c) {
            throw this.syntaxError("Expected '" + c + "' and instead saw '" +
                    n + "'");
        }
        return n;
    }

    /**
     * n文字後の文字を取得します。
     *
     * @param n
	 *         取得する文字の数
     * @return
	 *         n文字後の文字
     * @throws JSONException
	 *         n文字後に文字が存在しない時、エラー
     */
     String next(int n) throws JSONException {
         if (n == 0) {
             return "";
         }

         char[] chars = new char[n];
         int pos = 0;

         while (pos < n) {
             chars[pos] = this.next();
             if (this.end()) {
                 throw this.syntaxError("Substring bounds error");
             }
             pos += 1;
         }
         return new String(chars);
     }


    /**
     * 次の文字（空白以外）を取得します。
     * @throws JSONException
     * @return
	 *         文字。文字が存在しない時、0。
     */
    char nextClean() throws JSONException {
        for (;;) {
            char c = this.next();
            if (c == 0 || c > ' ') {
                return c;
            }
        }
    }


    /**
     * 指定した文字(シングルクオートもしくはダブルクオート)までの文字列を取得します。
     * @param quote
	 *      シングルクオートもしくはダブルクオートで囲まれた文字
     * @return
	 *      文字列
     * @throws JSONException
	 *      終了していない文字列
     */
    String nextString(char quote) throws JSONException {
        char c;
        StringBuffer sb = new StringBuffer();
        for (;;) {
            c = this.next();
            switch (c) {
            case 0:
            case '\n':
            case '\r':
                throw this.syntaxError("Unterminated string");
            case '\\':
                c = this.next();
                switch (c) {
                case 'b':
                    sb.append('\b');
                    break;
                case 't':
                    sb.append('\t');
                    break;
                case 'n':
                    sb.append('\n');
                    break;
                case 'f':
                    sb.append('\f');
                    break;
                case 'r':
                    sb.append('\r');
                    break;
                case 'u':
                    sb.append((char)Integer.parseInt(this.next(4), 16));
                    break;
                case '"':
                case '\'':
                case '\\':
                case '/':
                    sb.append(c);
                    break;
                default:
                    throw this.syntaxError("Illegal escape.");
                }
                break;
            default:
                if (c == quote) {
                    return sb.toString();
                }
                sb.append(c);
            }
        }
    }


    /**
     * EOF、指定されたデリミタ、改行、キャリッジリターンのいずれが出現するまでの文字列を取得します。
     * @param  delimiter
	 *         区切り文字
     * @return
	 *         文字列
     */
    String nextTo(char delimiter) throws JSONException {
        StringBuffer sb = new StringBuffer();
        for (;;) {
            char c = this.next();
            if (c == delimiter || c == 0 || c == '\n' || c == '\r') {
                if (c != 0) {
                    this.back();
                }
                return sb.toString().trim();
            }
            sb.append(c);
        }
    }


    /**
     * EOF、指定されたデリミタ、改行、キャリッジリターンのいずれかが出現するまでの文字列を取得します。
     * @param delimiters
	 *         区切り文字のセット
     * @return
	 *         トリムされた文字列
     */
    String nextTo(String delimiters) throws JSONException {
        char c;
        StringBuffer sb = new StringBuffer();
        for (;;) {
            c = this.next();
            if (delimiters.indexOf(c) >= 0 || c == 0 ||
                    c == '\n' || c == '\r') {
                if (c != 0) {
                    this.back();
                }
                return sb.toString().trim();
            }
            sb.append(c);
        }
    }


    /**
     * JSONの値を取得します。
     * 値はBoolean, Double, Integer, JSONArray, JSONObject, Long, String, JSONObject.NULLオブジェクトのいずれかが返ります。
     * @throws JSONException
	 *         シンタックスエラーの時
     *
     * @return
	 *         オブジェクト
     */
    Object nextValue() throws JSONException {
        char c = this.nextClean();
        String string;

        switch (c) {
            case '"':
            case '\'':
                return this.nextString(c);
            case '{':
                this.back();
                return new JSONObject(this);
            case '[':
                this.back();
                return new JSONArray(this);
        }

        /*
    	 * 引用符で囲まれていないテキストを処理します。
         */

        StringBuffer sb = new StringBuffer();
        while (c >= ' ' && ",:]}/\\\"[{;=#".indexOf(c) < 0) {
            sb.append(c);
            c = this.next();
        }
        this.back();

        string = sb.toString().trim();
        if ("".equals(string)) {
            throw this.syntaxError("Missing value");
        }
        return JSONObject.stringToValue(string);
    }


    /**
     * 指定された文字までスキップします。
     * 指定された文字が見つからない場合は、スキップは実行されません。
     * @param to
	 *         スキップ先の文字
     * @return
	 *         要求された文字。スキップ先がない時、0。
     */
    char skipTo(char to) throws JSONException {
        char c;
        try {
            long startIndex = this.index;
            long startCharacter = this.character;
            long startLine = this.line;
            this.reader.mark(1000000);
            do {
                c = this.next();
                if (c == 0) {
                    this.reader.reset();
                    this.index = startIndex;
                    this.character = startCharacter;
                    this.line = startLine;
                    return c;
                }
            } while (c != to);
        } catch (IOException exc) {
            throw new JSONException(exc);
        }

        this.back();
        return c;
    }


    /**
     * 例外を作成します。
     *
     * @param message
	 *         エラーメッセージ
     * @return
	 *         JSONException
     */
    JSONException syntaxError(String message) {
        return new JSONException(message + this.toString());
    }


    /**
	 * JSONトークンの印刷可能な文字列を作成します。
     *
     * @return
	 *       " at {index} [character {character} line {line}]"
     */
    public String toString() {
        return " at " + this.index + " [character " + this.character + " line " +
            this.line + "]";
    }
}
