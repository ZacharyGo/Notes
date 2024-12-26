package com.mypackage.myclass;
import java.io.IOException;

/*
 * ToDO
 * Config (CSVPath, SQLPath)
 * Read All CSV on by one and compare each to all SQL File in SQLPath
 * Read all SQL File in SQLPath
 * Compare
 *
 */
public class main {

	public static void main(String[] args) throws IOException {
		/*File f1 = new File("D:\\Practice\\Java\\2018\\DetectTable\\CSVPath","new.csv");
		if (f1.renameTo(new File("D:\\Practice\\Java\\2018\\DetectTable\\CSVPath","old.csv" ))) {
			System.out.println("Successfully Renamed");
		} else
			System.out.println("Rename failed");
*/

		
		TableInfo tableInfo = new TableInfo();

		// Load CSV files and SQLFile after reading Config.sys
		if (tableInfo.ReadConfig()) {
			if (tableInfo.GetFiles(tableInfo.CSVPath, "CSVFiles")) {
				System.out.print("CsvPath : " + tableInfo.CSVPath);
				System.out.println(" with " + tableInfo.CSVFiles.size() + " files found");
			}

			if (tableInfo.GetFiles(tableInfo.SQLPath, "SQLFiles")) {
				System.out.print("SQLPath : " + tableInfo.SQLPath);
				System.out.println(" with " + tableInfo.SQLFiles.size() + " files found");
			}

		}
		if (!tableInfo.DetectCSV()) {
		//if (!tableInfo.GetSQLMatch("new.csv")) {
			System.out.println("Failed");
		}
		System.out.println("Done");




		/*for (String CSVFile : tableInfo.CSVFiles) {
			System.out.print("Analyzing CSV file : " + CSVFile);
			if (!tableInfo.GetSQLMatch(CSVFile))
				System.out.println(" No match found");

		}*/
		/*if (!tableInfo.ReadSQLCols("ED0009T_TBL.sql")) {

		}
		if (!tableInfo.ReadSQLCols("ED0015T_TBL.sql")) {

		}*/
		/*
		if (tableInfo.AnalyzeTable()) {
			System.out.println("Finish Reading: " + tableInfo.filename);
			for (String column:tableInfo.columns) {
				System.out.println(column);
			}
			System.out.println("Finish Reading: " + tableInfo.tableName);
			System.out.println(tableInfo.columnInfo);
		} */




	}

}
