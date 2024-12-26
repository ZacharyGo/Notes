
package com.fujitsu.intarfrm.programs.practice1.practice1b.beans;

import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bCardBeanBase;
import com.fujitsu.intarfrm.programs.practice1.practice1b.inherits.Practice1bFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE1B]、フォーム名：[演習１－２]<br>
 * 
 * @author INTARFRM
 */
public final class Practice1bCardBean extends Practice1bCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice1bCardBean(Practice1bFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
