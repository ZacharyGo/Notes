
package com.fujitsu.intarfrm.conditions;

import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionInfo;
import com.fujitsu.intarfrm.helpers.commons.conditions.ConditionItem;
import com.fujitsu.intarfrm.helpers.commons.conditions.FixedItemType;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;

/**
 * <p>コンディション「Job Data」を定義するクラス。<p>
 * 
 * @author INTARFRM継承ファイル
 */
public class Jobdata extends ConditionInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    private static final Jobdata instance = new Jobdata(LanguageManager.getDefaultLanguage());
    
    /**
     * 既定のインスタンスを取得する<br/>
     * このインスタンスには既定の言語の標題が設定されます。
     * @return 既定のインスタンス
     */
    public static Jobdata getInstance() {
        return instance;
    }


    /**
     * <p>コンディション項目[OFFEMP]。</p>
     * 値：[A1]<br>
     * 標題値：
     */
    public final ConditionItem OFFEMP;

    /**
     * <p>コンディション項目[PUBEMP]。</p>
     * 値：[A2]<br>
     * 標題値：
     */
    public final ConditionItem PUBEMP;

    /**
     * <p>コンディション項目[SLFEMP]。</p>
     * 値：[A3]<br>
     * 標題値：
     */
    public final ConditionItem SLFEMP;

    /**
     * <p>コンディション項目[PART]。</p>
     * 値：[A4]<br>
     * 標題値：
     */
    public final ConditionItem PART;

    /**
     * <p>コンディション項目[HOUSE]。</p>
     * 値：[B1]<br>
     * 標題値：
     */
    public final ConditionItem HOUSE;

    /**
     * <p>コンディション項目[STUDENT]。</p>
     * 値：[B2]<br>
     * 標題値：
     */
    public final ConditionItem STUDENT;

    /**
     * <p>コンディション項目[ETC]。</p>
     * 値：[Z0]<br>
     * 標題値：
     */
    public final ConditionItem ETC;
    
    /**
     * <p>固定表示項目。</p>
     * 固定値：[]<br>
     * 表示位置：[先頭]<br>
     */
     public final ConditionItem _FIX_ITEM;

    /**
    * コンストラクタ
    * @param lang 言語情報
    */
    public Jobdata(LanguageInfo lang) {
        super("JOBDATA", "Job Data", lang);
        OFFEMP = new ConditionItem("OFFEMP", "A1", false);
        this.getItems().add(OFFEMP);
        PUBEMP = new ConditionItem("PUBEMP", "A2", false);
        this.getItems().add(PUBEMP);
        SLFEMP = new ConditionItem("SLFEMP", "A3", false);
        this.getItems().add(SLFEMP);
        PART = new ConditionItem("PART", "A4", false);
        this.getItems().add(PART);
        HOUSE = new ConditionItem("HOUSE", "B1", false);
        this.getItems().add(HOUSE);
        STUDENT = new ConditionItem("STUDENT", "B2", false);
        this.getItems().add(STUDENT);
        ETC = new ConditionItem("ETC", "Z0", false);
        this.getItems().add(ETC);

        _FIX_ITEM = new ConditionItem("99", "", true);
        this.setFixedItem(_FIX_ITEM);
        this.setFixedItemPosition(FixedItemType.TOP);
    }
}
