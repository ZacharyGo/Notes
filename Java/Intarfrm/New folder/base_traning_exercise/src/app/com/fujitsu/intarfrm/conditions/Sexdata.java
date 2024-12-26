
package com.fujitsu.intarfrm.conditions;

import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionInfo;
import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionItem;
import com.fujitsu.intarfrm.helpers.commons.conditions.FixedItemType;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;

/**
 * <p>コンディション「Gender Data」を定義するクラス。<p>
 * 
 * @author INTARFRM継承ファイル
 */
public class Sexdata extends ConditionInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    private static final Sexdata instance = new Sexdata(LanguageManager.getDefaultLanguage());
    
    /**
     * 既定のインスタンスを取得する<br/>
     * このインスタンスには既定の言語の標題が設定されます。
     * @return 既定のインスタンス
     */
    public static Sexdata getInstance() {
        return instance;
    }


    /**
     * <p>コンディション項目[MALE]。</p>
     * 値：[1]<br>
     * 標題値：
     */
    public final ConditionItem MALE;

    /**
     * <p>コンディション項目[FEMALE]。</p>
     * 値：[2]<br>
     * 標題値：
     */
    public final ConditionItem FEMALE;

    /**
    * コンストラクタ
    * @param lang 言語情報
    */
    public Sexdata(LanguageInfo lang) {
        super("SEXDATA", "Gender Data", lang);
        MALE = new ConditionItem("MALE", "1", false);
        this.getItems().add(MALE);
        FEMALE = new ConditionItem("FEMALE", "2", false);
        this.getItems().add(FEMALE);

        this.setFixedItemPosition(FixedItemType.NONE);
    }
}
