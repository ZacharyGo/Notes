package com.fujitsu.intarfrm.skeletons.commons.framework;

import javax.servlet.http.HttpSession;

import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.RequestParameterDataParser;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeActionType;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.codes.ICodeItemCommand;
import com.fujitsu.intarfrm.helpers.commons.configurations.AppConfig;
import com.fujitsu.intarfrm.helpers.commons.exceptions.InvalidOperationException;
import com.fujitsu.intarfrm.helpers.commons.framework.ActionResult;
import com.fujitsu.intarfrm.helpers.commons.framework.ApplicationClassFactory;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerAction;
import com.fujitsu.intarfrm.helpers.commons.framework.IfmControllerBase;
import com.fujitsu.intarfrm.helpers.commons.items.ActionTargetType;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemCodeInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageManager;
import com.fujitsu.intarfrm.helpers.commons.messages.MessageInfo;
import com.fujitsu.intarfrm.helpers.commons.messages.ServerMessage;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.commons.validating.InputValidationManager;
import com.fujitsu.intarfrm.helpers.commons.validating.ValidationResult;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.views.filters.fileupload.FileUploadContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeGetContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeReferenceContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.CodeCheck;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeGetCommand;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeReferenceCommand;
import com.fujitsu.intarfrm.skeletons.inherits.MessageInfos;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultAjaxData;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultCodeGet;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultCodeReference;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultFileDownload;
import com.fujitsu.intarfrm.skeletons.projectCommons.actionResults.ResultFrameworkTransfer;
import com.fujitsu.intarfrm.skeletons.projectCommons.beans.ProjectFormDataSet;
import com.fujitsu.intarfrm.skeletons.projectCommons.facades.FacadeProcessInvoker;

/**
 * フォームアクションを制御する基底クラスです。
 *
 * このクラスは全てのアクションコマンドの最上位のスーパークラスです。<br>
 * アクション処理の実行制御はこのクラスで制御します。<br>
 * アクションの実処理は実際のアクションクラス（フォーム項目毎）に委ねられます。<br>
 * <br>
 * このクラスはシステムレベルでのアクション実行時の共通処理を行うことができます。<br>
 * このクラスで処理することで、実際のアクション（業務）処理から共通処理を隠蔽化させることが可能です。<br>
 *
 * @author INTARFRM
 */
public abstract class FormControllerBase extends IfmControllerAction<FormActionContext> {

	/**
	 * コンストラクタ
	 *
	 * @param programId プログラムID
	 * @param formId フォームID
	 */
	protected FormControllerBase(String programId, String formId, Class<? extends IfmControllerBase> form) {
		super(programId, formId);
	}

	/**
	 * アクション処理を実行します。
	 *
	 * @param context コンテキスト
	 */
	@Override
	public final ActionResult perform(FormActionContext context) throws Exception {

		ArgumentValidator.checkNull(context, "context");
		ActionResult result = null;
		// アクションの前処理
		if (!this.beforeBody(context)) {
			context.setCancel(true);
			context.setIsValid(false);
			return this.result(context);
		}

		// アクション処理の本体
		if (!context.cancel()) {
			// フォーカス情報をクリアする
			if (context.getFormBean() != null) {
				context.getFormBean().clearFocusItem();
			}
			result = this.processBody(context);
		}

		// アクションの後処理
		if (!context.cancel()) {
			this.afterBody(context);
		}

		// アクションコントローラの処理結果を返す
		return result;
	}

	/**
	 * リクエストの値からFormBeanを作成する処理
	 *
	 * @param context コンテキスト
	 * @return nullが返された場合は、ボタンの処理を続行します。<br>
	 *         コマンドクラスのClassが返された場合、このボタンの処理は中断されて指定されたコマンドを実行します。
	 */
	protected boolean processRequest(FormActionContext context){
		ArgumentValidator.checkNull(context, "context");
		// フォームデータを作成します。
        FormDataSet formBean = context.getFormBean();
        // 実行されているフォームアクションを取得する
        FormActionInfo formAction = context.getFormAction();
        if (formAction != null && !formAction.getActionId().equals("_CODE_REFERENCE")) {
        	// リクエスト値の取得を実行する。
        	this.getRequestValue(formBean, context);
        
        	if (!this.validate(formAction, formBean, context)) {
        		context.skipCreateNewFormBean();
        		return false;
        	}
        }
        return true;
	}

	/**
     * <p>HTTPリクエストから値を取得し、フォームデータに設定する。</p>
     *
     * @param formBean フォームデータ
     * @param context コマンドコンテキスト
     */
    protected void getRequestValue(FormDataSet formBean, FormActionContext context) {
    	ArgumentValidator.checkNull(formBean, "formBean");
    	ArgumentValidator.checkNull(context, "context");

        if (!context.getRequest().getMethod().equals("POST")) {
        	//POST以外の場合はリクエスト値の取得をスキップする
        	return;
        }

        FormActionInfo actInfo = context.getFormAction();
        if (actInfo != null && actInfo.getSubmitAction()) {
        	//リクエスト値の取得します。
        	if (actInfo.getActionTarget() == ActionTargetType.EntireForm || actInfo.getTargetBorder() == null) {
        		RequestParameterDataParser.parseForm(formBean,context.getRequest());
        	} else {
        		RequestParameterDataParser.parseList(formBean.getListData(actInfo.getTargetBorder()),context.getRequest());
        	}
        }
    }

    /**
     * <p>アクション発生元の項目情報で共通チェック実行フラグがONの場合、{@link #validateValue}を
     * 実行し、入力値チェックを行います。共通チェック実行フラグがOFFの場合は常にtrueを返します。</p>
     *
     * @param item アクション項目
     * @param formBean フォームデータ
     * @param context コマンドコンテキスト
     * @return 共通チェック実行フラグがONの場合は、{@link #validateValue}の実行結果を返します。それ以外はtrueを返します。
     */
    protected boolean validate(FormActionInfo formAction, FormDataSet formBean, FormActionContext context) {
    	
    	if (!formAction.getActionId().equals("_CODE_REFERENCE") 
    			&& !formAction.getActionId().equals("_CODE_GET")) {
    		// エラーメッセージを削除します。
    		formBean.clearServerMessage();
    		//メッセージの更新フラグをtrueに設定する
            formBean.getServerMessages().setUpdateMessage(true);
    	}

    	if (formAction.needValidation()) {
    		return this.validateValue(formAction, formBean, context);
    	} else {
    		return true;
    	}
    }

    /**
     * <p>値の入力値チェックをする。</p>
     *
     * 指定したアクション項目の共通チェック実行フラグは、各フォーム毎に生成される[FMID]BaseButtonAction
     * で判定されます。フラグの参照はせずに入力チェックを実行します。<br>
     * 指定したアクション項目の{@link FormActionInfo}
     *
     * @param item アクション項目
     * @param formBean フォームデータ
     * @param context コマンドコンテキスト
     * @return 入力値チェックでエラーの場合はfalseを返します。アクション処理を続行する場合はtrueを返します。
     */
    protected boolean validateValue(FormActionInfo formAction, FormDataSet formBean, FormActionContext context) {
    	ArgumentValidator.checkNull(formAction, "formAction");
    	ArgumentValidator.checkNull(formBean, "formBean");
    	ArgumentValidator.checkNull(context, "context");

        //一括入力チェックを行います。
        boolean itemCheckResult = true;
        boolean codeCheckResult = true;
        boolean fileSizeCheck = true;
        
        // コードチェッククラスのインスタンスを作成します。
        CodeCheck codeCheck = new CodeCheck();

        if (formAction.getActionTarget() != ActionTargetType.EntireForm
        		&& formAction.getTargetBorder() != null) {
        	//アクション対象が明細の場合は対象明細のみ一括チェックをする。

        	//対象明細の全ての項目をチェックします。
        	FormListInfo listInfo = (FormListInfo)formBean.INFO.getListInfo(formAction.getTargetBorder());
            if (listInfo.hasInputItems()) {
            	//入力項目が存在する場合のみチェックを実行する。

                //対象明細の項目のエラーメッセージを削除します。
                formBean.getServerMessages().removeMessages(listInfo);
                //明細項目のチェックを実行する。
                AbstractListData<?, ?> listData = formBean.getListData(listInfo);
                ValidationResult result = InputValidationManager.getInstance().validateList(listData);
                //チェックエラーが存在する場合はtrueなのでfalseに置き換えます。
                itemCheckResult = !result.hasError();
                
                // コードチェックを実行する
                codeCheckResult = codeCheck.checkList(context, formBean, listInfo);
            }
        } else {
        	//アクション対象がカードの場合は対象画面の一括チェックをする。

        	//現在の画面の全ての項目をチェックします。
            ValidationResult result = InputValidationManager.getInstance().validateForm(formBean);
            //チェックエラーが存在する場合はtrueなのでfalseに置き換えます。
        	itemCheckResult = !result.hasError();
        	
        	// コードチェックを実行する
            codeCheckResult = codeCheck.checkForm(context, formBean);
        }

        // ファイルアップロードのサイズチェック結果を取得する
        FileUploadContext fuc = (FileUploadContext) context.getRequest().getAttribute(FileUploadContext.CONTEXT);
        if (fuc != null && fuc.sizeOverflow()) {
        	fileSizeCheck = false;
        	MessageInfo msgInfo = MessageInfos.ITEM.S009;
        	context.getFormBean().getServerMessages().add(new ServerMessage(msgInfo));
        }

        //itemCheckResultとcodeCheckResultの両方がtrueの場合のみチェック正常（エラーなし）
        return itemCheckResult && codeCheckResult && fileSizeCheck;
    }

    /**
	 * bodyの前に行う処理
	 *
	 * @param context コンテキスト
	 */
	protected boolean beforeBody(FormActionContext context) {
		setViewType(context);
		if (!context.isLoadAction()) {
			// リクエスト値取得、共通チェック
			return this.processRequest(context);
		} else {
			// FormBeanのコピーをクリアする
			context.setFormBeanSnapshot(null);
			return true;
		}
	}

	/**
	 * コンテキストにviewTypeを設定する。
	 *
	 * @param context コンテキスト
	 */
	protected void setViewType(FormActionContext context) {
		try {
			String pgId = context.getPgId();
			String viewType = null;
			if (!StringHelper.isNullOrEmpty(pgId)) {
				String pgPath = String.format(FrameworkUtil.UrlHelper.INIT_PATH_FORMAT,
						AppConfig.getPackageName(), pgId.toLowerCase(),
						Character.toUpperCase(pgId.charAt(0)) + pgId.substring(1).toLowerCase());
				Class<?> pgClass = Class.forName(pgPath);
				ViewTypeAnnotation vtAnn = (ViewTypeAnnotation) pgClass.getAnnotation(ViewTypeAnnotation.class);
				if (vtAnn != null) {
					viewType = vtAnn.value();
				}
			}
			context.setViewType(viewType);
		} catch (ClassNotFoundException ex) {
			throw new InvalidOperationException(ex);
		}
	}

	/**
	 * ボタン・リンクに対応する業務処理の本体
	 *
	 * @param context コンテキスト
	 */
	protected ActionResult processBody(FormActionContext context) {
		if (!context.isLoadAction()) {
			context.setResult(this.result(context));
		}
		return context.getResult();
	}

	/**
	 * bodyの後に行う処理
	 *
	 * @param context コンテキスト
	 */
	protected void afterBody(FormActionContext context) {
	}
	
	/**
	 * FormBeanのオブジェクトを作成する
	 * 
	 * @param context コンテキスト
	 * @param form FormBeanのクラス
	 * @return FormBeanオブジェクト
	 */
	@SuppressWarnings("rawtypes")
	protected ProjectFormDataSet createFormDataInstance(FormActionContext context, Class<? extends ProjectFormDataSet> form) {
		ProjectFormDataSet formBean = null;	
		try {
			// 言語情報を取得する
			HttpSession session = context.getRequest().getSession();
	        LanguageInfo lang = (LanguageInfo) session.getAttribute(FormActionContext.SESSION_LANG_NAME);
	        if (lang == null) {
	            lang = LanguageManager.getDefaultLanguage();
	        }
	        // FormBeanのオブジェクトを作成する
			formBean = (ProjectFormDataSet)form.getDeclaredConstructor(LanguageInfo.class).newInstance(lang);
		} catch (Exception e) {
			throw new InvalidOperationException(e);
        }
		return formBean;
	}

	/**
	 * 現在のアクションに対応するFacade処理を実行する
	 * @param context コンテキスト
	 */
	protected void invokeFacade(FormActionContext context) {
		FacadeProcessInvoker.invokeFacade(context);
	}

	/**
	 * アクションの処理結果を返します。
	 * @param context コンテキスト
	 * @return コマンド結果
	 */
	protected ActionResult result(FormActionContext context) {
		ActionResult result = null;
		if (context.cancel() || !context.isValid()) {
			if (context.getRestoreOnError() && context.getFormBeanSnapshot() != null) {
				// アクション実行直前の状態まで戻し、メッセージを表示する
				FormDataSet oldForm = context.getFormBeanSnapshot();
				context.setFormBeanSnapshot(null);
				oldForm.getServerMessages().clear();
				oldForm.getServerMessages().addAll(context.getFormBean().getServerMessages());
				context.setFormBean(oldForm);
			}
			if(context.isRequestAsync()) {
				// 入力チェックでエラーが発生したなど、アクション処理が中止された場合
				return new ResultAjaxData(context);
			}
		}

		// リザルトが設定された場合、そのまま使用する
		if (context.getResult() != null) {
			return context.getResult();
		}
		
		// ファイルダウンロード情報が存在する場合、ダウンロード用のリザルトを返却
		if (context.getDownloadInfo() != null) {
			return new ResultFileDownload();
		}

		// フォーム情報を取得する
		FormDataSet formBean = context.getFormBean();
		FormActionInfo formActionInfo = context.getFormAction();

		//アクション定義情報から、遷移先のコマンドクラスを取得する
		String pgId = formActionInfo.getForwardProgramId();
		String formId = formActionInfo.getForwardFormId();
		Class<? extends IfmControllerBase> next = null;
		if (pgId != null && formId != null && !formId.equals(context.getFormId())) {
			next = ApplicationClassFactory.createFormController(pgId, formId);
		} else if (pgId != null) {
			next = ApplicationClassFactory.createProgramInit(pgId);
		} else if (formId != null && !formId.equals(context.getFormId())) {
			pgId = formBean.INFO.getProgramId();
			next = ApplicationClassFactory.createFormController(pgId , formId);
		}
		if (pgId == null && formId != null) {
			pgId = formBean.INFO.getProgramId();
		}

		// Resultを作成する
		if (context.getClicked() == null || context.isLoadAction()) {
			// URL入力による画面表示、またはLoadアクションの場合
			result = new ResultFrameworkTransfer(this.programId, this.formId, context.getViewType());
		} else if (context.getClicked().getPageNo() != null || context.getClicked().getSortKeys() != null) {
			// ページャアクションと明細ソートアクションの場合
			result = new ResultAjaxData(context);
		} else {
			// アクションボタンが押された場合
			String oldFormId = context.getFormId();
			if ((formId != null || pgId != null) && !oldFormId.equals(formId)) {
				// 他画面遷移
				// JSON式のURLを返して、リダイレクトを行う。
				result = new ResultFrameworkTransfer(pgId, formId, context.getViewType());
			} else {
				// 自画面遷移
				// HTMLと画面情報をJSON式で返す。
				result = new ResultAjaxData(context);
			}
		}
		// 遷移先画面のコントローラクラスをResultにセットする
		result.setCntrollerClass(next);
		return result;
	}

    /**
     * コード参照
     * @param context　コマンドコンテキスト
     * @return コード参照の処理結果
     */
	public ActionResult _Code_Reference(FormActionContext context) {

		ICodeReferenceCommand command = this.<ICodeReferenceCommand> getCodeCommand(context);
		CodeReferenceContext codeContext = new CodeReferenceContext(context);
		if (codeContext.getCodeActionType() == CodeActionType.INVOKE) {
			RequestParameterDataParser.parseForm(context.getFormBean(), context.getRequest());
		}

		command.codeSearch(codeContext);

		// 初期化時はフォーム全体、それ以外は明細のみのビューを返す
		String viewFormat = (codeContext.getCodeActionType() == CodeActionType.INVOKE) ?
				FrameworkUtil.UrlHelper.CODEJSP_COD_URL_FORMAT :
				FrameworkUtil.UrlHelper.CODEJSP_COD_RESULT_URL_FORMAT;
		String viewType = context == null ? "" : context.getViewType();

		// 使用するJSPはViewTypeから決定します。
		String viewName = String.format(viewFormat, StringHelper.isNullOrEmpty(viewType) ? "" : "." + viewType);

		return new ResultCodeReference(command, viewName, codeContext.getCodeFormBean());
	}

    /**
     * コード取得
     * @param context コマンドコンテキスト
     * @return コード取得の処理結果
     * @throws DatabaseException
     */
    public ActionResult _Code_Get(FormActionContext context) {
 	   ICodeGetCommand command = this.<ICodeGetCommand>getCodeCommand(context);
 	   FormDataSet formBean = context.getFormBean();

 	   FormItemInfo codeFormItem = context.getClicked().getButtonInfo();
 	   CodeGetContext codeContext;
 	   if (codeFormItem.isListItem()) {
 		   ListRowData rowData = formBean.getListData(codeFormItem.getOwnerBorder()).displayRowAt(context.getClicked().getRowNo());
 		   codeContext = new CodeGetContext(CodeType.COG, context, formBean, codeFormItem, rowData);
 	   } else {
 		   codeContext = new CodeGetContext(CodeType.COG, context, formBean, codeFormItem);
 	   }

 	   // コード取得を実行
 	   command.codeGet(codeContext);
 	   return new ResultCodeGet(command, codeContext.getResult(), context.getCurrentLanguage());
    }

    /**
     * コードコマンドを取得します。
     * @param context コマンドコンテキスト
     * @return コードコマンド
     */
	protected <T extends ICodeItemCommand> T getCodeCommand (FormActionContext context) {
		ItemCodeInfo codeInfo = context.getClicked().getButtonInfo().getCode();
		if (codeInfo == null) {
			throw new InvalidOperationException();
		}
		@SuppressWarnings("unchecked")
		T command = (T)codeInfo.getCodeCommand();
		if (command == null) {
			throw new InvalidOperationException();
		}
		return command;
	}
}