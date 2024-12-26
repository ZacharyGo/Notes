
package com.fujitsu.intarfrm.programs.practice2.practice2.beans;

import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2CardBeanBase;
import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 * 
 * @author INTARFRM
 */
public final class Practice2CardBean extends Practice2CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice2CardBean(Practice2FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。
    public boolean getCustomData() {
        return super.castValue("flag");
    }
    
    public void setCustomData(boolean value) {
        super.put("flag", value);
    }


}
