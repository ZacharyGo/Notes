
package com.fujitsu.intarfrm.skeletons.projectCommons.formats;

import com.fujitsu.intarfrm.helpers.commons.formats.IfmFormatInfo;
import com.fujitsu.intarfrm.helpers.commons.formats.IfmFormatManager;
import com.fujitsu.intarfrm.helpers.commons.formats.IfmFormatType;

/**
 * <p>フォーマットを定義するクラス</p>
 */
public class FormatManager extends IfmFormatManager {

    /**
     * このクラスの唯一のインスタンス。
     */
    public static final FormatManager ITEM = new FormatManager();

    /**
     * コンストラクタ
     */
    private FormatManager() {
        super();
		
    }

    /**
     * 初期化メソッド
     */
    public void initialize() {
    }

}
