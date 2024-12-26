package com.fujitsu.intarfrm.skeletons.commons.framework;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.util.regex.Matcher;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ObjectStorage;
import com.fujitsu.intarfrm.helpers.commons.framework.ClickedButtonInfo;
import com.fujitsu.intarfrm.helpers.commons.framework.FormActionContextBase;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil;
import com.fujitsu.intarfrm.helpers.commons.framework.FrameworkUtil.CommandType;
import com.fujitsu.intarfrm.helpers.commons.framework.VirtualSession;
import com.fujitsu.intarfrm.helpers.commons.items.FormIdentity;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogContext;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.utils.ObjectSerializer;
import com.fujitsu.intarfrm.helpers.views.filters.fileupload.FilePart;
import com.fujitsu.intarfrm.helpers.views.filters.fileupload.FileUploadContext;
import com.fujitsu.intarfrm.helpers.views.filters.fileupload.MimePart;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.logging.ApplicationLog;

/**
 * フォームアクションのコンテキストクラスです。
 *
 * @author INTARFRM
 */
public class FormActionContext extends FormActionContextBase {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 任意のオブジェクトを保持するためのマップ
	 */
	private final ObjectStorage userMap = new ObjectStorage();

	/**
	 * FormBeanの新しく作る処理フラグ
	 */
	private boolean createNewFormBean = true;

	/**
	 * 処理中断フラグ
	 */
	private boolean cancel = false;

	/**
	 * このコンテキストでエラーが発生したかどうかを取得または設定するフラグ
	 * （true=エラーなし、false=エラーあり）
	 */
	private boolean isValid = true;

	/**
	 * エラー発生時にフォームデータの状態を元に戻すかどうかのフラグ
	 */
	private boolean restoreOnError = true;

	/**
	 * 対象フォームアクションID
	 */
	public String formActId;

	/**
	 * リクエスト処理が完了した時点のフォームデータのスナップショット
	 */
	private FormDataSet formBeanSnapshot;

	/**
	 * 現在のアクションで使用するApplicationLogインスタンス
	 */
	private ApplicationLog log;

	/**
	 * コンストラクタ
	 */
	public FormActionContext(HttpServletRequest req, HttpServletResponse res) {
		super(req, res);

		// コマンド情報を作成する
		this.createCommandInfo();
	}

	/**
	 * リクエストからコマンド情報を取得する
	 */
	private void createCommandInfo() {

	    // アクションの同期/非同期を判断する
	    if (this.request.getHeader("X-Requested-With") != null) {
		    this.isRequestAsync = this.request.getHeader("X-Requested-With").equals("XMLHttpRequest");
	    }

	    // リクエストからURLを取得する
	    String url = this.request.getRequestURI();
	    String path = this.request.getServletPath();

	    // URLからコントローラ情報を取得する
		if (url.endsWith(FrameworkUtil.ServiceConstants.ActionPostfix)) {
			this.commandType = CommandType.ACTION;
			Matcher mch = FrameworkUtil.Regexes.PostActionRegex.matcher(path);
			if (mch.matches()) {
				this.setPgId(mch.group(1));
				this.setFormId(mch.group(2));
			}
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.RenderPostfix)) {
			this.commandType = CommandType.RENDER;
			Matcher mch = FrameworkUtil.Regexes.RenderRegex.matcher(path);
			if (mch.matches()) {
				this.setPgId(mch.group(1));
				this.setFormId(mch.group(2));
			}
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.InitPostfix)) {
			this.commandType = CommandType.INIT;
			Matcher mch = FrameworkUtil.Regexes.InitRegex.matcher(path);
			if (mch.matches()) {
				this.setPgId(mch.group(1));
			}
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.FileDownloadPrefix)) {
			this.commandType = CommandType.DOWNLOAD;
			Matcher mch = FrameworkUtil.Regexes.DownloadRegex.matcher(path);
			if (mch.matches()) {
				this.setPgId(mch.group(1));
			}
		} else if (url.endsWith(FrameworkUtil.ServiceConstants.Resourcefix)) {
			this.commandType = CommandType.RESOURCE;
		}
	}

	/**
	 * クリックされたボタン項目とフォームアクションを取得します。
	 */
	public void createFormAction() {
		// urlからパラメータを取得する
		String formItemId = this.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlClickItemKey);
		String rowIndex = this.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlClickRowIndexKey);
		String formActionId = this.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlFormActionKey);
		String pageNo = this.getRequest().getParameter(FrameworkUtil.ServiceConstants.UrlClickPageNoKey);
		String[] sortKeysStr = this.getRequest().getParameterValues(FrameworkUtil.ServiceConstants.UrlClickSortKeysKey);

		// フォームアクション情報を取得する
		if (formActionId != null) {
			if (this.getFormBean().INFO.getFormActions().containsKey(formActionId.toUpperCase())) {
				this.formAction = this.getFormBean().INFO.getFormActions().get(formActionId.toUpperCase());
			}
		}

		// クリックされた項目の情報を取得する
		if (rowIndex != null && rowIndex != "-1") {
			// 明細部のボタンがクリックされた場合
			this.clicked = new ClickedButtonInfo(this.getFormBean().INFO.getItem(formItemId), new Integer(rowIndex));
		} else if (formItemId != null) {
			// カード部のボタンがクリックされた場合
			this.clicked = new ClickedButtonInfo(this.getFormBean().INFO.getItem(formItemId), -1);
		} else {
			// 明細のページャアとソートの場合
			this.clicked = new ClickedButtonInfo(null, null);
		}

		// ページャアクションの場合
		if (pageNo != null) {
			this.clicked.setPageNo(new Integer(pageNo));
		}

		// ソートアクションの場合
		if (sortKeysStr != null) {
			ArrayList<String> keysList = new ArrayList<>();
			for (String sortKeyStr : sortKeysStr) {
				keysList.add(sortKeyStr);
			}
			this.clicked.setSortKeys(keysList);
		}
	}

    /**
     * ログ情報のコンテキストを取得します。
     */
	public IfmLogContext getLogContext() {
		return getLog().getLogContext();
	}

	/**
	 * 遷移先画面を変更します。
	 */
	public void setNextForm(FormIdentity formIdentity) {
		ArgumentValidator.checkNull(formIdentity, "formIdentity");
		// 遷移先情報を変更します。
		this.getFormAction().setForwardProgramId(formIdentity.getProgramId());
		this.getFormAction().setForwardFormId(formIdentity.getFormId());
	}

	/**
	 * リクエスト処理が完了した時点のフォームデータのスナップショットを設定します。
	 */
	public void setFormBeanSnapshot(FormDataSet form) {
		try {
			this.formBeanSnapshot = ObjectSerializer.deepCopy(form);
		} catch (Exception e) {
			throw new SystemErrorException(e);
		}
	}

	/**
	 * リクエスト処理が完了した時点のフォームデータのスナップショットを取得します。
	 */
	public FormDataSet getFormBeanSnapshot() {
		return this.formBeanSnapshot;
	}

	// ------------------------------------------------------

	/**
	 * アクションボタン情報を持っていればtrueを返します。
	 */
	public boolean hasClickedInfo() {
		return this.clicked != null;
	}

	/**
	 * 仮想セッションのアクセスキーを指定して削除します。
	 */
	public void removeVirtualSession(String accessKey) {
		if (accessKey != null) {
			this.getVirtualSessionCollection().remove(accessKey);
		}
	}

	/**
	 * 新規ウインドウが開かれたとしてフレームワークの処理を切り替えます。
	 */
	public VirtualSession asNewWindow() {
		VirtualSession vs = this.getVirtualSessionCollection().createNewVirtualSession();
		this.virtualSession = vs;
		return vs;
	}

	/**
	 * フォームコントローラクラスのLoadアクションで、FormBeanのリフレッシュ処理が必要かどうかのフラグを取得します。 デフォルトはtrueです。
	 */
	public boolean createNewFormBean() {
		return this.createNewFormBean;
	}

	/**
	 * フォームコントローラクラスのLoadアクションでのFormBeanのリフレッシュ処理をスキップするように設定します。
	 */
	public void skipCreateNewFormBean() {
		this.createNewFormBean = false;
	}

	/**
	 * 処理中断フラグを設定します。 
	 */
	public void setCancel(boolean cancel) {
		this.cancel = cancel;
	}

	/**
	 * 処理中断フラグを取得します。
	 */
	public boolean cancel() {
		return cancel;
	}

	/**
	 * エラーフラグを設定します。
	 */
	public void setIsValid (boolean isValid) {
		this.isValid = isValid;
	}

	/**
	 * エラーフラグを取得します。
	 */
	public boolean isValid () {
		return this.isValid;
	}

	/**
	 * フォームデータ復元フラグを設定します。
	 */
	public void setRestoreOnError (boolean restoreOnError) {
		this.restoreOnError = restoreOnError;
	}

	/**
	 * フォームデータ復元フラグを取得します。
	 */
	public boolean getRestoreOnError () {
		return this.restoreOnError;
	}

	/**
	 * パラメータの受け渡しに使用するユーザマップオブジェクトを取得します。
	 */
	public ObjectStorage getUserMap() {
		return this.userMap;
	}
	
	/**
	 * 指定したフォーム項目IDの画面項目からアップロードされたファイルを取得します。
	 */
	public FilePart getUploadFile(String formItemId) {
		return this.getUploadFile(formItemId, -1);
	}

	/**
	 * 指定したフォーム項目IDの画面項目からアップロードされたファイルを取得します。
	 */
	public FilePart getUploadFile(String formItemId, int rowIndex) {
		FileUploadContext fuc = (FileUploadContext) this.getRequest().getAttribute(FileUploadContext.CONTEXT);
		String name = this.getFormId().toLowerCase() + "-" + formItemId.toLowerCase();
		if (rowIndex >= 0) {
			name += ("-" + rowIndex);
		}
		if (fuc != null && !fuc.sizeOverflow()) {
			MimePart file = fuc.getFile(name);
			if (file != null) {
				return (FilePart) file;
			}
		}
		return null;
	}

	/**
	 * 指定したフォーム項目IDの画面項目からアップロードされたファイルを取得します。<br>
	 * ファイルアップロードにmultiple属性を使用した場合にはこちらを使用してください。<br>
	 */
	public Iterable<FilePart> getUploadFiles(String formItemId) {
		return this.getUploadFiles(formItemId, -1);
	}

	/**
	 * 指定したフォーム項目IDの画面項目からアップロードされたファイルを取得します。<br>
	 * ファイルアップロードにmultiple属性を使用した場合にはこちらを使用してください。<br>
	 */
	public Iterable<FilePart> getUploadFiles(String formItemId, int rowIndex) {
		FileUploadContext fuc = (FileUploadContext) this.getRequest().getAttribute(FileUploadContext.CONTEXT);
		String name = this.getFormId().toLowerCase() + "-" + formItemId.toLowerCase();
		ArrayList<FilePart> result = new ArrayList<FilePart>();
		if (rowIndex >= 0) {
			name += ("-" + rowIndex);
		}
		if (fuc != null && !fuc.sizeOverflow()) {
			List<MimePart> files = fuc.getFiles(name);
			if (files != null) {
				for (MimePart file : files) {
					result.add((FilePart) file);
				}
				return result;
			}
		}
		return null;
	}
	/**
	 * 任意のパラメータをユーザマップに保持させます。
	 */
	public void put(String key, Serializable val) {
		this.userMap.put(key, val);
	}

	/**
	 * ユーザマップに保持した任意のオブジェクトを取得します。
	 */
	@SuppressWarnings("unchecked")
	public <T> T get(String key) {
		return (T) this.userMap.get(key);
	}

	/**
	 * ユーザマップに保持した任意のオブジェクトを削除します。
	 */
	public void remove(String key) {
		this.userMap.remove(key);
	}

	/**
	 * コンテキストが管理するユーザマップが指定のキーを保持する場合に true を返します。
	 */
	public boolean containsKey(String key) {
		return this.userMap.containsKey(key);
	}

	/**
	 * コンテキストが管理するユーザマップをクリアします。
	 */
	public void clear() {
		this.userMap.clear();
	}

	/**
	 * 現在のアクション情報に関連付けられたApplicationLogインスタンスを取得する。
	 */
	public ApplicationLog getLog() {
		if (log == null) {
			log = new ApplicationLog();
			// ログの初期値を設定します。
			log.getLogContext().setClientIPAddress(this.request.getRemoteAddr());
			if (this.request.getRequestURL() != null) {
				log.getLogContext().setRequestURL(this.request.getRequestURL().toString());
			}
			if (this.request.getSession(false) != null) {
				log.getLogContext().setSessionId(this.request.getSession().getId());
			}
			log.getLogContext().setUserId(this.request.getRemoteUser());
		}
		log.getLogContext().setProgrameId(this.getPgId());
		return log;
	}
}