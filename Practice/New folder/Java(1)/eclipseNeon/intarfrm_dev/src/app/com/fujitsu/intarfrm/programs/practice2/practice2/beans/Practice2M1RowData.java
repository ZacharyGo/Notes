
package com.fujitsu.intarfrm.programs.practice2.practice2.beans;

import com.fujitsu.intarfrm.programs.practice2.practice2.inherits.Practice2M1RowDataBase;

/**
 * <p>明細[M1]の行データクラス。</p>
 * 
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[PRACTICE2]、フォーム名：[演習２]<br>
 * 明細名：[明細部１]、フォーム名：[]<br>
 * 
 * @author INTARFRM
 */
public final class Practice2M1RowData extends Practice2M1RowDataBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner 画面情報
     */
    public Practice2M1RowData(Practice2M1Bean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
