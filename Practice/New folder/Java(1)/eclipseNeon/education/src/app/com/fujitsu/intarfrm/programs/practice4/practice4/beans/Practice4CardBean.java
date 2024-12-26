
package com.fujitsu.intarfrm.programs.practice4.practice4.beans;

import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4CardBeanBase;
import com.fujitsu.intarfrm.programs.practice4.practice4.inherits.Practice4FormBean;

/**
 * <p>カード部のデータクラス。</p>
 * 
 * フォーム内の全カード項目のデータを保持します。<br>
 * フォームID：[PRACTICE4]、フォーム名：[演習４]<br>
 * 
 * @author INTARFRM
 */
public final class Practice4CardBean extends Practice4CardBeanBase {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     * 
     * @param owner フォームデータ
     */
    public Practice4CardBean(Practice4FormBean owner) {
        super(owner);
    }

    //アプリケーション固有のデータを管理することが可能です。
    //その場合は以下にgetter及びsetterメソッドを記述します。

}
