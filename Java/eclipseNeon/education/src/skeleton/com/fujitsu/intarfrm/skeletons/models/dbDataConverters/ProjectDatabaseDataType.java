
package com.fujitsu.intarfrm.skeletons.models.dbDataConverters;

import com.fujitsu.intarfrm.helpers.models.entity.DatabaseDataContext;
import com.fujitsu.intarfrm.helpers.models.entity.ItemDataCategory;
import com.fujitsu.intarfrm.helpers.models.entity.converters.SqlNumberDataConverter;
import com.fujitsu.intarfrm.helpers.models.entity.converters.SqlStringDataConverter;
import com.fujitsu.intarfrm.helpers.models.entity.converters.SqlTimestampDataConverter;

/**
 * <p>項目データタイプに対応するデータベースデータ型のタイプの列挙体。</p>
 * 
 * @author INTARFRM
 */
public class ProjectDatabaseDataType {


    /**
     * <p>項目データ型[9]のデータベースデータ型タイプ</p>
     * 項目データ型名：[数値型]<br>
     * データカテゴリID：[N]（数値型）<br>
     */
    public static DatabaseDataContext TYPE_9 = new DatabaseDataContext("9", "数値型", ItemDataCategory.NUMBER, new SqlNumberDataConverter());


    /**
     * <p>項目データ型[D]のデータベースデータ型タイプ</p>
     * 項目データ型名：[日付型]<br>
     * データカテゴリID：[D]（日付型）<br>
     */
    public static DatabaseDataContext TYPE_D = new DatabaseDataContext("D", "日付型", ItemDataCategory.DATETIME, new SqlTimestampDataConverter());


    /**
     * <p>項目データ型[N]のデータベースデータ型タイプ</p>
     * 項目データ型名：[日本語型]<br>
     * データカテゴリID：[S]（文字型）<br>
     */
    public static DatabaseDataContext TYPE_N = new DatabaseDataContext("N", "日本語型", ItemDataCategory.STRING, new SqlStringDataConverter());


    /**
     * <p>項目データ型[X]のデータベースデータ型タイプ</p>
     * 項目データ型名：[英数字型]<br>
     * データカテゴリID：[S]（文字型）<br>
     */
    public static DatabaseDataContext TYPE_X = new DatabaseDataContext("X", "英数字型", ItemDataCategory.STRING, new SqlStringDataConverter());
}
