package com.fujitsu.intarfrm.skeletons.projectCommons.facades;

import java.sql.ResultSet;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.FormSortKey;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;
import com.fujitsu.intarfrm.helpers.commons.items.ControlDisplayMode;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.logging.FrameworkLog;
import com.fujitsu.intarfrm.helpers.commons.logging.PerformanceLogData;
import com.fujitsu.intarfrm.helpers.commons.utils.SimpleStopwatch;
import com.fujitsu.intarfrm.helpers.models.entity.StatementHolder;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.commons.exceptions.SystemErrorException;
import com.fujitsu.intarfrm.skeletons.commons.framework.IfmFacadeBase;

/**
 * <p>業務処理を制御するFacade基底クラス。</p>
 *
 * このクラスは全てのFacadeクラスの最上位のスーパークラスです。<br>
 * 業務処理の実処理は実際のFacadeクラス（フォーム項目毎）に委ねられます。<br>
 * <br>
 * このクラスはシステムレベルでの業務処理実行時の共通処理を行うことができます。<br>
 * このクラスで処理することで、業務処理から共通処理を隠蔽化させることが可能です。<br>
 *
 * @author INTARFRM
 */
public abstract class ProjectBaseFacade extends IfmFacadeBase {

	/**
	 * コンストラクタ
	 */
	protected ProjectBaseFacade() {
	}

	/**
	 * 検索結果（ResultSet）を開放する。
	 *
	 * @param resultSet 開放する検索結果（ResultSet）
	 * @throws Exception
	 */
	protected void closeResultSet(ResultSet resultSet) throws Exception {
		if (resultSet != null) {
			resultSet.close();
		}
	}

	/**
	 * ステートメントを開放する。
	 *
	 * @param statement 開放するステートメント
	 * @throws Exception
	 */
	protected void closeStatement(StatementHolder... statement) throws Exception {
		if (statement != null && statement.length > 0) {
			for (StatementHolder stmt: statement) {
				if (stmt != null) {
					stmt.close();
				}
			}
		}
	}

	/**
	 * パフォーマンス計測用ストップウォッチ
	 */
	private SimpleStopwatch watch;

	/**
	 * Facadeクラスの各アクションメソッド実行前に実行されるメソッドです。
	 *
	 * @param context ModelContext
	 */
	void beforeBody(ModelContext<?> context) {
		this.watch = new SimpleStopwatch(true);
	}

	/**
	 * Facadeクラスの各アクションメソッドが処理された後に実行されるメソッドです。
	 *
	 * @param context ModelContext
	 */
	void afterBody(ModelContext<?> context) {

		//トランザクションが正常に終了しているか判別する。
		if (context.getTransaction().hasConnection()) {
			//コネクションが存在する場合は正常に終了していないと判断し、
			//強制的にコネクションをロールバック、開放して例外をスローする。
			String msg = String.format("Transaction is not closed properly. [%1$s#%2$s]", this.getClass().getSimpleName(), context.getMethodName());
			DatabaseException resEx = null;
			try {
				context.getTransaction().rollback();
			} catch (DatabaseException ex) {
				resEx = ex;
			} finally {
				try {
					context.getTransaction().end();
				} catch (DatabaseException e) {
					resEx = e;
				}
			}

			if(resEx != null) {
				throw new SystemErrorException(msg, resEx);
			} else {
				throw new SystemErrorException(msg);
			}
		}
		
		if (this.watch != null) {
			this.watch.stop();
			PerformanceLogData logData = new PerformanceLogData(PerformanceLogData.PerformanceLogType.BUSINESS);
			logData.setStopwatch(watch, String.format("%1$s#%2$s", this.getClass().getSimpleName(), context.getMethodName()));
			FrameworkLog.Instance.debug(logData.getMessage());
		}
	}

	/**
	 * 明細にソート状態を設定します。
	 * 明細モードが２の場合は、自動的にソート処理を実行します。
	 * @param listData
	 * @param context
	 */
	protected void setSortState(AbstractListData<?, ?> listData, ModelContext<?> context) {

		// ソートキーを設定する
    	List<FormSortKey> sortKeys = FormSortKey.parse(context.getClicked().getSortKeys());
    	listData.setSortState(sortKeys);
    	listData.getPage().pageTop();

    	if (listData instanceof ManagedListData) {
    		// ソート処理を実行する
    		((ManagedListData<?, ?>) listData).executeSort();
    	}
	}

	/**
	 * 「MADD」アクションの共通処理
	 * @param context modelContext
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected ListRowData executeMADD(ModelContext<?> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		AbstractListData listData = context.getFormBean().getListData(listType);
		ListRowData rowData = listData.newRow(false);
		listData.addRow(rowData);

		// 最終ページへ移動する
		listData.getPage().pageLast();
		// フォーカスを設定する
		if (listData.getInfo().hasInputItems()){
			this.setFocusListBottom(context, listData);
		}
		return rowData;
	}

	/**
	 * 「MINS」アクションの共通処理
	 * @param context modelContext
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected ListRowData executeMINS(ModelContext<?> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		AbstractListData listData = context.getFormBean().getListData(listType);

		ListRowData rowData = listData.newRow(false);
		int insertIdx = listData.getPage().indexOfPageStartRow() + context.getClicked().getRowNo();
		listData.addRow(insertIdx, rowData);

		// フォーカスを設定する
		if (listData.getInfo().hasInputItems()){
			this.setFocusCurrentRow(context, listData);
		}
		return rowData;
	}

	/**
	 * 「MDEL」アクションの共通処理
	 * @param context modelContext
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected ListRowData executeMDEL(ModelContext<?> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		ManagedListData listData = (ManagedListData)context.getFormBean().getListData(listType);

		int currentPage = listData.getPage().indexOfCurrentPage();
		ListRowData rowData = listData.displayRowAt(context.getClicked().getRowNo());
		listData.deleteRow(rowData);

		if (currentPage > listData.getPage().getPageCount()) {
			//行削除を実行した結果ページ数が減少したため、最終ページへ移動
			listData.getPage().pageLast();
			if (listData.getInfo().hasInputItems()) {
				//フォーカス位置を最下行に設定
				this.setFocusListBottom(context, listData);
			}
		} else {
			if (listData.getInfo().hasInputItems()) {
				//フォーカス位置をアクション実行行に設定
				this.setFocusCurrentRow(context, listData);
			}
		}
		return rowData;
	}

	/**
	 * 「GBFR」アクションの共通処理
	 * @param context modelContext
	 */
	protected Boolean executeGBFR(ModelContext<?> context) {
		FormDataSet formBean = context.getFormBean();
		if (formBean.INFO.canMoveGroupToPrev()) {
			// 現在のグループのデータを初期化する。
			formBean.clearGroupData(formBean.INFO.getCurrentGroup());
			// 前のグループに遷移します。
			formBean.INFO.moveGroupToPrev();
			// 遷移先グループの先頭項目にフォーカスを設定する場合、コメントを外してください。
			//this.setFocusCurrentGroupTop(context);
			return true;
		}
       return false;
	}

	/**
	 * 「GNXT」アクションの共通処理
	 * @param context
	 */
	protected Boolean executeGNXT(ModelContext<?> context) {
		FormDataSet formBean = context.getFormBean();
		if (formBean.INFO.moveGroupToNext()) {
			// 遷移先グループの先頭項目にフォーカスを設定する場合、コメントを外してください。
			// UNCOMMENT START ---------------------------------------------------
			this.setFocusCurrentGroupTop(context);
			// UNCOMMENT END ---------------------------------------------------
			return true;
		}
		return false;
	}

	/**
	 * 「GABS」アクションの共通処理
	 * @param context
	 */
	protected void executeGABS(ModelContext<?> context) {
       FormDataSet formBean = context.getFormBean();
       //グループ遷移の実行
       formBean.INFO.setCurrentGroup(formBean.INFO.getGroup(context.getClicked().getButtonInfo().getActionInfo().getTargetGroup()));
       // 遷移先グループの先頭項目にフォーカスを設定する場合、コメントを外してください。
       //this.setFocusCurrentGroupTop(context);
   }

	/**
	 * 明細の先頭行にフォーカスを設定します。
	 * 対象明細に表示する行が存在しない場合はフォーカスは設定されません。現在のグループの先頭項目にフォーカスが
	 * 移動します。
	 * @param context コンテキスト
	 * @param targetList 対象となる明細オブジェクト
	 */
	protected void setFocusListTop(ModelContext<?> context, AbstractListData<?, ?> targetList) {
		if (targetList.displayRowCount() > 0 && targetList.getInfo().hasInputItems()) {
			FormItemInfo focusItem = null;
			for (int i = 0; i < targetList.getInfo().getItems().size(); i++) {
				FormItemInfo item = targetList.getInfo().getItems().get(i);
				if (item.getCurrentDisplayMode() == ControlDisplayMode.ENABLE && item.getControlType().canFocus()) {
					focusItem = item;
					break;
				}

			}
			if (focusItem != null) {
				context.getFormBean().setFocusItem(focusItem, 0);
			}
		}
	}

	/**
	 * アクションを実行した行にフォーカスを設定します。この処理は明細行アクションが実行された際に使用できます。
	 * アクションを実行した行がすでに存在しない場合はフォーカス可能な最下行にフォーカスが設定されます。
	 * 対象明細に表示する行が存在しない場合はフォーカスは設定されません。現在のグループの先頭項目にフォーカスが
	 * 移動します。
	 * @param context コンテキスト
	 * @param targetList 対象となる明細オブジェクト
	 */
	protected void setFocusCurrentRow(ModelContext<?> context, AbstractListData<?, ?> targetList) {
    	if ((targetList.displayRowCount() > 0) && (context.getClicked().getRowNo() >= 0)) {
        	if (targetList.displayRowCount() > context.getClicked().getRowNo()) {
        		//アクションを実行した位置の行が存在する場合、
                //フォーカス位置を削除した行の位置と同じ行に設定
        		FormItemInfo focusItem = null;
    			for (int i = 0; i < targetList.getInfo().getItems().size(); i++) {
    				FormItemInfo item = targetList.getInfo().getItems().get(i);
    				if (item.getCurrentDisplayMode() == ControlDisplayMode.ENABLE && item.getControlType().canFocus()) {
    					focusItem = item;
    					break;
    				}

    			}
    			if (focusItem != null) {
    				context.getFormBean().setFocusItem(focusItem, context.getClicked().getRowNo());
    			}
        	} else {
        		//アクションを実行した行が存在しない場合（MDELを実行した場合）、
                //フォーカス位置を最下行に設定
        		FormItemInfo focusItem = null;
    			for (int i = 0; i < targetList.getInfo().getItems().size(); i++) {
    				FormItemInfo item = targetList.getInfo().getItems().get(i);
    				if (item.getCurrentDisplayMode() == ControlDisplayMode.ENABLE && item.getControlType().canFocus()) {
    					focusItem = item;
    					break;
    				}
    			}
    			if (focusItem != null) {
    				context.getFormBean().setFocusItem(focusItem, targetList.displayRowCount() - 1);
    			}
        	}
    	}
	}

	/**
	 * 明細の最下行にフォーカスを設定します。
	 * 対象明細に表示する行が存在しない場合はフォーカスは設定されません。現在のグループの先頭項目にフォーカスが
	 * 移動します。
	 * @param context コンテキスト
	 * @param targetList 対象となる明細オブジェクト
	 */
	protected void setFocusListBottom(ModelContext<?> context, AbstractListData<?, ?> targetList) {
		if (targetList.displayRowCount() > 0) {
			FormItemInfo focusItem = null;
			for (int i = 0; i < targetList.getInfo().getItems().size(); i++) {
				FormItemInfo item = targetList.getInfo().getItems().get(i);
				if (item.getCurrentDisplayMode() == ControlDisplayMode.ENABLE && item.getControlType().canFocus()) {
					focusItem = item;
					break;
				}

			}
			if (focusItem != null) {
				context.getFormBean().setFocusItem(focusItem, targetList.displayRowCount() - 1);
			}
		}
	}

	/**
	 * 有効グループの先頭項目にフォーカスを設定します。
	 * 先頭フォーカス項目が明細部項目の場合、明細部データをロードした後にこのメソッドを呼ぶ必要があります。
	 * @param context コンテキスト
	 */
	@SuppressWarnings("rawtypes")
	protected void setFocusCurrentGroupTop(ModelContext<?> context) {
		FormDataSet formBean = context.getFormBean();
		
		// フォーカス位置を遷移先グループの先頭入力項目に設定
		for (FormItemInfo item : formBean.INFO.getCurrentGroup().getItems()) {
			if (item.isCardItem()) {
				// カード項目の場合
				if (item.getCurrentDisplayMode() == ControlDisplayMode.ENABLE && item.getControlType().canFocus()) {
					formBean.setFocusItem(item);
					return;
				}
			} else {
				// 明細項目の場合
				FormBorderType listType = item.getOwnerBorder().getBorderType();
				AbstractListData listData = formBean.getListData(listType);
				if (listData.getInfo().hasInputItems() && listData.displayRowCount() > 0) {
					this.setFocusListTop(context, listData);
					return;
				}
			}
		}
	}
}
