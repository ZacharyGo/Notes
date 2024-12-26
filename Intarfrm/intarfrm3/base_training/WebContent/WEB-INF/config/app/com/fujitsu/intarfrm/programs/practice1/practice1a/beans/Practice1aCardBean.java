
package com.fujitsu.intarfrm.programs.practice1.practice1a.beans;

import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aCardBeanBase;
import com.fujitsu.intarfrm.programs.practice1.practice1a.inherits.Practice1aFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE1A]、フォーム名：[演習１－１]<br>
 * 
 * @author INTARFRM
 */
public final class Practice1aCardBean extends Practice1aCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice1aCardBean(Practice1aFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
