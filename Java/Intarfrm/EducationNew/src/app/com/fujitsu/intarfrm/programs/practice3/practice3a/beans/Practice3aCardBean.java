
package com.fujitsu.intarfrm.programs.practice3.practice3a.beans;

import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aCardBeanBase;
import com.fujitsu.intarfrm.programs.practice3.practice3a.inherits.Practice3aFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE3A]、フォーム名：[演習３－１]<br>
 * 
 * @author INTARFRM
 */
public final class Practice3aCardBean extends Practice3aCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice3aCardBean(Practice3aFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
