
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002CardBeanBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 * 
 * @author INTARFRM
 */
public final class Tyu01002CardBean extends Tyu01002CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Tyu01002CardBean(Tyu01002FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
