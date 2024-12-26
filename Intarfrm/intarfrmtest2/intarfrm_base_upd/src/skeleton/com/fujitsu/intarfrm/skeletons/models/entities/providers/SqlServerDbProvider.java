package com.fujitsu.intarfrm.skeletons.models.entities.providers;

/**
 * SQL Server を使用するためのDBプロバイダ
 * @author INTARFRM
 *
 */
public class SqlServerDbProvider extends StandardDbProvider {

	/**
	 * シリアルバージョンID
	 */
	private static final long serialVersionUID = 1L;

    /**
     * コンストラクタ
     */
    public SqlServerDbProvider() {
		this.setEscapeTargets("[_%");
	}

}
