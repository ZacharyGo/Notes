package com.fujitsu.intarfrm.skeletons.projectCommons.controllers;

import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerBase;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerInit;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * プロジェクト共通のInit処理を記述するクラスです。
 *
 * @author INTARFRM
 */
public abstract class ProjectProgramInitControllerBase extends IfmControllerInit<FormActionContext> {

	/**
	 * コンストラクタ
	 * @param programId プログラムID
	 */
	protected ProjectProgramInitControllerBase(String programId) {
		super(programId, null);
	}

	/**
	 * プログラム起動処理を実行します。
	 * @param context コンテキスト
	 */
	@Override
	public final Class<? extends IfmControllerBase> perform(FormActionContext context) throws Exception {
		this.beforeBody(context);
		this.initBody(context);
		this.afterBody(context);

		return context.getResult().getCntrollerClass();
	}

	/**
	 * 業務処理の前に行う処理
	 * @param context コンテキスト
	 */
	protected void beforeBody(FormActionContext context) {
	}

	/**
	 * プログラムの初期化を行います。
	 * @param context コンテキスト
	 */
	protected void initBody(FormActionContext context) {
	}

	/**
	 * 業務処理の後に行う処理
	 * @param context コンテキスト
	 */
	protected void afterBody(FormActionContext context) {
	}
}
