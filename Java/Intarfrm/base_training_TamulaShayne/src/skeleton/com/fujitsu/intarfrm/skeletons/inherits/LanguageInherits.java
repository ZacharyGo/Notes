package com.fujitsu.intarfrm.skeletons.inherits;

import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;

/**
 * <p>言語を定義するクラス</p>
 * このクラスは継承ファイルのクラスです。
 * 
 * @author INTARFRM継承ファイル
 */
public class LanguageInherits extends LanguageManager {

    /**
     * 唯一のインスタンス
     */
    public static final LanguageInherits ITEM = new LanguageInherits();

    /**
     * コンストラクタ
     * 言語情報の初期化を行う。
     */
    private LanguageInherits() {
        super();

        this.ja_JP = new LanguageInfo("ja-JP", "日本語");
        this.ja_JP.setDefault(true);
        this.add(this.ja_JP);

    }
    /**
     * 初期化メソッド
     */
    public void initialize() {
    }
    

    /**
     * <p>日本語を表現する言語情報。</p>
     *
     * カルチャ [ja-JP]<br>
     * デフォルト [true]<br>
     */
    public final LanguageInfo ja_JP;

}
