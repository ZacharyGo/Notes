
package com.fujitsu.intarfrm.programs.tyu010we.tyu01001.beans;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001CardBeanBase;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.inherits.Tyu01001FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[TYU01001]、フォーム名：[Customer Master Maintenance]<br>
 * 
 * @author INTARFRM
 */
public final class Tyu01001CardBean extends Tyu01001CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Tyu01001CardBean(Tyu01001FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
