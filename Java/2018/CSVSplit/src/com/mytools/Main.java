package com.mytools;

import java.io.IOException;
import java.util.Map;

public class Main {
	static String fileCSV;
	static String pathSQL;
	static String pathCSV;
	static String pathDestination;
	static String tableName;
	static TableInfo tableInfo;

	public static void main(String[] args) throws IOException {
		if (!ReadConfig(args)) {
			System.out.println("Failed getting configuration");
			return;
		}

		if (!ReadTablesInformations()) {
			System.out.println("Failed readings Columns Information of each Table");
			return;
		}

		/*ColTools colTools = new ColTools();
		System.out.println(colTools.FixCol("DATE", "2019/01/31 0:00:00"));
		System.out.println(colTools.FixCol("DATE", "2019/01/31"));
		System.out.println(colTools.FixCol("DATE", "01/31/2019 0:00:00"));
		System.out.println(colTools.FixCol("DATE", "01/31/2019"));*/

		if (!Split()) {
			System.out.println("Failed Splitting File");
			return;
		}

		/*
		for (String file: fileAndFolders.files) {
			if (tableInfo.ReadSQLCols(config.configInfo.get("sqlpath"), file)) {
				System.out.println("Done getting " + file + " information");
			} else {
				System.out.println("Failed getting " + file + " information");
			}

		}
*/
	}

	public static boolean ReadConfig(String[] args) {
		Config config = new Config();
		if (!config.getConfig(args)) {
			return false;
		}
		pathSQL=config.getConfigValues("SQLPath");
		pathCSV=config.getConfigValues("CSVPath");
		fileCSV=config.getConfigValues("CSVFile");
		pathDestination=config.getConfigValues("DestinationPath");
		tableName=config.getConfigValues("TableName");

		for (Map.Entry<String, String> m:config.configInfo.entrySet()) {
			System.out.println(m.getKey() + " : " +  m.getValue());
		}
		return true;

//		System.out.println(config.configInfo.get(15));

	}

	public static boolean ReadTablesInformations() {
		tableInfo = new TableInfo(pathSQL);
		tableInfo.ReadSQLCols(tableName);
		return true;
	}


	public static boolean Split() { 	
		FileAndFolders fileAndFolders = new FileAndFolders();
		fileAndFolders.GetFiles(pathSQL, "sql");
		//TableInfo tableInfo = new TableInfo(pathSQL);
		CSVSplit csvSplit = new CSVSplit(tableInfo.SQLColumns.get(tableName.toUpperCase()));
		csvSplit.splitCSV(pathCSV, fileCSV,pathDestination + "\\" + fileAndFolders.filenamePart(fileCSV));
		return true;
	}

}
