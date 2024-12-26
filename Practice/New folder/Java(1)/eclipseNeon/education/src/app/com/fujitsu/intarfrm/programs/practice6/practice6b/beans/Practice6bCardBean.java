
package com.fujitsu.intarfrm.programs.practice6.practice6b.beans;

import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bCardBeanBase;
import com.fujitsu.intarfrm.programs.practice6.practice6b.inherits.Practice6bFormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE6B]、フォーム名：[演習６－２]<br>
 * 
 * @author INTARFRM
 */
public final class Practice6bCardBean extends Practice6bCardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice6bCardBean(Practice6bFormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
