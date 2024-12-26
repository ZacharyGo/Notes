// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice6.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice6.practice6a.Practice6aController;
import com.fujitsu.intarfrm.programs.practice6.practice6b.Practice6bController;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[演習６]情報。</p>
 *
 * プログラムID：[PRACTICE6]、プログラム名：[演習６]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice6ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice6ProgramInfo() {
        super("practice6", "演習６", "practice6a");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE6A;
    }

    /**
     * <p>フォーム[演習６ー１]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE6A = Practice6aController.class;

    /**
     * <p>フォーム[演習６－２]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE6B = Practice6bController.class;

}
