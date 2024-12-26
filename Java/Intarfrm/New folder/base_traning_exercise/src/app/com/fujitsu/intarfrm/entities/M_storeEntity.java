
package com.fujitsu.intarfrm.entities;

import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumn;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumnInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseTable;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.models.dbDataConverters.ProjectDatabaseDataType;

/**
 * <p>エンティティ「M_STORE」の定義クラス</p>
 * エンティティ論理名：[Store Master]<br>
 * 
 * @author INTARFRM
 */
public final class M_storeEntity extends DatabaseTable {

    /**
     * デフォルトバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コンストラクタ。
     * @throws DatabaseException エンティティ情報の生成に失敗した場合
     */
    public M_storeEntity() throws DatabaseException {
        super("M_STORE", "Store Master", false, 3);
        this.STOREID = super.createColumn("STOREID", ProjectDatabaseDataType.TYPE_X);
        this.STORENAME = super.createColumn("STORENAME", ProjectDatabaseDataType.TYPE_X);
        this.ADDRESS = super.createColumn("ADDRESS", ProjectDatabaseDataType.TYPE_X);
    }

    /**
     * <p>列：[Store ID]</p>
     * 列物理名：[STOREID]<br>
     * データタイプ：[X:Alphanumeric (英数字型)]<br>
     * 桁数：[5(0)]<br>
     * PK順序:1<br>
     * NOT NULL:true
     */
    @DatabaseColumnInfo(ordinal=100, physicalName="STOREID", logicalName="Store ID", allDigit=5, keySequence=1, notNull=true)
    public final DatabaseColumn STOREID;

    /**
     * <p>列：[Store name]</p>
     * 列物理名：[STORENAME]<br>
     * データタイプ：[X:Alphanumeric (英数字型)]<br>
     * 桁数：[30(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=200, physicalName="STORENAME", logicalName="Store name", allDigit=30)
    public final DatabaseColumn STORENAME;

    /**
     * <p>列：[Address]</p>
     * 列物理名：[ADDRESS]<br>
     * データタイプ：[X:Alphanumeric (英数字型)]<br>
     * 桁数：[100(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=300, physicalName="ADDRESS", logicalName="Address", allDigit=100)
    public final DatabaseColumn ADDRESS;

}
