package com.DetectCSVTable.Zach;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class TableInfo {
	String filename;
	String tableName;
	String CSVPath;
	String SQLPath;

	List<String> CSVFiles = new ArrayList<String>();
	List<String> CSVCols  = new ArrayList<String>();
	List<String> SQLFiles = new ArrayList<String>();
	Map <String, List<String>> SQLColumns = new  LinkedHashMap<>();


	public boolean ReadConfig() throws IOException {
		this.filename = "Config.sys";
		File file = new File(filename);

		BufferedReader bufferedReader;
		try {
			bufferedReader = new BufferedReader(new FileReader(file));
			String line;
			try {
				while ((line = bufferedReader.readLine()) != null) {
					if (line.toLowerCase().contains("csvpath=")) {
						this.CSVPath = line.toLowerCase().replace("csvpath=", "").trim();
					} else if (line.toLowerCase().contains("sqlpath=")) {
						this.SQLPath = line.toLowerCase().replace("sqlpath=", "").trim();
					}
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				bufferedReader.close();
				return false;
			}
		} catch (FileNotFoundException e) {
			System.out.println("Configuration file (Config.sys) not found");
			return false;
		}
		return true;
	}

	public boolean GetFiles(String path, String destination) {

		try {
			// Empty previous content of TableInfo.csv
			BufferedWriter writer = new BufferedWriter(new FileWriter("TableInfo.csv"));
			writer.close();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		try {
			File directoryPath = new File(path);
			String[] files = directoryPath.list();
			if (files == null) {
				System.out.println("Can not find files in " + path);
				return false;
			}
			if (files.length == 0) {
				System.out.println("No files in " + path);
				return false;
			}
			if (destination == "SQLFiles") {
				for (String currentFile : files)
					if (currentFile.toLowerCase().endsWith(".sql")) {
						this.SQLFiles.add(currentFile);
						if (!ReadSQLCols(currentFile)) {
							System.out.println("Error gathering columns in " + currentFile);
						}
					}
			} else {
				for (String currentFile : files)
					if (currentFile.toLowerCase().endsWith(".csv"))
						this.CSVFiles.add(currentFile);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public boolean ReadSQLCols(String SQLFile) {

		File file = new File(this.SQLPath, SQLFile);
		List<String> columns =  new ArrayList<String>() ;
		String columnInfo = "";

		BufferedWriter writer;
		try {
			writer = new BufferedWriter(new FileWriter("TableInfo.csv", true));

			// Creating an object of BufferedReader class
			BufferedReader bufferedReader;
			try {
				bufferedReader = new BufferedReader(new FileReader(file));
				String st;
				String columnName;
				// Condition holds true till
				// there is character in a string
				try {
					boolean readingColumn = false;
					while ((st = bufferedReader.readLine()) != null) {
						if (readingColumn) {
							if (st.contains(",CONSTRAINT") || st.contains(",)") || st.trim().charAt(0)== ')') {
								columnInfo = tableName + "," + columnInfo + "\n";
								writer.append(columnInfo);
								writer.close();
								System.out.println("Done gathering " + tableName + " columns");
								SQLColumns.put(tableName, columns);
								bufferedReader.close();
								return true;
							} else {
								// Print the string
								columnName = st.replace(",", "").trim();
								try {
									columnName = columnName.substring(0, columnName.indexOf(" "));
									columns.add(columnName);
								} catch (Exception e) {
									// TODO Auto-generated catch block
									System.out.println(columnName + "|" + st);
									e.printStackTrace();
								}
								if (columnInfo=="")
									columnInfo = columnName;
								else
									columnInfo = columnInfo + "," + columnName;
							}
						} else {
							if (st.contains("CREATE TABLE")) {
								this.tableName = st.replace("CREATE TABLE", "").replace("(", "").trim();
								readingColumn = true;
							}

						}
					}
					bufferedReader.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}

			} catch (FileNotFoundException e) {
				System.out.println("File :" + filename + " not found");
			}
		} catch (IOException e1) {
			System.out.println("Error adding file TableInfo.csv");
			e1.printStackTrace();
		}
		return true;
	}

	public boolean DetectCSV() throws IOException {
		for (String CSVFile :this.CSVFiles) {
			if (GetSQLMatch(CSVFile)) 
				System.out.println("Successfully updated " + CSVFile);
			else
				System.out.println("Failed to update " + CSVFile);
		}
		return true;
	}
	public boolean GetSQLMatch(String CSVFile) throws IOException {
		if (!ReadCSVCols(CSVFile)) {
			System.out.println("Reading CSV columns of " + CSVFile + " failed");
		}
		String NearestMatch = "";
		String NewCSVName = "";
		int nearMatchCols = 0;
		for (Entry<String, List<String>> SQLInfo : SQLColumns.entrySet()) {

			if (SQLInfo.getValue().size() == this.CSVCols.size()) {
				if (SQLInfo.getValue().containsAll(this.CSVCols)) {
					System.out.println("Match SQL : " + SQLInfo.getKey());
					NewCSVName =  SQLInfo.getKey();
					return  RenameCSVFile(CSVFile, NewCSVName);

				}
			} 
		}
		/*if (NearestMatch != "") {
			System.out.println("Nearest Match : " + NearestMatch);
			return RenameCSVFile(CSVFile, NewCSVName);
		}*/

		// Detail scan
		nearMatchCols = 0;
		System.out.println("Detail search : " + CSVFile);
		for (Entry<String, List<String>> SQLInfo : SQLColumns.entrySet()) {
			int matchCol = 0;
			for (String column : this.CSVCols) {
				if (SQLInfo.getValue().contains(column)) {
					matchCol++;
				}
			}
			if (matchCol > nearMatchCols) {
				nearMatchCols = matchCol;
				NearestMatch = SQLInfo.getKey();
			}
		}
		if (nearMatchCols == 0) {
			System.out.println("No Matched Found");
			return false;
		}

		System.out.println("Nearest Match : " + NearestMatch + " " + nearMatchCols + " columns match out of " + this.CSVCols.size() + " columns");
		NewCSVName = NearestMatch + "(" + nearMatchCols + ")";
		return RenameCSVFile(CSVFile, NewCSVName);
	}

	public boolean ReadCSVCols(String CSVFile) throws IOException {
		File file = new File(this.CSVPath, CSVFile);
		BufferedReader bufferedReader;
		try {
			bufferedReader = new BufferedReader(new FileReader(file));
			String st;
			try {
				st = bufferedReader.readLine();
				if (st.indexOf('"')>=0)
					st = st.substring(st.indexOf('"'),st.length()); // remove garbage
				st = st.replace("\"", "");
				if (st.contains("	")) {
					this.CSVCols = Arrays.asList(st.split("\\t"));
				} else if (st.contains(",")) {
					this.CSVCols = Arrays.asList(st.split(","));
				} else
					System.out.println("Unknown CSV file structure");
				System.out.println(st.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
			bufferedReader.close();

		} catch (FileNotFoundException e) {
			System.out.println("Reading " + filename + " failed - File  not found");
			return false;
		}
		return true;
	}

	public boolean RenameCSVFile(String CSVFile, String NewCSVName) {
		File f1 = new File(this.CSVPath,CSVFile);
		int fileCount = 1;
		String fileSuffix = "";
		while (!f1.renameTo(new File(this.CSVPath,NewCSVName+fileSuffix+".csv")) && fileCount < 100) {
			fileCount++;
			fileSuffix = "-" + String.valueOf(fileCount);
		}
		/*
		if (f1.renameTo(new File(this.CSVPath,NewCSVName))) {
			System.out.println("Successfully Renamed to " + NewCSVName);
			return true;
		} else {
			System.out.println("Failed renaming to " + NewCSVName);
			return false;
		}*/
		if(fileCount <100) {
			System.out.println("Changing " + CSVFile + " to " + NewCSVName+fileSuffix);
			return true;
		} else
			return false;
	}
}
