
package com.fujitsu.intarfrm.programs.practice5.practice5.beans;

import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5CardBeanBase;
import com.fujitsu.intarfrm.programs.practice5.practice5.inherits.Practice5FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE5]、フォーム名：[演習５]<br>
 * 
 * @author INTARFRM
 */
public final class Practice5CardBean extends Practice5CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice5CardBean(Practice5FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
