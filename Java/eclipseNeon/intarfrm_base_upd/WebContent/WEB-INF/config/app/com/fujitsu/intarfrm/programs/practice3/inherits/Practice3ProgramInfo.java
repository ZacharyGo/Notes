// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice3.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice3.practice3a.Practice3aController;
import com.fujitsu.intarfrm.programs.practice3.practice3b.Practice3bController;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[演習３]情報。</p>
 *
 * プログラムID：[PRACTICE3]、プログラム名：[演習３]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice3ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice3ProgramInfo() {
        super("practice3", "演習３", "practice3a");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE3A;
    }

    /**
     * <p>フォーム[演習３－１]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE3A = Practice3aController.class;

    /**
     * <p>フォーム[演習３－２]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE3B = Practice3bController.class;

}
