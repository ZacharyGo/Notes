
package com.fujitsu.intarfrm.programs.practice7.practice7b.beans;

import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bCardBeanBase;
import com.fujitsu.intarfrm.programs.practice7.practice7b.inherits.Practice7bFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7B]、フォーム名：[Exercise７-２]<br>
 * 
 * @author INTARFRM
 */
public final class Practice7bCardBean extends Practice7bCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice7bCardBean(Practice7bFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
