package com.fujitsu.intarfrm.skeletons.projectCommons.facades;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.attributes.AttributeDataType;
import com.fujitsu.intarfrm.helpers.commons.beans.AbstractListData;
import com.fujitsu.intarfrm.helpers.commons.beans.CardData;
import com.fujitsu.intarfrm.helpers.commons.beans.DisplayListData;
import com.fujitsu.intarfrm.helpers.commons.beans.FormDataSet;
import com.fujitsu.intarfrm.helpers.commons.beans.FormSortKey;
import com.fujitsu.intarfrm.helpers.commons.beans.FormValueObject;
import com.fujitsu.intarfrm.helpers.commons.beans.ListRowData;
import com.fujitsu.intarfrm.helpers.commons.beans.ManagedListData;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormBorderType;
import com.fujitsu.intarfrm.helpers.commons.items.FormItemInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListInfo;
import com.fujitsu.intarfrm.helpers.commons.items.FormListMode;
import com.fujitsu.intarfrm.helpers.commons.items.ItemControl;
import com.fujitsu.intarfrm.helpers.commons.items.ItemDataInfo;
import com.fujitsu.intarfrm.helpers.commons.items.ItemSortDirection;
import com.fujitsu.intarfrm.helpers.models.entity.RawSqlSelectBuilder;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.helpers.models.transactions.DbTransaction;
import com.fujitsu.intarfrm.helpers.models.transactions.IfmConnection;
import com.fujitsu.intarfrm.skeletons.commons.framework.IfmFacadeBase;

/**
 * モックアップ用共通Facadeクラス
 *
 * @author INTARFRM
 */
public class MockupFacade extends IfmFacadeBase {

	/**
	 * 複数値を文字列に詰める場合の区切り文字
	 */
    private static final char delimiter = '\n';

	/**
     * ロード処理を実行する
     */
	public void execute_LOAD(ModelContext<FormDataSet> context) throws DatabaseException {

    	FormDataSet formBean = context.getFormBean();
    	DbTransaction transaction = null;
    	try {
    		transaction = context.getTransaction();
    		IfmConnection conn = transaction.getConnection();
    		if (existsTable(conn, formBean.INFO.getCardInfo())) {
    			loadCard(conn, formBean);
    		}
    		for (FormListInfo listInfo : formBean.INFO.getCurrentGroup().getListBorders()) {
    			loadList(conn, formBean.getListData(listInfo));
    		}
    		transaction.commit();
    	} catch (DatabaseException e) {
    		throw e;
    	} finally {
    		transaction.end();
    	}
    }

    /**
     * BFRアクションを実行する
     */
	public void executeBFR(ModelContext<FormDataSet> context) throws Exception {
    	// アクションの対象明細を取得する
    	FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);
    	if (list.getPage().canPageBackwarding()) {
    		list.getPage().pageBackward();

    		if (list.getInfo().getListMode() == FormListMode.MODE_1) {
            	DbTransaction transaction = context.getTransaction();
            	IfmConnection conn = transaction.getConnection();
            	loadList(conn, list);
            }
            if (list.getInfo().hasInputItems()) {
                //フォーカス位置を設定
                setFocusListTop(context, list);
            }
    	}
    }

    /**
     * NXTアクションを実行する
     */
	public void executeNXT(ModelContext<FormDataSet> context) throws Exception {
    	// アクションの対象明細を取得する
    	FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);
    	if (list.getPage().canPageForwarding()) {
    		list.getPage().pageForward();

    		if (list.getInfo().getListMode() == FormListMode.MODE_1) {
            	DbTransaction transaction = context.getTransaction();
            	IfmConnection conn = transaction.getConnection();
            	loadList(conn, list);
            }
            if (list.getInfo().hasInputItems()) {
                //フォーカス位置を設定
                setFocusListTop(context, list);
            }
    	}
    }

    /**
     * MTOPアクションを実行する
     */
    public void executeMTOP(ModelContext<FormDataSet> context) throws Exception {
    	// アクションの対象明細を取得する
    	FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);
    	list.getPage().pageTop();

    	if (list.getInfo().getListMode() == FormListMode.MODE_1) {
        	DbTransaction transaction = context.getTransaction();
        	IfmConnection conn = transaction.getConnection();
        	loadList(conn, list);
        }
        if (list.getInfo().hasInputItems()) {
            //フォーカス位置を設定
            setFocusListTop(context, list);
        }
    }

    /**
     * MTOPアクションを実行する
     */
    @SuppressWarnings("unused")
	private void executeMBTM(ModelContext<FormDataSet> context) throws Exception {
    	// アクションの対象明細を取得する
    	FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);
    	list.getPage().pageLast();

    	if (list.getInfo().getListMode() == FormListMode.MODE_1) {
        	DbTransaction transaction = context.getTransaction();
        	IfmConnection conn = transaction.getConnection();
        	loadList(conn, list);
        }
        if (list.getInfo().hasInputItems()) {
            //フォーカス位置を設定
            setFocusListTop(context, list);
        }
    }

    /**
     * MINSアクションを実行する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	public void executeMINS(ModelContext<FormDataSet> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		AbstractListData listData = context.getFormBean().getListData(listType);

		ListRowData rowData = listData.newRow(false);
		int insertIdx = listData.getPage().indexOfPageStartRow() + context.getClicked().getRowNo();
		listData.addRow(insertIdx, rowData);

		// フォーカスを設定する
		if (listData.getInfo().hasInputItems()){
			setFocusCurrentRow(context, listData);
		}
    }

	/**
     * MDELアクションを実行する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	public void executeMDEL(ModelContext<FormDataSet> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		AbstractListData listData = context.getFormBean().getListData(listType);

		int currentPage = listData.getPage().indexOfCurrentPage();
		ListRowData rowData = listData.displayRowAt(context.getClicked().getRowNo());
		listData.removeRow(rowData);

		if (currentPage > listData.getPage().getPageCount()) {
			//行削除を実行した結果ページ数が減少したため、最終ページへ移動
			listData.getPage().pageLast();
			if (listData.getInfo().hasInputItems()) {
				//フォーカス位置を最下行に設定
				setFocusListBottom(context, listData);
			}
		} else {
			if (listData.getInfo().hasInputItems()) {
				//フォーカス位置をアクション実行行に設定
				setFocusCurrentRow(context, listData);
			}
		}
	}

	/**
     * MADDアクションを実行する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	public void executeMADD(ModelContext<FormDataSet> context) {
		// アクションの対象明細を取得する
		FormBorderType listType = context.getClicked().getButtonInfo().getActionInfo().getTargetBorder();
		AbstractListData listData = context.getFormBean().getListData(listType);
		ListRowData rowData = listData.newRow(false);
		listData.addRow(rowData);

		// 最終ページへ移動する
		listData.getPage().pageLast();
		// フォーカスを設定する
		if (listData.getInfo().hasInputItems()){
			setFocusListBottom(context, listData);
		}
	}

	/**
     * GBFRアクションを実行する
     */
    public void executeGBFR(ModelContext<FormDataSet> context) {
		FormDataSet formBean = context.getFormBean();
		if (formBean.INFO.canMoveGroupToPrev()) {
			// 現在のグループのデータを初期化する。
			formBean.clearGroupData(formBean.INFO.getCurrentGroup());
			// 前のグループに遷移します。
			formBean.INFO.moveGroupToPrev();
		}
   }

	/**
     * GNXTアクションを実行する
     */
    public void executeGNXT(ModelContext<FormDataSet> context) throws DatabaseException {
		FormDataSet formBean = context.getFormBean();
		if (formBean.INFO.canMoveGroupToNext()) {
			// 次のグループに遷移します。
			formBean.INFO.moveGroupToNext();
		}
		try {
			// 有効なグループのデータを取得します。
			this.execute_LOAD(context);
		} catch (DatabaseException e) {
			throw e;
		}
   }

	/**
	 * GABSアクションを実行する
	 */
    public void executeGABS(ModelContext<FormDataSet> context) {
        FormDataSet formBean = context.getFormBean();
        //グループ遷移の実行
        formBean.INFO.setCurrentGroup(formBean.INFO.getGroup(context.getClicked().getButtonInfo().getActionInfo().getTargetGroup()));
    }

	/**
	 * DBUアクションを実行する
	 */
	public void executeDBU(ModelContext<?> context) throws Exception {
		FormDataSet formBean = context.getFormBean();
		DbTransaction transaction = null;
		try {
			transaction = context.getTransaction();
    		IfmConnection conn = transaction.getConnection();
	        deleteAndInsertCard(conn, formBean.CARD);
	        for (FormListInfo listInfo : formBean.INFO.getListBorders()) {
	            deleteAndInsertList(conn, formBean.getListData(listInfo));
	        }
	        transaction.commit();
    	} catch (SQLException e) {
    		transaction.rollback();
    		throw new DatabaseException(e);
    	} finally {
    		transaction.end();
    	}
	}

	/**
	 * FDWアクションを実行する
	 */
	public void executeFDW(ModelContext<?> context) {
	}

	/**
	 * FRMアクションを実行する
	 */
	public void executeFRM(ModelContext<?> context) {
	}

	/**
	 * PG1アクションを実行する
	 */
	public void executePG1(ModelContext<?> context) {
	}

	/**
	 * ETCアクションを実行する
	 */
	public void executeETC(ModelContext<?> context) {
	}

	/**
	 * ページングアクションを実行する
	 */
	public void execute_PAGING_(ModelContext<FormDataSet> context) throws Exception {
		// アクションの対象明細を取得する
    	FormBorderType listType = context.getFormActInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);

    	// 遷移先ページ番号を取得する
        Integer tempPageNo = context.getClicked().getPageNo();
        int pageNo = tempPageNo == null ? 0 : tempPageNo;

        // ページ遷移を実行する
        list.getPage().pageAbsolute(pageNo);

        if (list.getInfo().getListMode() == FormListMode.MODE_1) {
        	DbTransaction transaction = context.getTransaction();
        	IfmConnection conn = transaction.getConnection();
        	loadList(conn, list);
        }
        if (list.getInfo().hasInputItems()) {
            //フォーカス位置を設定
            setFocusListTop(context, list);
        }
	}

	/**
	 * ソーティングアクションを実行する
	 */
	public void execute_SORTING_(ModelContext<FormDataSet> context) throws Exception {
		// アクションの対象明細を取得する
    	FormBorderType listType = context.getFormActInfo().getTargetBorder();
    	AbstractListData<?, ?> list = context.getFormBean().getListData(listType);

    	setSortState(list, context);

        if (list.getInfo().getListMode() == FormListMode.MODE_1) {
        	DbTransaction transaction = context.getTransaction();
        	IfmConnection conn = transaction.getConnection();
        	RawSqlSelectBuilder builder = createRowSqlBuilder(list.getInfo());
            setSortOrderBy(builder, list);
            loadCurrentPage(builder, conn, (DisplayListData<?, ?>)list);
        } else {
            ((ManagedListData<?, ?>)list).executeSort();
        }
        if (list.getInfo().hasInputItems()) {
            //フォーカス位置を設定
        	setFocusListTop(context, list);
        }
	}

	/**
	 * モックアップテーブルの存在チェック
	 */
	private boolean existsTable(IfmConnection conn, FormBorderInfo borderInfo) throws DatabaseException {
		boolean exists = false;
		String tableName = getTableName(borderInfo);
		try (PreparedStatement stmt = conn.prepareStatement("SELECT * FROM " + tableName)) {
			stmt.executeQuery();
			exists = true;
		} catch (SQLException e) {
			exists = false;
		}
		return exists;
	}

    /**
     * テーブル名を取得する
     */
    private String getTableName(FormBorderInfo info) {
        if (info.isCard()) {
            return "T_" + info.getOwnerForm().getFormId().toLowerCase();
        } else {
            return info.getBorderType().toString().toUpperCase() + "_" + info.getOwnerForm().getFormId().toUpperCase();
        }
    }

    /**
     * カード部データを取得する
     */
    private void loadCard(IfmConnection conn, FormDataSet formBean) throws DatabaseException {
    	try (PreparedStatement stmt = conn.prepareStatement("SELECT * FROM " + getTableName(formBean.INFO.getCardInfo()))) {
	    	ResultSet rs = stmt.executeQuery();
	        if (rs.next()) {
	            for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
	                FormItemInfo itemInfo = formBean.INFO.getCurrentGroup().getCardItems().get(rs.getMetaData().getColumnName(i));
	                if (itemInfo != null) {
	                	loadValue(formBean.CARD, rs.getObject(itemInfo.getId()), itemInfo);
	                }
	            }
	        }
    	} catch (SQLException e) {
    		throw new DatabaseException(e);
    	}
    }

    /**
     * 明細部データを取得する
     */
    private void loadList(IfmConnection conn, AbstractListData<?, ?> listData) throws DatabaseException {
        String tableName = getTableName(listData.getInfo());
        if (listData instanceof ManagedListData) {
            loadM2Rows(conn, (ManagedListData<?, ?>)listData, tableName);
        } else {
            loadCurrentPage(createRowSqlBuilder(listData.getInfo()), conn, (DisplayListData<?, ?>)listData);
        }
    }

    /**
     * 明細モード２のデータを取得する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
	private void loadM2Rows(IfmConnection conn, ManagedListData listData, String tableName) throws DatabaseException {
        listData.clear();
        listData.getPage().pageAbsolute(1);
        try (PreparedStatement stmt = conn.prepareStatement("SELECT * FROM " + getTableName(listData.getInfo()))) {
	        ResultSet rs = stmt.executeQuery();
	        while (rs.next()) {
	            ListRowData row = listData.newRow(false);
	            for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
	                FormItemInfo itemInfo = listData.getInfo().getItem(rs.getMetaData().getColumnName(i));
	                if (itemInfo != null) {
	                    loadValue(row, rs.getObject(itemInfo.getId()), itemInfo);
	                }
	            }
	            listData.addRow(row);
	        }
	        listData.commit();
        } catch (SQLException e) {
        	throw new DatabaseException(e);
        }
    }

    /**
     * 明細モード１のデータを取得する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
    public void loadCurrentPage(RawSqlSelectBuilder selectSql, IfmConnection conn, DisplayListData listData) throws DatabaseException {
    	try {
	        // 現在のページの開始行インデックス
	        int startRowIndex = listData.getPage().indexOfPageStartRow();

	        // Count文実行
	        int totalCount = getCount(conn, listData.getInfo());
	        listData.clearAllRows();
	        listData.setTotalRowCount(totalCount);

	        if (totalCount <= startRowIndex) {
	            // 総件数が想定の開始行に満たない場合は最終ページに移動する
	            listData.getPage().pageLast();
	        }

	        if (totalCount > 0) {
	            try (PreparedStatement stmt = selectSql.createSelectCommand((IfmConnection) conn)) {
		            ResultSet rs = stmt.executeQuery();
	                // データベースのレコードを明細行にコピーする
	                int startIndex = listData.getPage().indexOfPageStartRow();
	                int count = listData.getInfo().getDisplayRowCount();
	                int rowIndex = 0;
	                while (rs.next()) {
	                    if (rowIndex >= startIndex && (rowIndex - startIndex) < count) {
	                        ListRowData row = listData.newRow(false);
	                        for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
	                            loadValue(row, rs.getObject(i), listData.getInfo().getItem(rs.getMetaData().getColumnName(i)));
	                        }
	                        listData.addRow(row);
	                    }
	                    rowIndex++;
	                }
	            }
	        }
	        listData.commit();
    	} catch (SQLException e) {
    		throw new DatabaseException(e);
    	}
    }

    /**
     * 件数を取得する
     */
    private int getCount(IfmConnection conn, FormBorderInfo borderInfo) throws SQLException {
		String sql = "SELECT COUNT(*) FROM " + getTableName(borderInfo);
		int count = -1;
		try (PreparedStatement stmt = conn.prepareStatement(sql)) {
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				count = rs.getInt(1);
			}
		}
		return count;
	}

    /**
     * RawSqlSelectBuilderを作成する
     */
    private RawSqlSelectBuilder createRowSqlBuilder(FormBorderInfo borderInfo) {
        RawSqlSelectBuilder builder = new RawSqlSelectBuilder();
        for (FormItemInfo item : borderInfo.getItems()) {
            if (item.getAttribute().getDataType() != AttributeDataType.BUTTON) {
                builder.appendColumn(item.getId().toUpperCase());
            }
        }
        builder.setFromClause(getTableName(borderInfo));
        return builder;
    }

    /**
     * 検索結果をFormBeanにコピーする
     */
    private void loadValue(FormValueObject vo, Object value, FormItemInfo item) {

    	if (item.getControlType() == ItemControl.CHL || item.getControlType() == ItemControl.LST) {
    		if (item.getAttribute().getDataType() == AttributeDataType.NUMBER) {
    			vo.put(item, deserializeMultipleValue(BigDecimal.class, (String)value));
    		} else {
    			vo.put(item, deserializeMultipleValue(String.class, (String)value));
    		}
    	} else {
    		vo.put(item, value);
    	}
    }

    /**
     * 複数選択項目の場合のデータを作成する
     */
    private Iterable<?> deserializeMultipleValue(Class<?> T, String serializedValues) {
        if (serializedValues == null || serializedValues.isEmpty()) {
            return null;
        }

        // null/空文字列と空のリストを区別するために追加した先頭1文字を削除する
        String newValues = serializedValues.substring(1);
        String[] strValues;
        if (newValues.isEmpty()) {
        	strValues = new String[] {};
        } else {
        	strValues = newValues.split(Character.toString(delimiter));
        }
        if (BigDecimal.class.equals(T)) {
        	List<BigDecimal> decimalValues = new ArrayList<BigDecimal>();
        	for (String val : strValues) {
        		if (val == null || val.isEmpty()) {
        			decimalValues.add(null);
        		} else {
        			decimalValues.add(new BigDecimal(val));
        		}
        	}
        	return decimalValues;
        } else {
        	List<String> stringValues = new ArrayList<String>();
        	for (String val : strValues) {
        		stringValues.add(val);
        	}
            return stringValues;
        }
    }

    /**
     * カード部を更新する
     */
    private void deleteAndInsertCard(IfmConnection conn, CardData card) throws SQLException, DatabaseException {
        FormBorderInfo borderInfo = card.ownerData().INFO.getCardInfo();
        String tableName = getTableName(borderInfo);
        executeDelete(conn, tableName);

        try (PreparedStatement insertCommand = createInsertCommand(conn, card, borderInfo, tableName)) {
	        if (insertCommand != null) {
	            insertCommand.executeUpdate();
	        }
        }
    }

    /**
     * 明細部を更新する
     */
    @SuppressWarnings({ "rawtypes", "unchecked" })
    private void deleteAndInsertList(IfmConnection conn, AbstractListData listData) throws SQLException, DatabaseException {
        if (!(listData instanceof ManagedListData)) {
            FormBorderInfo borderInfo = listData.getInfo();
            String tableName = getTableName(borderInfo);
            List<ListRowData> totalListData = new ArrayList<ListRowData>();

            int count = listData.displayRowCount();
            int startIndex = listData.getPage().indexOfPageStartRow();
            try (PreparedStatement stmt = conn.prepareStatement("SELECT * FROM " + tableName)) {
	            ResultSet rs = stmt.executeQuery();
                int rowIndex = 0;
                while (rs.next()) {
                    if (rowIndex >= startIndex && (rowIndex - startIndex) < count) {
                        totalListData.add(listData.displayRowAt(rowIndex - startIndex));
                    } else {
                        ListRowData row = listData.newRow(false);
                        for (int i = 1; i <= rs.getMetaData().getColumnCount(); i++) {
                            FormItemInfo itemInfo = listData.getInfo().getItem(rs.getMetaData().getColumnName(i));
                            if (itemInfo != null) {
                                loadValue(row, rs.getObject(itemInfo.getId()), itemInfo);
                            }
                        }
                        listData.addRow(row);
                    }
                    rowIndex++;
                }
            }
            executeDelete(conn, tableName);
            for (ListRowData row : totalListData) {
                try (PreparedStatement insertStmt = createInsertCommand(conn, row, listData.getInfo(), tableName)) {
	                if (insertStmt != null) {
	                	insertStmt.executeUpdate();
	                }
                }
            }
        } else {
            FormBorderInfo borderInfo = listData.getInfo();
            String tableName = getTableName(borderInfo);
            executeDelete(conn, tableName);

            for (Object row : ((ManagedListData<?, ?>)listData).rows()) {
            	try (PreparedStatement insertStmt = createInsertCommand(conn, (FormValueObject)row, listData.getInfo(), tableName)) {
	                if (insertStmt != null) {
	                	insertStmt.executeUpdate();
	                }
            	}
            }
        }
    }

    /**
     * データを削除する
     */
    private int executeDelete(IfmConnection conn, String tableName) throws SQLException, DatabaseException {
        int count = -1;
        try (PreparedStatement stmt = conn.prepareStatement("DELETE FROM " + tableName)) {
	        count = stmt.executeUpdate();
        }
        return count;
    }

    /**
     * 追加用PreparedStatementを作成する
     */
    private PreparedStatement createInsertCommand(IfmConnection conn, FormValueObject card, FormBorderInfo borderInfo, String tableName) throws SQLException, DatabaseException {
    	List<String> columns = new ArrayList<String>();
    	List<String> paramNames = new ArrayList<String>();
    	List<DbParameter> paramValues = new ArrayList<DbParameter>();
        int itemCount = 0;
        for (FormItemInfo itemInfo : borderInfo.getItems()) {
            if (itemInfo.getAttribute().getDataType() != AttributeDataType.BUTTON) {
                columns.add(itemInfo.getId().toUpperCase());
                DbParameter param = createParameter(conn, itemCount, getStoreValue(card, itemInfo));
                paramNames.add(param.ParameterName);
                paramValues.add(param);
                itemCount++;
            }
        }
        if (itemCount == 0) {
            return null;
        }
        String sql = String.format("INSERT INTO %1$s (%2$s) VALUES (%3$s)",
            tableName, join(",", columns), join(",", paramNames));
        PreparedStatement stmt = conn.prepareStatement(sql);
        for (int i = 0; i < paramValues.size(); i++) {
        	DbParameter param = paramValues.get(i);
        	setStatementParameter(stmt, i + 1, param);
        }
        return stmt;
    }

    /**
     * DbParameterを作成する
     */
    private DbParameter createParameter(IfmConnection conn, int parameterIndex, Object value) {
        DbParameter param = new DbParameter();
        param.Value = value;
        param.ParameterName = "?";
        return param;
    }

    /**
     * PreparedStatementにDbParameterを追加する
     */
    private void setStatementParameter(PreparedStatement stmt, int index, DbParameter param) throws SQLException {
    	if (param.Value == null) {
    		stmt.setNull(index, Types.VARCHAR);
    	} else if (java.util.Date.class.equals(param.Value.getClass())) {
			Timestamp dbDate = new Timestamp(((java.util.Date) param.Value).getTime());
    		stmt.setObject(index, dbDate);
    	} else {
    		stmt.setObject(index, param.Value);
    	}
    }

    /**
     * 値を設定する
     */
	private Object getStoreValue(FormValueObject vo, FormItemInfo item) {
        Object ret = vo.get(item);
        if (ret != null) {
            if (item.getControlType() == ItemControl.CHL || item.getControlType() == ItemControl.LST) {
                return serializeMultipleValue((Iterable<?>)ret);
            }
        }
        return ret;
    }

	/**
	 * 複数選択項目用値を設定する
	 */
	private String serializeMultipleValue(Iterable<?> values) {
        if (values == null) {
            return null;
        }

        // null/空文字列と空のリストを区別するために、先頭に1文字追加する
        return delimiter + join(Character.toString(delimiter), values);
    }

	/**
	 * JOIN文字列を作成する
	 */
	private String join(String separator, Iterable<?> it) {
    	StringBuilder sb = new StringBuilder();
    	for (Object str : it) {
    		if (sb.length() > 0) {
    			sb.append(separator);
    		}
    		sb.append(str);
    	}
    	return sb.toString();
    }

    /**
	 * 明細にソート状態を設定します。
	 * 明細モードが２の場合は、自動的にソート処理を実行します。
	 * @param listData
	 * @param context
	 */
	private void setSortState(AbstractListData<?, ?> listData, ModelContext<?> context) {
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
	 * 明細の先頭行にフォーカスを設定します。
	 * 対象明細に表示する行が存在しない場合はフォーカスは設定されません。現在のグループの先頭項目にフォーカスが
	 * 移動します。
	 * @param context コンテキスト
	 * @param targetList 対象となる明細オブジェクト
	 */
	private void setFocusListTop(ModelContext<?> context, AbstractListData<?, ?> targetList) {
		if (targetList.displayRowCount() > 0) {
			context.getFormBean().setFocusItem(targetList.getInfo().getItems().get(0), 0);
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
	private void setFocusCurrentRow(ModelContext<?> context, AbstractListData<?, ?> targetList) {
    	if ((targetList.displayRowCount() > 0) && (context.getClicked().getRowNo() >= 0)) {
        	if (targetList.displayRowCount() > context.getClicked().getRowNo()) {
        		//アクションを実行した位置の行が存在する場合、
                //フォーカス位置を削除した行の位置と同じ行に設定
        		context.getFormBean().setFocusItem(targetList.getInfo().getItems().get(0), context.getClicked().getRowNo());
        	} else {
        		//アクションを実行した行が存在しない場合（MDELを実行した場合）、
                //フォーカス位置を最下行に設定
        		context.getFormBean().setFocusItem(targetList.getInfo().getItems().get(0), targetList.displayRowCount() - 1);
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
	private void setFocusListBottom(ModelContext<?> context, AbstractListData<?, ?> targetList) {
		if (targetList.displayRowCount() > 0) {
			context.getFormBean().setFocusItem(targetList.getInfo().getItems().get(0), targetList.displayRowCount() - 1);
		}
	}

	/**
	 * Facadeクラスの各アクションメソッド実行前に実行されるメソッドです。
	 *
	 * @param context ModelContext
	 */
	void beforeBody(ModelContext<?> context) {
	}

	/**
	 * Facadeクラスの各アクションメソッドが処理された後に実行されるメソッドです。
	 *
	 * @param context ModelContext
	 */
	void afterBody(ModelContext<?> context) {
	}

	/**
	 * 明細モード１の場合のソート情報を作成する
	 */
	 public static void setSortOrderBy(RawSqlSelectBuilder sql, AbstractListData<?, ?> listData) {
	        sql.orderBy().setLength(0);
	        sql.getOrderByParameters().clear();


	        List<FormItemInfo> sortItems = new ArrayList<FormItemInfo>();
	        for (FormItemInfo it : listData.getInfo().getItems()) {
	        	if (it.getDataInfo() != null
	        			&& it.getDataInfo().getSortInfo().getSortState() != null
	        			&& it.getDataInfo().getSortInfo().getSortState() != ItemSortDirection.NONE) {
	        		sortItems.add(it);
	        	}
	        }
	        Collections.sort(sortItems, new Comparator<FormItemInfo>() {
	        	@Override
	        	public int compare(FormItemInfo o1, FormItemInfo o2) {
	        		return o1.getDataInfo().getSortInfo().getSortOrder() - o2.getDataInfo().getSortInfo().getSortOrder();
	        	}
			});

	        for (FormItemInfo item : sortItems) {
	            ItemDataInfo dataInfo = item.getDataInfo();
	            sql.appendOrderByString(item.getId().toUpperCase(), dataInfo.getSortInfo().getSortState() == ItemSortDirection.DESCENDING);
	        }
	    }

	/**
	 * DB更新用パラメータ情報を持つサブクラス
	 */
	private class DbParameter {
    	public Object Value;
    	public String ParameterName;
    }
}