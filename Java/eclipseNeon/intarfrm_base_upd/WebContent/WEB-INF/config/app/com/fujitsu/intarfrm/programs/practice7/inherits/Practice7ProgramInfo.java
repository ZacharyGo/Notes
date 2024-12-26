// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.practice7.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.practice7.practice7.Practice7Controller;
import com.fujitsu.intarfrm.programs.practice7.practice7a.Practice7aController;
import com.fujitsu.intarfrm.programs.practice7.practice7b.Practice7bController;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[Exercise 7]情報。</p>
 *
 * プログラムID：[PRACTICE7]、プログラム名：[Exercise 7]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Practice7ProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Practice7ProgramInfo() {
        super("practice7", "Exercise 7", "practice7");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.PRACTICE7;
    }

    /**
     * <p>フォーム[Exercise７]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE7 = Practice7Controller.class;

    /**
     * <p>フォーム[Exercise７-１]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE7A = Practice7aController.class;

    /**
     * <p>フォーム[Exercise７-２]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> PRACTICE7B = Practice7bController.class;

}
