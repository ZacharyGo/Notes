
package com.fujitsu.intarfrm.programs.practice7.practice7.beans;

import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7CardBeanBase;
import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 * 
 * @author INTARFRM
 */
public final class Practice7CardBean extends Practice7CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice7CardBean(Practice7FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
