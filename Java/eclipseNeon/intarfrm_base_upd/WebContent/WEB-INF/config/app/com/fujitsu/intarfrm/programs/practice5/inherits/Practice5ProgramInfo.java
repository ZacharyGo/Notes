// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice5.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice5.practice5.Practice5Controller;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[演習５]情報。</p>
 *
 * プログラムID：[PRACTICE5]、プログラム名：[演習５]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice5ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice5ProgramInfo() {
        super("practice5", "演習５", "practice5");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE5;
    }

    /**
     * <p>フォーム[演習５]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE5 = Practice5Controller.class;

}
