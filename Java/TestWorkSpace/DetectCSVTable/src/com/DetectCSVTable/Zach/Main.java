package com.DetectCSVTable.Zach;

import java.io.IOException;

public class Main {

	public static void main(String[] args) throws IOException {
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
	}

}
