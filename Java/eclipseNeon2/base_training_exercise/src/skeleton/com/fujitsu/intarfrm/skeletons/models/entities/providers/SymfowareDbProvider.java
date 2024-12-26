package com.fujitsu.intarfrm.skeletons.models.entities.providers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.models.entity.ISqlSelectParts;
import com.fujitsu.intarfrm.helpers.models.entity.SqlValue;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;

/**
 * Symfowareを使用するためのDBプロバイダ
 * @author INTARFRM
 *
 */
public class SymfowareDbProvider extends StandardDbProvider {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
     * コンストラクタ
     */
    public SymfowareDbProvider() {
    	// 必要に応じて初期処理を実装してください。
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public PreparedStatement getLimitOffsetStatement(Connection conn, ISqlSelectParts select, int startIndex, int count) throws DatabaseException {
		if(!this.hasRangeStatement()) {
			return null;
		}

		String sql = String.format("SELECT * FROM (SELECT IFM_TEMP_TABLE__.*, ROWNUM AS %s FROM (SELECT %s FROM %s%s%s ) IFM_TEMP_TABLE__) IFM_TEMP_TABLE2__ WHERE %s > %s%s",
				this.getRowNumberField(),
				select.getColumns(),
				select.getFrom(),
				(select.getWhere().length() == 0) ? "" : (" WHERE " + select.getWhere()),
				(select.getOrderBy().length() == 0) ? "" : (" ORDER BY " + select.getOrderBy()),
				this.getRowNumberField(),
				startIndex,
				(count > 0) ? (" AND ROWNUM <= " + count) : "");

		List<SqlValue> parameters = new ArrayList<SqlValue>();
		parameters.addAll(select.getColumnsParameters());
		parameters.addAll(select.getFromParameters());
		parameters.addAll(select.getWhereParameters());
		parameters.addAll(select.getOrderByParameters());

		return this.createCommand(conn, sql, parameters);
	}
}
