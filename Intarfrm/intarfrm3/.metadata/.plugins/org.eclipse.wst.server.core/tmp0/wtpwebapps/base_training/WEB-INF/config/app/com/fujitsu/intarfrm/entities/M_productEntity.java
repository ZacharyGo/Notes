
package com.fujitsu.intarfrm.entities;

import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumn;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumnInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseTable;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.models.dbDataConverters.ProjectDatabaseDataType;

/**
 * <p>エンティティ「M_PRODUCT」の定義クラス</p>
 * エンティティ論理名：[商品マスタ]<br>
 * 
 * @author INTARFRM
 */
public final class M_productEntity extends DatabaseTable {

    /**
     * デフォルトバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コンストラクタ。
     * @throws DatabaseException エンティティ情報の生成に失敗した場合
     */
    public M_productEntity() throws DatabaseException {
        super("M_PRODUCT", "商品マスタ", false, 3);
        this.PRODUCTID = super.createColumn("PRODUCTID", ProjectDatabaseDataType.TYPE_X);
        this.PRODUCTNAME = super.createColumn("PRODUCTNAME", ProjectDatabaseDataType.TYPE_N);
        this.PRICE = super.createColumn("PRICE", ProjectDatabaseDataType.TYPE_9);
    }

    /**
     * <p>列：[商品ID]</p>
     * 列物理名：[PRODUCTID]<br>
     * データタイプ：[X:英数字型]<br>
     * 桁数：[7(0)]<br>
     * PK順序:1<br>
     * NOT NULL:true
     */
    @DatabaseColumnInfo(ordinal=1, physicalName="PRODUCTID", logicalName="商品ID", allDigit=7, keySequence=1, notNull=true)
    public final DatabaseColumn PRODUCTID;

    /**
     * <p>列：[商品名]</p>
     * 列物理名：[PRODUCTNAME]<br>
     * データタイプ：[N:日本語型]<br>
     * 桁数：[100(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=2, physicalName="PRODUCTNAME", logicalName="商品名", allDigit=100)
    public final DatabaseColumn PRODUCTNAME;

    /**
     * <p>列：[値段]</p>
     * 列物理名：[PRICE]<br>
     * データタイプ：[9:数値型]<br>
     * 桁数：[10(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=3, physicalName="PRICE", logicalName="値段", allDigit=10)
    public final DatabaseColumn PRICE;

}
