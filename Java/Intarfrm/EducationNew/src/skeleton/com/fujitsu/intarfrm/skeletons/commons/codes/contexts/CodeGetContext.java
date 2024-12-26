package com.fujitsu.intarfrm.skeletons.commons.codes.contexts;

import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.skeletons.commons.framework.FormActionContext;

/**
 * コードのキー値からレコード1件を取得するアクションのコンテキスト
 *
 * @author INTARFRM
 */
public class CodeGetContext {

	/**
	 * コードのアクションタイプ（コード取得またはコードチェック）
	 */
	private CodeType actionType;

	/**
	 * 親フォームのフォームデータ
	 */
	private FormDataSet parentForm;

	/**
	 * コードアクションを実行しているフォームアクションコンテキスト
	 */
	private FormActionContext FormActionContext;

	/**
	 * アクション対象のコードのフォーム項目情報
	 */
	private FormItemInfo codeActionItem;

	/**
	 * コードアクション対象の明細行データ（カード部のアクションの場合はnull）
	 */
	private ListRowData targetRowData;

	/**
	 * 検索結果のレコードを取得または設定する。該当するレコードがない場合はnull。
	 */
	private DbRecord result;

	/**
	 * コンストラクタ（明細部）
	 * @param actionType コードタイプ
	 * @param FormActionContext フォームアクションコンテキスト
	 * @param formData フォーム情報
	 * @param codeItem コード項目
	 * @param targetRowData 対象明細行データ
	 */
	public CodeGetContext(
			CodeType actionType,
			FormActionContext FormActionContext,
			FormDataSet formData,
			FormItemInfo codeItem,
			ListRowData targetRowData) {

		this.actionType = actionType;
        this.FormActionContext = FormActionContext;
        this.parentForm = formData;
        this.codeActionItem = codeItem;
        this.targetRowData = targetRowData;
	}

	/**
	 * コンストラクタ（カード部）
	 * @param actionType コードタイプ
	 * @param FormActionContext フォームアクションコンテキスト
	 * @param formData フォーム情報
	 * @param codeItem コード項目
	 */
	public CodeGetContext(
			CodeType actionType,
			FormActionContext FormActionContext,
			FormDataSet formData,
			FormItemInfo codeItem){
		this(actionType, FormActionContext, formData, codeItem, null);
	}

	/**
	 * コードのアクションタイプを取得します。
	 * @return アクションタイプ
	 */
	public CodeType getActionType() {
		return this.actionType;
	}

	/**
	 * 親フォームのフォームデータを取得します。
	 * @return フォームデータ
	 */
	public FormDataSet getParentForm() {
		return this.parentForm;
	}

	/**
	 * 親フォームのフォームデータを設定します。
	 * @param dataSet フォームデータ
	 */
	protected void setParentForm(FormDataSet dataSet) {
		this.parentForm = dataSet;
	}

	/**
	 * フォームアクションコンテキストを取得します。
	 * @return フォームアクションコンテキスト
	 */
	public FormActionContext getFormActionContext() {
		return this.FormActionContext;
	}

	/**
	 * フォームアクションコンテキストを設定します。
	 * @param context フォームアクションコンテキスト
	 */
	protected void setFormActionContext(FormActionContext context) {
		this.FormActionContext = context;
	}

	/**
	 * コードのフォーム項目情報を取得します。
	 * @return フォーム項目情報
	 */
	public FormItemInfo getCodeActionItem() {
		return this.codeActionItem;
	}

	/**
	 * コードのフォーム項目情報を設定します。
	 * @param itemInfo
	 */
	protected void setCodeActionItem(FormItemInfo itemInfo) {
		this.codeActionItem = itemInfo;
	}

	/**
	 * コードアクション対象の明細行データを取得します。
	 * @return 明細行データ。カード部の場合はnull。
	 */
	public ListRowData getTargetRowData() {
		return this.targetRowData;
	}

	/**
	 * 検索結果のレコードを取得します。
	 * @return レコード。該当レコードがない場合はnull。
	 */
	public DbRecord getResult() {
		return this.result;
	}

	/**
	 * 検索結果のレコードを設定します。
	 * @param result レコード。
	 */
	public void setResult(DbRecord result) {
		this.result = result;
	}
}
