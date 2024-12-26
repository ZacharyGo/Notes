package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.FormSortKey;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeActionType;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * コード参照コマンドの実行コンテキスト
 *
 * @author INTARFRM
 */
public class CodeReferenceContext {

	/**
	 * 仮想セッションキー
	 */
	private final String SESSION_KEY_CODE_FORM_DATA = "CODE_FORM_DATA";

	/**
	 * コード参照が設定された画面項目情報
	 */
	private FormItemInfo codeActionItem;

	/**
	 * 表示されている明細行インデックス
	 */
	private int displayRowIndex;

	/**
	 * コードアクションを実行しているフォームアクションコンテキスト
	 */
	private FormActionContext FormActionContext;

	/**
	 * コードタイプ
	 */
	private CodeActionType actionType;

	/**
	 * 明細表示開始行インデックス
	 */
	private int startRowIndex;

	/**
	 * ページサイズ
	 */
	private int pageSize;

	/**
	 * ソートキーのリスト
	 */
	public Iterable<FormSortKey> sortKeys;

	/**
	 * コード参照画面の情報を取得する
	 * @return コード参照画面の情報
	 */
	public CodeFormDataSet getCodeFormBean() {
		return (CodeFormDataSet)this.FormActionContext.getVirtualSession().get(SESSION_KEY_CODE_FORM_DATA);
	}

	/**
	 * コード参照画面の情報を設定する
	 * @param bean コード参照画面の情報
	 */
	public void setCodeFormBean(CodeFormDataSet bean) {
		this.FormActionContext.getVirtualSession().put(SESSION_KEY_CODE_FORM_DATA, bean);
	}

	/**
	 * 親画面のフォーム情報を取得する
	 * @return 親画面のフォーム情報
	 */
	public FormDataSet getParentFormBean() {
		return this.FormActionContext.getFormBean();
	}

	/**
	 *  コード参照が設定された画面項目情報を取得する
	 * @return  コード参照が設定された画面項目情報
	 */
	public FormItemInfo getCodeActionItem() {
		return this.codeActionItem;
	}

	/**
	 * 表示されている明細行インデックスを取得する
	 * @return 表示されている明細行インデックス
	 */
	public int getDisplayRowIndex() {
		return this.displayRowIndex;
	}

	/**
	 * コードアクションを実行しているフォームアクションコンテキストを取得する
	 * @return コードアクションを実行しているフォームアクションコンテキスト
	 */
	public FormActionContext getFormActionContext() {
		return this.FormActionContext;
	}

	/**
	 * コードタイプを取得する
	 * @return コードタイプ
	 */
	public CodeActionType getCodeActionType() {
		return this.actionType;
	}

	/**
	 * 明細表示開始行インデックスを取得する
	 * @return 明細表示開始行インデックス
	 */
	public int getStartIndex() {
		return this.startRowIndex;
	}

	/**
	 * 明細表示開始行インデックスを設定する
	 * @param index 明細表示開始行インデックス
	 */
	public void setStartIndex(int index) {
		this.startRowIndex = index;
	}

	/**
	 * 明細のページサイズを取得する
	 * @return 明細のページサイズ
	 */
	public int getPageSize() {
		return this.pageSize;
	}

	/**
	 * 明細のページサイズを設定する
	 * @param pageSize 明細のページサイズ
	 */
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	/**
	 * ソートキーのリストを取得する
	 * @return ソートキーのリスト
	 */
	public Iterable<FormSortKey> getSortKey() {
		return this.sortKeys;
	}

	/**
	 * ソートキーのリストを設定する
	 * @param keys ソートキーのリスト
	 */
	public void setSortKey(Iterable<FormSortKey> keys) {
		this.sortKeys = keys;
	}

	/**
	 * コンストラクタ
	 * @param FormActionContext
	 */
	public CodeReferenceContext(FormActionContext context) {

        HttpServletRequest request = context.getRequest();
        /// コード参照のリクエストが、フォーム表示前の初回のリクエストかどうかを調べる
        boolean isInit;

        try {
			isInit = Boolean.parseBoolean(request.getParameter("__init"));
		} catch (Exception e) {
			isInit = false;
		}


        this.actionType = isInit ? CodeActionType.INVOKE : CodeActionType.SEARCH;

        String strActionType = request.getParameter("actionType");
        if (!StringHelper.isNullOrEmpty(strActionType)) {
        	this.actionType = CodeActionType.valueOf(strActionType.toUpperCase());
            for (CodeActionType value : CodeActionType.values()) {
            	value.toString();
            }
        }

        // 開始行とページサイズ、ソート順の設定
        int start, num;
        try {
        	start = Integer.parseInt(request.getParameter("start"));
        } catch (NumberFormatException e) {
        	start = 0;
        }

        try {
        	num = Integer.parseInt(request.getParameter("num"));
        } catch (NumberFormatException e) {
        	num = 0;
        }

        this.setStartIndex(start);
        this.setPageSize(num);
        this.sortKeys = FormSortKey.parse(
        		Arrays.asList(request.getParameterValues("sortKeys") != null ?
        				request.getParameterValues("sortKeys") : new String[0]));
        this.FormActionContext = context;
        if (context.getClicked().getRowNo() != null) {
        	this.displayRowIndex = context.getClicked().getRowNo();
        }
        this.codeActionItem = context.getClicked().getButtonInfo();
	}
}
