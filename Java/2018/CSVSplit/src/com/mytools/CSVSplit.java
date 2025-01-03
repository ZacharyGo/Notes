package com.mytools;

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

public class CSVSplit {
	CSVSplit(List<ColumnInfo> columns) {
		this.columns = columns.toArray();
	}

	Object[] columns;
	String CSVSource = "";
	String tableHeader = "";
	String[] columnValues;
	String[] columnNames;

	public boolean splitCSV(String path, String CSVSource, String CSVDestination) {
		File file = new File(path, CSVSource);
		BufferedReader bufferedReader;
		BufferedWriter writer;
		try {
			int outputCounter = 1;
			writer = new BufferedWriter(new FileWriter(CSVDestination + outputCounter + ".csv"));
			String line;
			bufferedReader = new BufferedReader(new FileReader(file));
			try {
				int outputSize = 0;
				int numRows = 0;
				int totalNumRows = 0;
				System.out.println("Copying to : " + CSVDestination + outputCounter);
				while ((line = bufferedReader.readLine()) != null) {
					line = line + "\n";
					if (tableHeader == "") {
						tableHeader = line;
					}
					if (numRows > 1000000 || outputSize > 1500000000) {
						writer.close();
						outputCounter++;
						writer = new BufferedWriter(new FileWriter(CSVDestination + outputCounter + ".csv"));
						System.out.println(" - Records : " + numRows);
						totalNumRows =+numRows;
						System.out.print("Copying to : " + CSVDestination + outputCounter);

						writer.append(tableHeader);
						numRows = 1;
						outputSize = tableHeader.length();
					}

					/*
					 * ColTools colTools = new ColTools();
					 * System.out.println(colTools.FixCol("DATE", false, "2019/01/31 0:00:00"));
					 * System.out.println(colTools.FixCol("DATE", false, "2019/01/31"));
					 * System.out.println(colTools.FixCol("DATE", false, "01/31/2019 0:00:00"));
					 * System.out.println(colTools.FixCol("DATE", false, "01/31/2019"));
					 */
					writer.append(splitCSVLine(line));
					outputSize = outputSize + line.length();
					numRows++;

				}
				writer.close();
				totalNumRows =+numRows;
				System.out.println("Total records : " + totalNumRows);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("File not found: (Path)" + path);
			System.out.println("                (File)" + CSVSource);
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return true;
	}

	public String splitCSVLine(String csvLine) {
		String[] splittedLine = csvToArray(csvLine);

		ColTools colTools = new ColTools();
		String outLine = "";
		ColumnInfo columnInfo = new ColumnInfo();
		if (this.columns.length != splittedLine.length) {
			System.out.println(csvLine);
			System.out.println(this.columns.length + " Not the same as " + splittedLine.length);
			for (String value : splittedLine) {
				System.out.print("," + value);
			}
			System.out.println("");
			outLine=csvLine; // Do not update anything
//			String.join(",", splittedLine);
		} else {
			// System.out.println(this.columns.length + " - " + splittedLine.length);
			for (int colNumber = 0; colNumber < splittedLine.length; colNumber++) {
				columnInfo = (ColumnInfo) this.columns[colNumber];
				if (outLine == "")
					outLine = colTools.FixCol(columnInfo.getColumnType(), columnInfo.isColumnNotNull(),
							splittedLine[colNumber]);
				else
					outLine = outLine + "," + colTools.FixCol(columnInfo.getColumnType(), columnInfo.isColumnNotNull(),
							splittedLine[colNumber]);
			}
		}
		return outLine;
	}

	public String[] csvToArray(String CSVLine) {
		List<String> columns = new ArrayList<String>();
		// int qouteCounterSingle = 0;
		int qouteCounterDouble = 0;
		String currentChar;
		String currentColValue = "";
		for (int index = 0; index < CSVLine.length(); index++) {
			currentChar = CSVLine.substring(index, index + 1);
			if (currentChar.equals("\"")) {
				qouteCounterDouble++;
			}
			/*
			 * if (currentChar.equals("\'")) { qouteCounterSingle++; }
			 */
			if (currentChar.equals(",") || currentChar.equals("\t")) {
				if (qouteCounterDouble % 2 == 0 /* && qouteCounterSingle % 2 == 0 */) {
					columns.add(currentColValue);
					currentColValue = "";
					qouteCounterDouble = 0;
					// qouteCounterSingle = 0;
					currentChar = "";
				}
			}
			currentColValue = currentColValue + currentChar;
		}
		columns.add(currentColValue); // Add the last column
		return columns.toArray(new String[columns.size()]);

	}
}
