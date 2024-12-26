
package com.fujitsu.intarfrm.programs.tyu010we.tyu01002.beans;

import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.inherits.Tyu01002M1RowDataBase;

/**
 * <p>明細[M1]の行データクラス。</p>
 * 
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[TYU01002]、フォーム名：[Customer Master List]<br>
 * 明細名：[明細部１]、フォーム名：[Customer List]<br>
 * 
 * @author INTARFRM
 */
public final class Tyu01002M1RowData extends Tyu01002M1RowDataBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner 画面情報
     */
    public Tyu01002M1RowData(Tyu01002M1Bean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
