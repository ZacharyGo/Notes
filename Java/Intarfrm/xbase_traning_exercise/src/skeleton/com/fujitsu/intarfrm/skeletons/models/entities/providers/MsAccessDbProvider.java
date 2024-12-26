package com.fujitsu.intarfrm.skeletons.models.entities.providers;

import com.fujitsu.intarfrm.helpers.commons.utils.StringHelper;

/**
 * Access用のDBプロバイダクラス
 *
 * @author INTARFRM
 */
public class MsAccessDbProvider extends StandardDbProvider {

	/**
	 * デフォルトシリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

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
     * コンストラクタ
     */
	public MsAccessDbProvider() {
		this.hasRangeStatement = false;
	}

	/**
	 * {@inheritDoc}
	 */
    @Override
    public String escapeLikeParameter(String value)
    {
        if (StringHelper.isNullOrEmpty(value))
        {
            return value;
        }

        return value.replace("[", "[[]").replace("%", "[%]").replace("_", "[_]");
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public String getEscapeClause()
    {
        // MS AccessではESCAPE句を付けない
        return "";
    }

}
