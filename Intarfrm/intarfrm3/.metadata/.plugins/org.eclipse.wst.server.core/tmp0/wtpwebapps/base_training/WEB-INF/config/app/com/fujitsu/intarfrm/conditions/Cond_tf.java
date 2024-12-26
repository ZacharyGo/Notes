
package com.fujitsu.intarfrm.conditions;

import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionInfo;
import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionItem;
import com.fujitsu.intarfrm.helpers.commons.conditions.FixedItemType;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;

/**
 * <p>コンディション「COND_TF」を定義するクラス。<p>
 * 
 * @author INTARFRM継承ファイル
 */
public class Cond_tf extends ConditionInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    private static final Cond_tf instance = new Cond_tf(LanguageManager.getDefaultLanguage());
    
    /**
     * 既定のインスタンスを取得する<br/>
     * このインスタンスには既定の言語の標題が設定されます。
     * @return 既定のインスタンス
     */
    public static Cond_tf getInstance() {
        return instance;
    }


    /**
     * <p>コンディション項目[COND_TRUE]。</p>
     * 値：[COND_TRUE]<br>
     * 標題値：TRUE
     */
    public final ConditionItem COND_TRUE;

    /**
     * <p>コンディション項目[COND_FALSE]。</p>
     * 値：[COND_FALSE]<br>
     * 標題値：FALSE
     */
    public final ConditionItem COND_FALSE;

    /**
    * コンストラクタ
    * @param lang 言語情報
    */
    public Cond_tf(LanguageInfo lang) {
        super("COND_TF", "COND_TF", lang);
        COND_TRUE = new ConditionItem("COND_TRUE", "COND_TRUE", false);
        this.getItems().add(COND_TRUE);
        COND_FALSE = new ConditionItem("COND_FALSE", "COND_FALSE", false);
        this.getItems().add(COND_FALSE);

        this.setFixedItemPosition(FixedItemType.NONE);
    }
}
