package my.collection;

import java.util.HashMap;
import java.util.Map;

public class TestMap {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Map<String, ColumnInfo> tableInfo = new HashMap<String, ColumnInfo>();
		ColumnInfo columnInfo = new ColumnInfo();
		columnInfo.setColumnName("First");
		columnInfo.setColumnType("Date");
		columnInfo.setColumnNotNull(true);
		tableInfo.put("Table1", columnInfo);
		System.out.println(tableInfo);
		System.out.println(tableInfo.get("Table1"));
		System.out.println(tableInfo.get("Table1").getColumnName());
		System.out.println(tableInfo.get("Table1").getColumnType());
		System.out.println(tableInfo.get("Table1").isColumnNotNull());
	}

}


