package my.collection;

public class ColumnInfo {
	String columnName;
	String columnType;
	boolean columnNotNull;
	String columnJapaneseName;

	public String getColumnJapaneseName() {
		return columnJapaneseName;
	}
	public void setColumnJapaneseName(String columnJapaneseName) {
		this.columnJapaneseName = columnJapaneseName;
	}
	public String getColumnName() {
		return columnName;
	}
	public void setColumnName(String columnName) {
		this.columnName = columnName;
	}
	public String getColumnType() {
		return columnType;
	}
	public void setColumnType(String columnType) {
		this.columnType = columnType;
	}
	public boolean isColumnNotNull() {
		return columnNotNull;
	}
	public void setColumnNotNull(boolean columnNotNull) {
		this.columnNotNull = columnNotNull;
	}

}
