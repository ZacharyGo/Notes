package com.fujitsu.intarfrm.skeletons.projectCommons.facades;

import java.util.Locale;

import com.fujitsu.intarfrm.helpers.commons.configurations.AppConfig;
import com.fujitsu.intarfrm.helpers.commons.exceptions.InvalidConfigurationException;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.commons.framework.IfmFacadeBase;

/**
 * フォームアクションに対応するFacadeメソッドの呼び出し情報を作成するクラス
 *
 * @author INTARFRM
 */
public class ProjectFacadeFactory {

	/**
	 * モックアップ実行用Facadeを使用するかどうかのフラグ
	 */
	public final boolean mockupFlg = false;

	/**
	 * Facadeクラスのパス
	 */
	public final String FACADE_PATH_FORMAT = "%1$s.programs.%2$s.%3$s.facade.%4$sFacade";

	/**
	 * プログラムID
	 */
	private String pgId;

	/**
	 * フォームID
	 */
	private String fmId;

	/**
	 * コンストラクタ
	 * @param context コンテキスト
	 */
	public ProjectFacadeFactory(FormActionContext context) {
		this.pgId = context.getFormBean().INFO.getProgramId();
		this.fmId = context.getFormBean().INFO.getFormId();
	}

	/**
	 * 呼び出し対象のFacadeクラス
	 * @param actionInfo フォームアクション情報
	 */
	public Class<? extends IfmFacadeBase> createFacade(FormActionInfo actionInfo) {
		ArgumentValidator.checkNull(actionInfo, "actionInfo");
		String facadeClassPath = null;
		if (this.mockupFlg) {
			// モックアップ用Facadeクラスのパス
			facadeClassPath = "com.fujitsu.intarfrm.skeletons.projectCommons.facades.MockupFacade";
		} else {
			// 呼出し対象Facadeクラスのパスを作成する
			facadeClassPath =
					String.format(this.FACADE_PATH_FORMAT, AppConfig.getPackageName(), this.pgId, this.fmId, this.fmId.substring(0,1).toUpperCase(Locale.ENGLISH) + this.fmId.substring(1));
		}

		Class<? extends IfmFacadeBase> facadeClass = null;
		try {
			facadeClass = Class.forName(facadeClassPath).asSubclass(IfmFacadeBase.class);
		} catch (ClassNotFoundException e) {
			throw new InvalidConfigurationException("FacadeClass is not found. FacadeClass:" + facadeClassPath, e);
		}
		return facadeClass;
	}
}