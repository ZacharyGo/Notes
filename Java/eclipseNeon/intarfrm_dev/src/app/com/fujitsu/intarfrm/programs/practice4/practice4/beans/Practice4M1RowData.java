
package com.fujitsu.intarfrm.programs.practice4.practice4.beans;

import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4M1RowDataBase;

/**
 * <p>明細[M1]の行データクラス。</p>
 * 
 * この明細の行単位のデータを保持します。<br>
 * フォームID：[PRACTICE4]、フォーム名：[演習４]<br>
 * 明細名：[明細部１]、フォーム名：[明細部１]<br>
 * 
 * @author INTARFRM
 */
public final class Practice4M1RowData extends Practice4M1RowDataBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner 画面情報
     */
    public Practice4M1RowData(Practice4M1Bean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
