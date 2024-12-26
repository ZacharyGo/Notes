
package com.fujitsu.intarfrm.programs.practice6.practice6a.beans;

import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aCardBeanBase;
import com.fujitsu.intarfrm.programs.practice6.practice6a.inherits.Practice6aFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE6A]、フォーム名：[演習６ー１]<br>
 * 
 * @author INTARFRM
 */
public final class Practice6aCardBean extends Practice6aCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice6aCardBean(Practice6aFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
