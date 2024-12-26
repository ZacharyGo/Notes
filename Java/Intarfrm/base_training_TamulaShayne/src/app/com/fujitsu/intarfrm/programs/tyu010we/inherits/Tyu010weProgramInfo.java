// このファイルは継承ファイルです。
// 継承ファイルは、自動生成したままの状態で使用するため、手修正しないでください。
// 修正が必要な場合は、設計情報を修正し、改めて自動生成したファイルで上書きしてください。
package com.fujitsu.intarfrm.programs.tyu010we.inherits;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.items.ProgramInfo;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01001.Tyu01001Controller;
import com.fujitsu.intarfrm.programs.tyu010we.tyu01002.Tyu01002Controller;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * <p>プログラム[Customer Master]情報。</p>
 *
 * プログラムID：[TYU010WE]、プログラム名：[Customer Master]<br>
 *
 * @author INTARFRM継承ファイル
 */
public final class Tyu010weProgramInfo extends ProgramInfo {

    /**
     * シリアルバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * <p>コンストラクタ。</p>
     *
     */
    public Tyu010weProgramInfo() {
        super("tyu010we", "Customer Master", "tyu01002");
    }

    /**
     * スタートアップ画面のコントローラクラスを取得する
     */
    public Class<? extends IfmControllerAction<FormActionContext>> getStartupForm() {
    	return this.TYU01002;
    }

    /**
     * <p>フォーム[Customer Master Maintenance]。</p>
     * スタートアップ：[false]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> TYU01001 = Tyu01001Controller.class;

    /**
     * <p>フォーム[Customer Master List]。</p>
     * スタートアップ：[true]
     */
    public Class<? extends IfmControllerAction<FormActionContext>> TYU01002 = Tyu01002Controller.class;

}
