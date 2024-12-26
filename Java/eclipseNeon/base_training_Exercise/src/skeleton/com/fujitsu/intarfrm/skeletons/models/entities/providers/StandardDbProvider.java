package com.fujitsu.intarfrm.skeletons.models.entities.providers;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;
import com.fujitsu.intarfrm.helpers.models.entity.ISqlSelectParts;
import com.fujitsu.intarfrm.helpers.models.entity.SqlValue;
import com.fujitsu.intarfrm.helpers.models.entity.providers.IfmDbProvider;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;

/**
 * フレームワーク標準のDBプロバイダクラス
 *
 * @author INTARFRM
 */
public class StandardDbProvider extends IfmDbProvider {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * デフォルトエスケープ文字
	 */
	private static final String ESCAPE_CHAR = "$";

	/**
	 * 既定のエスケープ対象のワイルドカード文字
	 */
    private static final String ESCAPE_TARGETS = "_%";

	/**
	 * エスケープ対象のワイルドカード文字
	 */
	private String escapeTargets;

	/**
	 * エスケープ対象のワイルドカード文字を取得する
	 * @return エスケープ対象のワイルドカード文字
	 */
	public String getEscapeTargets() {
		return escapeTargets;
	}

	/**
	 * エスケープ対象のワイルドカード文字を設定する
	 * @param escapeTargets エスケープ対象のワイルドカード文字
	 */
	public void setEscapeTargets(String escapeTargets) {
		this.escapeTargets = escapeTargets;
	}

	/**
	 * 範囲指定のSELECT文を発行できるかどうかを取得する
	 * @return 発行できる場合はtrue。それ以外はfalse。
	 */
	public boolean hasRangeStatement() {
		return hasRangeStatement;
	}

	/**
	 * 範囲指定のSELECT文を発行できるかどうかを設定する
	 * @param hasRangeStatement 発行できる場合はtrue。それ以外はfalse。
	 */
	public void setHasRangeStatement(boolean hasRangeStatement) {
		this.hasRangeStatement = hasRangeStatement;
	}

	/**
	 * 範囲指定のSELECT文を発行できるかどうか （既定値はtrue）
	 */
    protected boolean hasRangeStatement;

    /**
     * コンストラクタ
     */
    public StandardDbProvider() {
        this.escapeTargets = ESCAPE_TARGETS;
        this.hasRangeStatement = true;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String escapeLikeParameter(String value) {
		if (StringHelper.isNullOrEmpty(value)) {
			return value;
		}

		// $ -> $$
		String replaced = value.replace(ESCAPE_CHAR, ESCAPE_CHAR + ESCAPE_CHAR);
		for (char target : this.escapeTargets.toCharArray()) {
			//% -> $%
			replaced = replaced.replace(String.valueOf(target), ESCAPE_CHAR + target);
		}
		return replaced;
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public String getEscapeClause() {
		return "ESCAPE '" + ESCAPE_CHAR + "'";
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public PreparedStatement getSelectStatement(Connection conn, ISqlSelectParts builder) throws DatabaseException {
		String sql = String.format("SELECT %s FROM %s%s%s",
				builder.getColumns(),
				builder.getFrom(),
				(builder.getWhere().length() == 0) ? "" : (" WHERE " + builder.getWhere()),
				(builder.getOrderBy().length() == 0) ? "" : (" ORDER BY " + builder.getOrderBy()));

		List<SqlValue> parameters = new ArrayList<SqlValue>();
		parameters.addAll(builder.getColumnsParameters());
		parameters.addAll(builder.getFromParameters());
		parameters.addAll(builder.getWhereParameters());
		parameters.addAll(builder.getOrderByParameters());

		return this.createCommand(conn, sql, parameters);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public PreparedStatement getCountStatement(Connection conn, ISqlSelectParts builder) throws DatabaseException {

        String sql = String
                .format("SELECT COUNT(*) FROM %s%s",
                		builder.getFrom(),
                        (builder.getWhere().length() == 0) ? "" : (" WHERE " + builder.getWhere()));

        List<SqlValue> parameters = new ArrayList<SqlValue>();
        parameters.addAll(builder.getFromParameters());
        parameters.addAll(builder.getWhereParameters());

        return this.createCommand(conn, sql, parameters);

	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public PreparedStatement getLimitOffsetStatement(Connection conn, ISqlSelectParts select, int startIndex, int count) throws DatabaseException {
		if(!this.hasRangeStatement) {
			return null;
		}

		String sql = String.format("SELECT * FROM (SELECT %s , ROW_NUMBER() OVER( ORDER BY %s ) AS %s FROM %s%s ) AS IFM_TEMP_TABLE__ WHERE %s > %s%s",
				select.getColumns(),
				(select.getOrderBy().length() == 0) ? "(SELECT 1)" : select.getOrderBy(),
				this.getRowNumberField(),
				select.getFrom(),
				(select.getWhere().length() == 0) ? "" : (" WHERE " + select.getWhere()),
				this.getRowNumberField(),
				startIndex,
				(count <= 0) ? "" : " AND " + this.getRowNumberField() + " <= " + (startIndex + count));

		List<SqlValue> parameters = new ArrayList<SqlValue>();
		parameters.addAll(select.getColumnsParameters());
		parameters.addAll(select.getOrderByParameters());
		parameters.addAll(select.getFromParameters());
		parameters.addAll(select.getWhereParameters());

		return this.createCommand(conn, sql, parameters);
	}
}
