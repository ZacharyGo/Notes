
package com.fujitsu.intarfrm.programs.practice3.practice3b.beans;

import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bCardBeanBase;
import com.fujitsu.intarfrm.programs.practice3.practice3b.inherits.Practice3bFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE3B]、フォーム名：[演習３－２]<br>
 * 
 * @author INTARFRM
 */
public final class Practice3bCardBean extends Practice3bCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice3bCardBean(Practice3bFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
