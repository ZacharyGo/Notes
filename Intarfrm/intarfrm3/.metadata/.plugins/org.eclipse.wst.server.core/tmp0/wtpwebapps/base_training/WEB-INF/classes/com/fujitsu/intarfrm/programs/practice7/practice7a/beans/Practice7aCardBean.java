
package com.fujitsu.intarfrm.programs.practice7.practice7a.beans;

import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aCardBeanBase;
import com.fujitsu.intarfrm.programs.practice7.practice7a.inherits.Practice7aFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE7A]、フォーム名：[Exercise７-１]<br>
 * 
 * @author INTARFRM
 */
public final class Practice7aCardBean extends Practice7aCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice7aCardBean(Practice7aFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
