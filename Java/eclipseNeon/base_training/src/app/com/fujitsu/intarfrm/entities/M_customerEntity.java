
package com.fujitsu.intarfrm.entities;

import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumn;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseColumnInfo;
import com.fujitsu.intarfrm.helpers.models.entity.DatabaseTable;
import com.fujitsu.intarfrm.helpers.models.transactions.DatabaseException;
import com.fujitsu.intarfrm.skeletons.models.dbDataConverters.ProjectDatabaseDataType;

/**
 * <p>エンティティ「M_CUSTOMER」の定義クラス</p>
 * エンティティ論理名：[Customer Master]<br>
 * 
 * @author INTARFRM
 */
public final class M_customerEntity extends DatabaseTable {

    /**
     * デフォルトバージョンID
     */
    private static final long serialVersionUID = 1L;

    /**
     * コンストラクタ。
     * @throws DatabaseException エンティティ情報の生成に失敗した場合
     */
    public M_customerEntity() throws DatabaseException {
        super("M_CUSTOMER", "Customer Master", false, 12);
        this.CUSID = super.createColumn("CUSID", ProjectDatabaseDataType.TYPE_X);
        this.CUSNAME = super.createColumn("CUSNAME", ProjectDatabaseDataType.TYPE_N);
        this.AREA = super.createColumn("AREA", ProjectDatabaseDataType.TYPE_N);
        this.TELNO = super.createColumn("TELNO", ProjectDatabaseDataType.TYPE_X);
        this.EMAIL = super.createColumn("EMAIL", ProjectDatabaseDataType.TYPE_X);
        this.DELIVEREMAIL = super.createColumn("DELIVEREMAIL", ProjectDatabaseDataType.TYPE_9);
        this.BIRTHYMD = super.createColumn("BIRTHYMD", ProjectDatabaseDataType.TYPE_D);
        this.SEX = super.createColumn("SEX", ProjectDatabaseDataType.TYPE_9);
        this.JOB = super.createColumn("JOB", ProjectDatabaseDataType.TYPE_N);
        this.STOREID = super.createColumn("STOREID", ProjectDatabaseDataType.TYPE_X);
        this.POINT = super.createColumn("POINT", ProjectDatabaseDataType.TYPE_9);
        this.POINTRATE = super.createColumn("POINTRATE", ProjectDatabaseDataType.TYPE_9);
    }

    /**
     * <p>列：[CustomerID]</p>
     * 列物理名：[CUSID]<br>
     * データタイプ：[X:英数字型]<br>
     * 桁数：[5(0)]<br>
     * PK順序:1<br>
     * NOT NULL:true
     */
    @DatabaseColumnInfo(ordinal=100, physicalName="CUSID", logicalName="CustomerID", allDigit=5, keySequence=1, notNull=true)
    public final DatabaseColumn CUSID;

    /**
     * <p>列：[CustomerName]</p>
     * 列物理名：[CUSNAME]<br>
     * データタイプ：[N:日本語型]<br>
     * 桁数：[30(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=200, physicalName="CUSNAME", logicalName="CustomerName", allDigit=30)
    public final DatabaseColumn CUSNAME;

    /**
     * <p>列：[Area]</p>
     * 列物理名：[AREA]<br>
     * データタイプ：[N:日本語型]<br>
     * 桁数：[10(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=300, physicalName="AREA", logicalName="Area", allDigit=10)
    public final DatabaseColumn AREA;

    /**
     * <p>列：[TelephoneNumber]</p>
     * 列物理名：[TELNO]<br>
     * データタイプ：[X:英数字型]<br>
     * 桁数：[17(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=400, physicalName="TELNO", logicalName="TelephoneNumber", allDigit=17)
    public final DatabaseColumn TELNO;

    /**
     * <p>列：[Email Address]</p>
     * 列物理名：[EMAIL]<br>
     * データタイプ：[X:英数字型]<br>
     * 桁数：[50(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=500, physicalName="EMAIL", logicalName="Email Address", allDigit=50)
    public final DatabaseColumn EMAIL;

    /**
     * <p>列：[Email Delivery Request]</p>
     * 列物理名：[DELIVEREMAIL]<br>
     * データタイプ：[9:数値型]<br>
     * 桁数：[1(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=600, physicalName="DELIVEREMAIL", logicalName="Email Delivery Request", allDigit=1)
    public final DatabaseColumn DELIVEREMAIL;

    /**
     * <p>列：[Birthday]</p>
     * 列物理名：[BIRTHYMD]<br>
     * データタイプ：[D:日付型]<br>
     * 桁数：[0(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=700, physicalName="BIRTHYMD", logicalName="Birthday", allDigit=0)
    public final DatabaseColumn BIRTHYMD;

    /**
     * <p>列：[Gender]</p>
     * 列物理名：[SEX]<br>
     * データタイプ：[9:数値型]<br>
     * 桁数：[1(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=800, physicalName="SEX", logicalName="Gender", allDigit=1)
    public final DatabaseColumn SEX;

    /**
     * <p>列：[Job]</p>
     * 列物理名：[JOB]<br>
     * データタイプ：[N:日本語型]<br>
     * 桁数：[10(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=900, physicalName="JOB", logicalName="Job", allDigit=10)
    public final DatabaseColumn JOB;

    /**
     * <p>列：[StoreID]</p>
     * 列物理名：[STOREID]<br>
     * データタイプ：[X:英数字型]<br>
     * 桁数：[5(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=1000, physicalName="STOREID", logicalName="StoreID", allDigit=5)
    public final DatabaseColumn STOREID;

    /**
     * <p>列：[POINT]</p>
     * 列物理名：[POINT]<br>
     * データタイプ：[9:数値型]<br>
     * 桁数：[7(0)]<br>
     * NOT NULL:false
     */
    @DatabaseColumnInfo(ordinal=1100, physicalName="POINT", logicalName="POINT", allDigit=7)
    public final DatabaseColumn POINT;

    /**
     * <p>列：[POINTRate]</p>
     * 列物理名：[POINTRATE]<br>
     * データタイプ：[9:数値型]<br>
     * 桁数：[6(2)]<br>
     * NOT NULL:true
     */
    @DatabaseColumnInfo(ordinal=1200, physicalName="POINTRATE", logicalName="POINTRate", allDigit=6, decimalDigit=2, notNull=true)
    public final DatabaseColumn POINTRATE;

}
