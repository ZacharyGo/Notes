package com.fujitsu.intarfrm.skeletons.projectCommons.controllers;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormControllerBase;

/**
 * フォームコントローラの共通処理を拡張するクラスです。
 * 
 * @author INTARFRM
 */
public abstract class ProjectFormControllerBase extends FormControllerBase {

	/**
	 * コンストラクタ
	 * @param programId プログラムID
	 * @param formId フォームID
	 * @param form フォームコントローラクラス
	 */
	@SuppressWarnings("rawtypes")
	protected ProjectFormControllerBase(String programId, String formId, Class<? extends IfmControllerAction> form) {
		super(programId, formId, form);
	}
	
	// FormControllerBaseのメソッドを継承し、カスタマイズすることができます。
}