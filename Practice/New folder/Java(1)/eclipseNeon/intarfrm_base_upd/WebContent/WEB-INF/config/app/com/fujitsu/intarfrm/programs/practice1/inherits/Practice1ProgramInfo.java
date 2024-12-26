// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice1.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice1.practice1a.Practice1aController;
import com.fujitsu.intarfrm.programs.practice1.practice1b.Practice1bController;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[演習１]情報。</p>
 *
 * プログラムID：[PRACTICE1]、プログラム名：[演習１]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice1ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice1ProgramInfo() {
        super("practice1", "演習１", "practice1a");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE1A;
    }

    /**
     * <p>フォーム[演習１－１]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE1A = Practice1aController.class;

    /**
     * <p>フォーム[演習１－２]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE1B = Practice1bController.class;

}
