package com.fujitsu.intarfrm.skeletons.projectCommons.codes;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.beans.IfmSortKey;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.SortingHelper;
import com.fujitsu.intarfrm.helpers.commons.beans.parsers.RequestParameterDataParser;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeActionType;
import com.fujitsu.intarfrm.helpers.commons.codes.CodeSortKey;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeFormDataSet;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeListData;
import com.fujitsu.intarfrm.helpers.commons.codes.data.CodeListRow;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeItemInfo;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchBoundType;
import com.fujitsu.intarfrm.helpers.commons.codes.inherits.CodeSearchType;
import com.fujitsu.intarfrm.helpers.commons.exceptions.InvalidOperationException;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.messages.ProjectCommonMessage;
import com.fujitsu.intarfrm.helpers.commons.utils.ArgumentValidator;
import com.fujitsu.intarfrm.helpers.commons.validating.InputValidationManager;
import com.fujitsu.intarfrm.helpers.models.entity.DbRecord;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeReferenceContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchCondition;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchContext;
import com.fujitsu.intarfrm.skeletons.commons.codes.contexts.CodeSearchResultPage;
import com.fujitsu.intarfrm.skeletons.commons.codes.itemcommands.ICodeReferenceCommand;

/**
 *コード参照コマンドの基底クラス。
 *このクラスは、コード参照、コード取得、コードチェックの基本実装を記述します。
 *
 * @author INTARFRM
 */
public abstract class ProjectCodeReferenceCommand extends ProjectCodeGetCommand implements ICodeReferenceCommand {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * コード参照フォームの検索結果明細の明細モード
	 * 既定はモード１。
	 */
	private FormListMode listMode = FormListMode.MODE_1;

	/**
	 * コード参照フォームの検索結果明細の明細モードを取得する
	 * @return 明細モード
	 */
	public FormListMode getListMode() {
		return this.listMode;
	}

	/**
	 * コード参照フォームの検索結果明細の明細モードを設定する
	 * @param mode 明細モード
	 */
	public void setListMode(FormListMode mode) {
		this.listMode = mode;
	}

	/**
	 * コード参照を実行する
	 */
	public void codeSearch(CodeReferenceContext context) {
		CodeActionType action = context.getCodeActionType();
		CodeFormDataSet bean = this.getCodeFormBean(action, context);
		CodeListData listData = bean.M1();

		if (action == CodeActionType.INVOKE) {
			// 初回はコード参照フォームデータを新規作成する
			this.lastSearchResult = null;
			this.codeInvoking(context, bean);

			if (!this.getCodeInfo().getSearchOnInit()) {
				// 初回検索しない
				return;
			}
		} else if (action == CodeActionType.SEARCH) {
			// 検索ボタン処理
			// リクエストデータをコード参照FormBeanに設定する
			if (!this.getCodRequestValue(context, bean)) {
				// エラーが発生した場合処理を中断する
				return;
			}
			// 検索前に明細データをクリアする
			listData.clear();
		} else if (action == CodeActionType.PAGING || action == CodeActionType.SORTING) {
			// ページングとソート処理
			// エラーメッセージを再描画させない
			bean.getServerMessages().setUpdateMessage(false);
			// 検索条件を最後に検索が成功した状態にする
			bean.CARD.rollback();

			if (context.getCodeActionType() == CodeActionType.SORTING) {
				// 明細のソート状態を設定する
				listData.setSortState(context.sortKeys);
			}
		}
		// 検索実行
		this.executeSearch(context);
		// 検索が成功した検索条件の状態を保存する
		bean.CARD.commit();
	}

	/**
	 * 検索を実行し、検索結果を明細データに反映します
	 * @param context コード参照アクションコンテキスト
	 */
	private void executeSearch(CodeReferenceContext context) {
		CodeFormDataSet bean = context.getCodeFormBean();
		CodeListData listData = bean.M1();

		// 開始行インデックス、ページサイズを設定する
		if (context.getPageSize() == 0) {
			context.setPageSize(listData.getInfo().getDisplayRowCount());
		}
		if (context.getStartIndex() > this.getCodeInfo().getMaxDisplayRow()) {
			context.setStartIndex(this.getCodeInfo().getMaxDisplayRow() - 1);
		}
		context.setStartIndex(context.getStartIndex() - context.getStartIndex() % context.getPageSize());

		if (context.getCodeActionType() == CodeActionType.SORTING) {
			// 明細ソートの状態を設定する
			listData.setSortState(context.sortKeys, false);
		} else if (context.getCodeActionType() == CodeActionType.SEARCH) {
			// ソート状態をクリアする
			listData.clear();
		}

		// 検索実行
		CodeSearchResultPage result;
		try {
			result = this.getResultPage(context);
		} catch (DatabaseException e) {
			//例外が発生した場合は処理を中断
			return;
		}

		int limitedTotalCount = result.getTotalCount();
		if (this.getCodeInfo().getMaxDisplayRow() > 0) {
			//最大取得件数に制限する
			limitedTotalCount = Math.min(limitedTotalCount, this.getCodeInfo().getMaxDisplayRow());
		}

		for (int i = 0; i < 3; i++) {
			// startIndexが総件数を超えていないかどうかをチェックする。
			if (limitedTotalCount == 0 || limitedTotalCount > context.getStartIndex()) {
				break;
			}

			// startIndexが総件数を超えていた場合、総件数内で表示できる最終ページを取得する
			context.setStartIndex(getLastPageStartRowIndex(limitedTotalCount, context.getPageSize()));

			// 最終ページを再取得
			try {
				result = this.getResultPage(context);
			} catch (DatabaseException e) {
				// エラーが発生した場合、処理を中断
				return;
			}
		}

		// 明細の内容を設定
		listData.clearAllRows();
		listData.setTotalRowCount(limitedTotalCount);
		listData.getPage().setDisplayRowCount(context.getPageSize(), false);
		listData.getPage().setPageStartRow(context.getStartIndex());

		int index = 0;
		int getCount = limitedTotalCount - context.getStartIndex();
		for (DbRecord record : result.getPageData()) {
			if(index >= getCount){
				break;
			}
			CodeListRow row = listData.newRow(true);
			row.setRecord(record);
			this.rowMapping(record, row);
			index++;
		}

		if (listData.totalRowCount() >= this.getCodeInfo().getMaxDisplayRow()) {
			//最大件数に達した場合のメッセージ
			ProjectCommonMessage pjMsg = new ProjectCommonMessage(1, "CodeMaxDisplay");
			bean.getServerMessages().add(pjMsg);
		}
		context.setCodeFormBean(bean);
	}

	/**
	 * コード参照フォームデータを取得します
	 * @param action コード参照アクション
	 * @param context コード参照アクションコンテキスト
	 * @return　コード参照フォームデータ
	 */
	private CodeFormDataSet getCodeFormBean(CodeActionType action, CodeReferenceContext context) {
		CodeFormDataSet bean = null;
		if (action == CodeActionType.INVOKE) {
			// 初回はコード参照フォームデータを新規作成する
			bean = this.createFormBean(context);
			bean.setCodeAction(action);
			context.setCodeFormBean(bean);
		} else {
			// 初回以外は保存されているフォームデータを取得する
			bean = context.getCodeFormBean();
			bean.setCodeAction(action);
			bean.getServerMessages().clear();
			bean.getServerMessages().setUpdateMessage(true);
		}
		return bean;
	}

	/**
	 * リクエストデータから検索条件を作成し、検索処理を実行します
	 * @param context コード参照アクションコンテキスト
	 * @return 検索結果
	 * @throws DatabaseException
	 */
	protected CodeSearchResultPage getResultPage(CodeReferenceContext context) throws DatabaseException {
		if (this.listMode == FormListMode.MODE_1) {
			// ページごとにDB検索を実行する
			return this.mode1Find(context, context.getStartIndex(), context.getPageSize());
		} else {
			// 全件キャッシュしてメモリ上でソートする
			if (context.getCodeActionType() == CodeActionType.INVOKE
					|| context.getCodeActionType() == CodeActionType.SEARCH) {
				this.lastSearchResult = this.mode2Find(context);
			}
			return this.mode2Paging(context);
		}
	}

	/**
	 * コード参照の検索を実行し、該当レコードの総件数と、明細1ページ分のデータを取得する。
	 * このメソッドは、ListModeプロパティが　Mode1 の場合のみ使用されます。
	 * @param context CodeReferenceContext
	 * @param startIndex ページの開始行インデックス
	 * @param pageSize 1ページあたりの表示件数
	 * @return 該当レコードの総件数と、明細1ページ分のデータ
	 * @throws DatabaseException
	 */
	protected CodeSearchResultPage mode1Find(CodeReferenceContext context, int startIndex, int pageSize) throws DatabaseException {
		CodeSearchContext searchContext = this.createCodeReferenceSearchContext(context, context.getCodeFormBean());
		CodeSearchResultPage res = new CodeSearchResultPage();
		res.setTotalCount(this.getFinder().getCount(searchContext));
		if (res.getTotalCount() > startIndex) {
			res.setPageData(this.getFinder().find(searchContext, startIndex, pageSize));
		}
		return res;
	}

	/**
	 * キャッシュされた前回の検索結果（明細モード2用）
	 */
	List<DbRecord> lastSearchResult;

	/**
	 * コード参照の検索を実行し、結果を全件取得する（明細モード2用）。
	 * コード定義情報に最大取得件数が設定されている場合、その件数までの結果を返します。
	 * このメソッドは、ListModeプロパティが　Mode2 の場合のみ使用されます。
	 * @param context CodeReferenceContext
	 * @return 検索結果
	 * @throws DatabaseException
	 */
	protected List<DbRecord> mode2Find(CodeReferenceContext context) throws DatabaseException {
		CodeSearchContext searchContext = this.createCodeReferenceSearchContext(context, context.getCodeFormBean());
		int maxCount = this.getCodeInfo().getMaxDisplayRow();
		return this.getFinder().find(searchContext, 0, maxCount);
	}

	/**
	 * キャッシュされた検索結果に対してページング／ソーティングを実行し、対象ページのデータを取得する（明細モード２用）
	 * @param context CodeReferenceContext
	 * @return 検索結果の明細ページデータ
	 */
	private CodeSearchResultPage mode2Paging(CodeReferenceContext context) {
		Iterable<DbRecord> sortedRows = this.sortDbRecords(context, this.lastSearchResult);
		CodeSearchResultPage result = new CodeSearchResultPage();
		result.setTotalCount(lastSearchResult.size());
		ArrayList<DbRecord> pageData = new ArrayList<DbRecord>();
		int index = 0;
		int count = 1;
		for (DbRecord current : sortedRows) {
			if (index < context.getStartIndex()) {
				index++;
				continue;
			}
			if (count > context.getPageSize()) {
				break;
			}
			pageData.add(current);
			count++;
		}
		result.setPageData(pageData);
		return result;
	}

	/**
	 * DbRecordのリストを、ソートキーの指定に従ってソートする。
	 * @param context ソートキーの指定が無い場合、コード定義情報のソート項目を対象に昇順ソートを行います。
	 * @param cachedRows ソートされたリスト
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	private Iterable<DbRecord> sortDbRecords(CodeReferenceContext context, List<DbRecord> cachedRows) {
		ArgumentValidator.checkNull(cachedRows, "cachedRows");

		Comparator defaultComparator = context.getCodeFormBean().INFO.getLanguage().getSortComparator();

		// ソートキーを設定する
		List<IfmSortKey> sortKeys = SortingHelper.getIfmSortKeys(context.getCodeFormBean().M1().getInfo());

		if (sortKeys.size() == 0) {
			// ソートキーの指定がない場合、コード定義のソートキーを使用する
			for (CodeItemInfo sortItem : this.getCodeInfo().iteratorSortItem()) {
				Comparator comparator = defaultComparator;
				FormItemInfo m1Item = context.getCodeFormBean().M1().getInfo().getItem(sortItem.getId());
				if (m1Item != null) {
					comparator = m1Item.getDataInfo().getSortInfo().getComparator();
				}
				sortKeys.add(new IfmSortKey(sortItem.getColumn().getSqlText(), false, comparator));
			}
		}

		return SortingHelper.sortMapList(cachedRows, sortKeys);
	}


	/**
	 * 最終ページの開始行インデックスを計算する
	 * @param totalCount 総件数
	 * @param pageSize １ページあたりの表示件数
	 * @return 最終ページの開始行インデックス
	 */
	private int getLastPageStartRowIndex(int totalCount, int pageSize) {
		int pageIndex = totalCount / pageSize;
		if (totalCount % pageSize == 0) {
			pageIndex--;
		}
		if (pageIndex <= 0) {
			return 0;
		}
		return pageIndex * pageSize;
	}

	/**
	 * コード参照の検索条件を作成する（コード参照用）
	 * このメソッドは、コード参照フォームデータから検索条件値を取得して検索条件を作成します。
	 * コード参照の検索条件の拡張を行う場合は、このメソッドをオーバーライドして、作成されたコンテキストに対して検索条件を追加してください。
	 * @param context CodeReferenceContext
	 * @param codeForm コード参照フォームデータ
	 * @return コード検索のコンテキスト
	 */
	protected CodeSearchContext createCodeReferenceSearchContext(CodeReferenceContext context, CodeFormDataSet codeForm) {
		CodeSearchContext searchContext = new CodeSearchContext();
		searchContext.setLanguage(context.getFormActionContext().getCurrentLanguage());

		for (CodeItemInfo codeItem : codeForm.getCodeInfo().iteratorSearchItem()) {
			CodeSearchCondition condition;
			CodeSearchType searchType = codeItem.getSearchItem().getSearchType();
			if (CodeSearchType.requireValues(searchType) == 2) {
				// 最小値 最大値
				Object min = codeForm.CARD.get(codeItem.getFormBeanId(CodeSearchBoundType.LOWER));
				Object max = codeForm.CARD.get(codeItem.getFormBeanId(CodeSearchBoundType.UPPER));

				condition = new CodeSearchCondition(codeItem, searchType, new ArrayList<Object>(Arrays.asList(min, max)));
			} else {
				Object value = codeForm.CARD.get(codeItem.getFormBeanId());
				ArrayList<Object> values = new ArrayList<Object>();
				if (codeItem.getSearchItem().getControlType() == ItemControl.LST || codeItem.getSearchItem().getControlType() == ItemControl.CHL) {
					// 複数選択可能な値
					if (value != null) {
						if (value instanceof String) {
							values.add(value);
						} else if (value instanceof ArrayList<?>) {
							for (Object currentValue : (ArrayList<?>)value) {
								values.add(currentValue);
							}
						} else {
							throw new InvalidOperationException();
						}
					}
				} else {
					// 単体の値
					values.add(value);
				}
				condition = new CodeSearchCondition(codeItem, searchType, values);
			}
			// 条件値が空でない場合のみ条件を追加する
			if (!condition.isEmpty()) {
				searchContext.getSearchConditions().add(condition);
			}
		}
		//ソートキーの決定
		List<CodeSortKey> sortKeys = new ArrayList<CodeSortKey>();
		for (IfmSortKey key : SortingHelper.getIfmSortKeys(codeForm.M1().getInfo())) {
			CodeSortKey newKey = new CodeSortKey();
			newKey.setColumnName(codeForm.getCodeInfo().get(key.getKey()).getColumn().getSqlText());
			newKey.setDesc(key.getDesc());
			sortKeys.add(newKey);
		}
		searchContext.setSortKeys(sortKeys);
		return searchContext;
	}

	/**
	 * SELECTした結果のレコードリストから、明細の行データに値を設定します。
	 * @param record ResultSet
	 * @param row 明細行
	 */
	protected void rowMapping(DbRecord record, ListRowData row) {

		// 結果セットから値を取得し、行データに値を設定する
		for (CodeItemInfo item : this.getCodeInfo().iteratorItem()) {
			row.put(item.getId(), record.get(item.getColumn().getSqlText()));
		}
	}

	/**
	 * コードのフォームデータを生成します。
	 * 親画面から画面項目値を転送した場合、ここでリクエストから取得することができます。
	 * @param context コンテキスト
	 * @return コードデータ
	 */
	protected abstract CodeFormDataSet createFormBean(CodeReferenceContext context);

	/**
	 * コード参照が初回起動する際に実行されます。
	 * @param context コンテキスト
	 * @param form コードのFormBean
	 */
	protected void codeInvoking(CodeReferenceContext context, CodeFormDataSet form) {
		// 何もしない
	}

	/**
	 * リクエストから値を取得し、共通チェックを実行する。
	 * @param context コンテキスト
	 * @param form フォームデータ
	 * @return 共通チェックでエラーがなければtrue、エラーが有る場合はfalse
	 */
	protected boolean getCodRequestValue(CodeReferenceContext context, CodeFormDataSet form) {
		// リクエスト値の取得する
		RequestParameterDataParser.parseForm(form, context.getFormActionContext().getRequest());
		// 共通チェックの実行
		return !InputValidationManager.getInstance().validateForm(form).hasError();
	}
}
