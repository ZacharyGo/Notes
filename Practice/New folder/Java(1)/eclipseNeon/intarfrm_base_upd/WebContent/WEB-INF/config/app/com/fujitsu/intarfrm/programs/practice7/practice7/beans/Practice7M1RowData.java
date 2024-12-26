
package com.fujitsu.intarfrm.programs.practice7.practice7.beans;

import com.fujitsu.intarfrm.programs.practice7.practice7.inherits.Practice7M1RowDataBase;

/**
 * <p>明細[M1]の行データクラス。</p>
 * 
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[PRACTICE7]、フォーム名：[Exercise７]<br>
 * 明細名：[明細部１]、フォーム名：[List1]<br>
 * 
 * @author INTARFRM
 */
public final class Practice7M1RowData extends Practice7M1RowDataBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner 画面情報
     */
    public Practice7M1RowData(Practice7M1Bean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
