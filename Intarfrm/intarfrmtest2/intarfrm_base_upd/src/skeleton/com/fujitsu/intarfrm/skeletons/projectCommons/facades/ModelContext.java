package com.fujitsu.intarfrm.skeletons.projectCommons.facades;

import java.io.Serializable;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ObjectStorage;
import com.fujitsu.intarfrm.helpers.commons.exceptions.ArgumentNullException;
import com.fujitsu.intarfrm.helpers.commons.filedownload.FileDownloadInfo;
import com.fujitsu.intarfrm.helpers.commons.framework.ClickedButtonInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormActionInfo;
import com.fujitsu.intarfrm.helpers.commons.langs.LanguageInfo;
import com.fujitsu.intarfrm.helpers.commons.logging.IfmLogContext;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;
import com.fujitsu.intarfrm.skeletons.commons.logging.ApplicationLog;

/**
 * Facade以下のモデル層でFormDataSet、トランザクションオブジェクト、その他のパラメータを
 * 受渡すためのコンテキストクラスです。
 *
 * @author INTARFRM
 */
public class ModelContext<T extends FormDataSet> {
	/**
	 * FormBeanのインスタンス
	 */
	private T formBean;
	/**
	 * 	FormActionContextから取得するUserMapオブジェクト
	 */
	private ObjectStorage userMap;
	/**
	 * トランザクション
	 */
	private DbTransaction transaction;
	/**
	 * アクション発生元情報
	 */
	private ClickedButtonInfo clicked;

	/**
	 * フォームアクション情報
	 */
	private FormActionInfo formActInfo;

	/**
	 * 現在選択されている言語情報
	 */
	private LanguageInfo lang;
	/**
	 * Facadeメソッドの処理中断フラグ
	 */
	private boolean cancel;

	/**
	 * アクションとして実行するメソッド名
	 */
	private String methodName;

	/**
	 * 現在のアクションで使用するApplicationLogインスタンス
	 */
	private ApplicationLog log;

    /**
     * ファイルダウンロードアクションのデータ取得処理情報
     */
    private FileDownloadInfo downloadInfo;

	/**
	 * <p>コンストラクタ</p>
	 *
	 * {@link FormActionContext}からFormBean, UserMapの参照を取得します。
	 * FormBeanが取得できなかった場合はSystemErrorExceptionがthrowされます。
	 *
	 * @param context [FMID]CreateProcess、[FMID][ITEMID]Processクラスで使用される{@link FormActionContext}
	 */
	@SuppressWarnings("unchecked")
	public ModelContext(FormActionContext context) {
		ArgumentValidator.checkNull(context, "context");

		//FormActionContextに保持されているFormBeanをチェックします。
		if (context.getFormBean() != null && context.getFormBean() instanceof FormDataSet) {
			this.formBean = (T) context.getFormBean();
		} else {
			//FormBeanがnullの場合は例外をスローします。
			throw new SystemErrorException("FormActionContextからFormBeanが取得できませんでした。");
		}
		//UserMapの参照を取得します。
		this.userMap = context.getUserMap();
		//トランザクションを作成します。
		this.transaction = new DbTransaction();
		//アクション発生元情報を取得します。
		this.clicked = context.getClicked();
		// アクション情報を取得します。
		this.formActInfo = context.getFormAction();
		//言語情報を取得します。
		this.lang = context.getCurrentLanguage();
		this.cancel = false;
		//ロガーを取得します
		this.log = context.getLog();
	}

	/**
	 * <p>型パラメータに指定された型のFormBeanを取得します。</p>
	 *
	 * @return FormBean
	 */
	public T getFormBean() {
		return formBean;
	}

	/**
	 * フォームアクション情報
	 * @return FormActionInfo
	 */
	public FormActionInfo getFormActInfo() {
		return this.formActInfo;
	}

	/**
	 * <p>UserMapオブジェクトを取得します。</p>
	 *
	 * @return UserMapオブジェクト（HashMap&lt;String, Object&gt;オブジェクト）
	 */
	public ObjectStorage getUserMap() {
		return userMap;
	}

	/**
	 * アクションを発生させたボタン・リンク等の情報を取得します。
	 * @return アクション発生元の情報
	 */
	public ClickedButtonInfo getClicked() {
		return clicked;
	}

	/**
	 * 現在有効な言語情報を取得します。
	 *
	 * @return 言語情報
	 */
	public LanguageInfo getCurrentLanguage() {
		return lang;
	}

	/**
	 * トランザクションオブジェクトを取得します。
	 *
	 * @return トランザクション
	 */
	public DbTransaction getTransaction() {
		return transaction;
	}

	/**
	 * <p>Facadeメソッド実行を中断したい場合は、trueを設定します。
	 * 詳細はこのクラスの説明、および、{@link FacadeProcessInvoker}クラスを参照してください。</p>
	 *
	 * @param cancel true: 処理を中断  false: 処理を続行
	 * @see ModelContext
	 * @see FacadeProcessInvoker
	 */
	public void setCancelFlag(boolean cancel) {
		this.cancel = cancel;
	}

	/**
	 * <p>Facadeメソッド実行処理中断フラグを取得します。
	 * trueの場合は以降の処理が中断されます。</p>
	 *
	 * @return true: 処理を中断  false: 処理を続行
	 * @see ModelContext
	 * @see FacadeProcessInvoker
	 */
	public boolean cancel() {
		return cancel;
	}

	/**
	 * <p>UserMapオブジェクトへ任意のオブジェクトを追加します。</p>
	 * キーにnullまたは空文字を指定した場合は例外をスローするので注意してください。<br>
	 * <br>
	 *
	 * @param key キー
	 * @param val 値
	 */
	public void put(String key, Serializable val) {
		this.userMap.put(key, val);
	}

	/**
	 * <p>{@link #put}メソッドで保持した任意のオブジェクトを取得します。</p>
	 * キーにnullまたは空文字を指定した場合は例外をスローするので注意してください。<br>
	 * 値がキャストできない場合は例外をスローします。<br>
	 * <br>
	 * @param <TVal> 戻り値の型
	 * @param key キー
	 * @return Tで指定された型にキャストして返されます
	 */
	@SuppressWarnings("unchecked")
	public <TVal> TVal get(String key) {
		return (TVal)this.userMap.get(key);
	}

	/**
	 * <p>{@link #put}メソッドで保持した任意のオブジェクトを削除します。</p>
	 *
	 * キーにnullまたは空文字を指定した場合は例外をスローするので注意してください。<br>
	 * <br>
	 * @param key キー
	 * @exception ArgumentNullException キーがnullもしくは空文字の場合。
	 */
	public void remove(String key) {
		this.userMap.remove(key);
	}

	/**
	 * <p>コンテキストが管理するユーザマップが指定のキーを保持する場合に true を返します。</p>
	 *
	 * キーにnullまたは空文字を指定した場合はfalseではなく、例外をスローするので注意してください。<br>
	 * <br>
	 * @param key キー
	 * @return true = マッピングを保持する。false = マッピングを保持しない。
	 * @exception ArgumentNullException キーがnullもしくは空文字の場合。
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
	 * アクションとして実行するメソッド名を取得します。
	 * @return メソッド名
	 */
	String getMethodName() {
		return this.methodName;
	}

	/**
	 * アクションとして実行するメソッド名を設定します。
	 * @param methodName メソッド名
	 */
	void setMethodName(String methodName) {
		this.methodName = methodName;
	}

    /**
     * ファイルダウンロードアクションのデータ取得処理情報を取得します。
     * @return
     *         FileDownloadInfo
     */
    public FileDownloadInfo getDownloadInfo() {
        return this.downloadInfo;
    }

    /**
     * ファイルダウンロードアクションのデータ取得処理情報を設定します。
     * @param downloadInfo
     *            ファイルダウンロードアクションのデータ取得処理情報
     */
    public void setDownloadInfo(FileDownloadInfo downloadInfo) {
        this.downloadInfo = downloadInfo;
    }

	/**
	 * 現在のアクション情報に関連付けられたApplicationLogインスタンスを取得する。
	 * @return アプリケーションログ
	 */
	public ApplicationLog getLog() {
		if (log == null) {
			log = new ApplicationLog();
		}
		return log;
	}

    /**
     * ログ情報のコンテキストを取得します。
     * @return ログコンテキスト
     */
	public IfmLogContext getLogContext() {
		return getLog().getLogContext();
	}
}
