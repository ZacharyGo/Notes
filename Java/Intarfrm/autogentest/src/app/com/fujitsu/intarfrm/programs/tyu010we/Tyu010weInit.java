
package com.fujitsu.intarfrm.programs.tyu010we;

import com.fujitsu.intarfrm.programs.tyu010we.inherits.Tyu010weProgramInfo;

import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.ApplicationClassFactory;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerBase;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultFrameworkTransfer;
import com.fujitsu.intarfrm.skeletons.projectCommons.controllers.ProjectProgramInitControllerBase;

/**
 * <p>プログラム[Customer Master Maintenance]の初期化処理クラス。</p>
 * 
 * プログラムID：[TYU010WE]、プログラム名：[Customer Master Maintenance]<br>
 * プログラム起動時の初期化処理を実行するクラスです。<br>
 * プログラム初期化処理は画面初回起動時や他プログラムからの遷移時にプログラム内の初画面起動前に実行されます。<br>
 * 
 * @author INTARFRM
 */
public final class Tyu010weInit extends ProjectProgramInitControllerBase {

    /**
     * <p>コンストラクタ。</p>
     * 
     */
    public Tyu010weInit() {
        super("tyu010we");
    }

    /**
     * <p>プログラム起動処理を実行する。</p>
     * 
     * @param context コンテキスト
     */
    @Override
    protected void initBody(FormActionContext context) {

        Class<? extends IfmControllerBase> startup = null;        
        String formId;
        if (context.getFormAction() != null && context.getFormAction().getForwardFormId() != null) {
            //遷移元の処理で、遷移先のフォームが指定されていた場合、そのフォームを起動画面とする
            startup = ApplicationClassFactory.createFormController(this.programId, context.getFormAction().getForwardFormId());
            formId = context.getFormAction().getForwardFormId();
        } else {
            //スタートアップ画面のControllerクラスを取得する
            Tyu010weProgramInfo programInfo = new Tyu010weProgramInfo();
            startup = programInfo.getStartupForm();
            formId = programInfo.getStartupFormId();
        }
        
        //Init処理の結果をContextに設定する
        context.setFormId(formId);
        context.setPgId(this.programId);
        ActionResult result = new ResultFrameworkTransfer(this.programId, formId);
        result.setCntrollerClass(startup);
        context.setResult(result);
    }
}
