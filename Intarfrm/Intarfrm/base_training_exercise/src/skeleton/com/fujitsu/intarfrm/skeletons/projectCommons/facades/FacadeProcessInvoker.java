package com.fujitsu.intarfrm.skeletons.projectCommons.facades;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.delegates.AsyncErrorDelegate;
import com.fujitsu.intarfrm.helpers.commons.delegates.CallbackDelegate;
import com.fujitsu.intarfrm.helpers.commons.delegates.DelegateException;
import com.fujitsu.intarfrm.helpers.commons.delegates.DelegateException.ErrorType;
import com.fujitsu.intarfrm.helpers.commons.delegates.DelegateHandlerInfo;
import com.fujitsu.intarfrm.helpers.commons.delegates.MultiCastDelegate;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.BusinessException;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.commons.framework.IfmFacadeBase;

/**
 * <p>各フォームのFacadeメソッドの実行クラスです。</p>
 *
 * 通常、Facadeメソッドの処理はこのクラスを使用して実行してください。このクラスの{@link #invoke(FormActionContext, Class, String)}メソッドでは、<br/>
 * {@link ModelContext}クラスの生成⇒Facadeインスタンスの生成⇒Facadeメソッドの実行<br/>
 * の順に処理を行います。<br/>
 * また、Facadeメソッドの実行時、{@link ProjectBaseFacade}クラスの共通処理メソッド、{@link ProjectBaseFacade#beforeBody}、
 * {@link ProjectBaseFacade#afterBody}が処理されます。各メソッドを実行した結果、{@link ModelContext#cancel}メソッドの
 * 戻り値がtrueとなっていた場合は、以降の処理はスキップされます。<br/>
 *
 * @author INTARFRM
 */
public final class FacadeProcessInvoker {

	/**
	 * インスタンス化を許可しません。
	 */
	private FacadeProcessInvoker() {
	}

	/**
	 * <p>Facadeアクションメソッドを実行するメソッドです。</p>
	 *
	 * facadeClsに指定されたクラス情報からFacadeインスタンスを生成し、methodNameのアクションメソッドを実行します。
	 * アクションメソッド実行前後にそれぞれ、{@link ProjectBaseFacade#beforeBody}、{@link ProjectBaseFacade#afterBody}
	 * が実行されます。<br/>
	 * それぞれのメソッドで処理を中断したい場合は、{@link ModelContext#setCancelFlag(boolean)}メソッドを使用して処理を中断する
	 * ことができます。
	 *
	 * @param context コンテキスト
	 * @param facadeCls 実行するFacadeのクラス型
	 * @param methodName 実行するメソッド名
	 * @exception SystemErrorException ModelContextの生成に失敗した場合、Facadeメソッドの実行に失敗した場合にthrowされます。
	 * @exception DatabaseException Facade、エンティティ層で発生した例外
	 */
	public static void invoke(FormActionContext context, Class<? extends IfmFacadeBase> facadeCls, String methodName) {
		try {
			//FormActionContextからModelContextを生成します。
			ModelContext<?> modelContext = new ModelContext<FormDataSet>(context);
			modelContext.setMethodName(methodName);

			if (context.getDownloadInfo() != null) {
				modelContext.setDownloadInfo(context.getDownloadInfo());
			}

			//メソッドを実行する対象のFacadeインスタンスを生成します。
			IfmFacadeBase facade = facadeCls.newInstance();

			//実行するメソッドのMethodオブジェクトを取得します。
			FacadeDelegate delegate = new FacadeDelegate();
			delegate.add("beforeBody", facade);
			delegate.add(methodName, facade);
			delegate.add("afterBody", facade);

			//メソッドリストを実行する。
			delegate.invoke(modelContext);

			context.setDownloadInfo(modelContext.getDownloadInfo());
		} catch (BusinessException e) {
			// エラーフラグを設定する
			context.setIsValid(false);
			// 業務エラー例外は業務エラーメッセージを設定してActionに返す
			context.getFormBean().getServerMessages().addAll(e.getBusinessErrorMessages());
		} catch (Exception e) {
			// エラーフラグを設定する
			context.setIsValid(false);
			Throwable cause = e;
			if (DelegateException.class.isInstance(e) && e.getCause() != null) {
				cause = e.getCause();
			}
			throw new SystemErrorException("Facade処理実行時に例外が発生しました。", cause);
		}
	}

	/**
	 * Facade処理を呼び出す
	 * @param context コンテキスト
	 */
	public static void invokeFacade(FormActionContext context) {
		ArgumentValidator.checkNull(context, "context");

		// フォームアクション情報を取得する
		FormActionInfo actionInfo = context.getFormAction();

		// FacadeFactoryを作成する
		ProjectFacadeFactory factory = new ProjectFacadeFactory(context);

		// 呼び出すFacadeクラスを作成する
		Class<? extends IfmFacadeBase> facadeClass = factory.createFacade(actionInfo);

		// 呼び出すメソッドの名前を作成する
		String formActId = actionInfo.getFormActionId();
		String methodName = "";
		if (factory.mockupFlg) {
			// モックアップ用Facadeの場合
			if (actionInfo.getActionId() != null) {
				methodName = "execute" + actionInfo.getActionId().toUpperCase();
			} else {
				methodName = "execute" + formActId.toUpperCase();
			}
		} else {
			if (formActId.equals("_Load")) {
				methodName = "do_Load";
			} else if (actionInfo.getActionId().equals("_PAGING_")) {
				methodName = "do_" + actionInfo.getTargetBorder().name() + "_Paging";
			} else if (actionInfo.getActionId().equals("_SORTING_")) {
				methodName = "do_" + actionInfo.getTargetBorder().name() + "_Sorting";
			} else {
				methodName = "do" + formActId.substring(0, 1).toUpperCase() + formActId.substring(1).toLowerCase();
			}
		}
		// 呼出しを実行する
		invoke(context, facadeClass, methodName);
	}
}

/**
 * Facadeメソッド実行用デリゲート
 * @author INTARFRM
 *
 */
class FacadeDelegate extends MultiCastDelegate {

	/**
	 * コンストラクタ。
	 */
	FacadeDelegate() {
		super(ModelContext.class);
	}

	/**
	 * 実行する。
	 * @param modelContext 引数
	 */
	public void invoke(ModelContext<?> modelContext) {
		Exception e = null;
		for (DelegateHandlerInfo handler : this.getInvocationList()) {
			try {
				handler.invoke(modelContext);
			} catch (DelegateException ex) {
				if (ex.getCause() instanceof BusinessException) {
					throw new BusinessException(((BusinessException)ex.getCause()).businessErrorMessages);	
				} else {
					throw new SystemErrorException(ex);
				}
			} catch (Exception ex) {
					// afterBody以外でエラーが発生した場合、必ずafterBodyまで実行させる。
				e = ex;
			}
			if (modelContext.cancel()) {
				break;
			}
		}
		if (e != null) {
			throw new SystemErrorException(e);
		}
	}

	/**
	 * <p>非同期で実行する。</p>
	 * 常に例外をスローします。
	 *
	 * @param params 引数
	 * @param callback コールバックデリゲート
	 * @param errorHandler 例外処理用デリゲート
	 */
	@Deprecated
	@Override
	public void asyncInvoke(Object[] params, CallbackDelegate callback, AsyncErrorDelegate errorHandler) {
		throw new DelegateException("非同期実行はサポートしません。", ErrorType.EXECUTE_ERROR);
	}
}

