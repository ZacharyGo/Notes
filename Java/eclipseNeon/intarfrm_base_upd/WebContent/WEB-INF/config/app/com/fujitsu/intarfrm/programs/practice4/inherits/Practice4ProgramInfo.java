// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice4.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice4.practice4.Practice4Controller;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[演習４]情報。</p>
 *
 * プログラムID：[PRACTICE4]、プログラム名：[演習４]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice4ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice4ProgramInfo() {
        super("practice4", "演習４", "practice4");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE4;
    }

    /**
     * <p>フォーム[演習４]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE4 = Practice4Controller.class;

}
