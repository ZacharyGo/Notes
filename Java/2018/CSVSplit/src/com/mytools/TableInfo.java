package com.mytools;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class TableInfo {

	public TableInfo(String pathSQL) {
		this.pathSQL = pathSQL;
	}
	Map <String, List<ColumnInfo>> SQLColumns = new  LinkedHashMap<>();
	String pathSQL;

	public boolean ReadSQLCols(String SQLFile) {
		SQLFile = SQLFile + ".sql";
		
		File file = new File(pathSQL, SQLFile);
		//List<String> columns = new ArrayList<String>();
		ArrayList<ColumnInfo> columns = new ArrayList<ColumnInfo>();
		ColumnInfo column;
		String columnInfoName = "";
		String columnInfoType = "";
		String columnInfoJapaneseName = "";
		String columnInfoNotNull = "";
		String tableName = "";

		BufferedWriter writer;
		try {
			writer = new BufferedWriter(new FileWriter("TableInfo.csv", true));

			// Creating an object of BufferedReader class
			BufferedReader bufferedReader;
			try {
				bufferedReader = new BufferedReader(new FileReader(file));
				String line;
				String columnName = "";
				String columnType = "";
				boolean columnNotNull = false;
				String columnJapaneseName = "";

				// Condition holds true till
				// there is character in a string
				try {
					boolean readingColumn = false;
					while ((line = bufferedReader.readLine()) != null) {
						if (readingColumn) {
							if (line.contains(",CONSTRAINT") || line.contains(",)") || line.trim().charAt(0) == ')') {
								columnInfoName = tableName + "," + columnInfoName + "\n";
								columnInfoType = tableName + "," + columnInfoType + "\n";
								columnInfoJapaneseName = tableName + "," + columnInfoJapaneseName + "\n";
								columnInfoNotNull = tableName + "," + columnInfoNotNull + "\n";

								writer.append(columnInfoName);
								writer.append(columnInfoType);
								writer.append(columnInfoJapaneseName);
								writer.append(columnInfoNotNull);
								writer.close();
								System.out.println("Done gathering " + tableName + " columns");
								SQLColumns.put(tableName, columns);
								bufferedReader.close();
								return true;
							} else {
								// Print the string
								column = new ColumnInfo();
								line = line.replace(",", "").trim();
								try {
									columnName = line.substring(0, line.indexOf(" "));
									columnType = line.substring(line.indexOf(" ")).trim();
									columnType = columnType.substring(0, columnType.indexOf(" "));
									columnJapaneseName = line.substring(line.indexOf("--") + 1);
									columnNotNull = line.contains("NOT NULL");

									column.setColumnName(columnName);
									column.setColumnType(columnType);
									column.setColumnNotNull(columnNotNull);
									column.setColumnJapaneseName(columnJapaneseName);
									columns.add(column);
								} catch (Exception e) {
									// TODO Auto-generated catch block
									System.out.println(columnName + "|" + line);
									e.printStackTrace();
								}
								if ( columnInfoName == "") {
									columnInfoName = columnName;
									columnInfoType = columnType;
									columnInfoJapaneseName = columnJapaneseName;
									columnInfoNotNull = columnNotNull ? "True":"False";
								} else {
									columnInfoName = columnInfoName + "," + columnName;
									columnInfoType = columnInfoType + "," + columnType;
									columnInfoJapaneseName = columnInfoJapaneseName + "," +columnJapaneseName;
									columnInfoNotNull = columnInfoNotNull + "," + (columnNotNull ? "True":"False");
								}
							}
						} else {
							if (line.contains("CREATE TABLE")) {
								tableName = line.replace("CREATE TABLE", "").replace("(", "").trim();
								readingColumn = true;
							}
						}
					}
					bufferedReader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					System.out.println("Error adding file TableInfo.csv");
					e.printStackTrace();
					return false;
				} catch (Exception e1) {
					System.out.println("Exception Error writing file TableInfo.csv");
					e1.printStackTrace();
					return false;
				}
			} catch (FileNotFoundException e) {
				System.out.println("File :" + SQLFile + " not found");
				return false;
			} catch (Exception e1) {
				System.out.println("Exception Error writing file TableInfo.csv");
				e1.printStackTrace();
				return false;
			}
		} catch (IOException e1) {
			System.out.println("IOException Error adding file TableInfo.csv");
			e1.printStackTrace();
			return false;
		} catch (Exception e1) {
			System.out.println("Exception Error writing file TableInfo.csv");
			e1.printStackTrace();
			return false;
		}
		return true;
	}
	
	
}
