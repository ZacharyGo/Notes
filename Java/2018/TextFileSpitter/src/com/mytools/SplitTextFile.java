package com.mytools;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

public class SplitTextFile {

	public boolean splitFile(String sourceFile, String destinationFile, int numberOfRows, int fileSize, boolean headerPerPage) {
		String header="";
		String destinationFileExt = destinationFile.substring(destinationFile.indexOf("."), destinationFile.length());
		destinationFile = destinationFile.substring(0, destinationFile.indexOf("."));

		BufferedReader bufferedReader;
		BufferedWriter writer;
		try {
			int outputCounter = 1;
			writer = new BufferedWriter(new FileWriter(destinationFile + "-" + outputCounter + destinationFileExt));
			String line;
			bufferedReader = new BufferedReader(new FileReader(sourceFile));

			try {
				int outputSize = 0;
				int numRows = 0;
				System.out.println("Copying to : " + destinationFile + outputCounter);
				while ((line = bufferedReader.readLine()) != null) {
					line = line.replace("HH24:MI:SS.ff", "HH24:MI:SS") + "\n";
					if (headerPerPage && header == "") {
						header = line;
					}
					if (numRows > numberOfRows || outputSize > fileSize) {
						writer.close();
						outputCounter++;
						writer = new BufferedWriter(new FileWriter(destinationFile + "-" + outputCounter + destinationFileExt));
						System.out.println("Copying to : " + destinationFile + "-" + outputCounter + destinationFileExt);

						writer.append(header);
						numRows = 1;
						outputSize = header.length();
					}


					writer.append(line);
					outputSize = outputSize + line.length();
					numRows++;

				}
				writer.close();
				System.out.println("Total lines : " + numRows);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				System.out.println("IOException" + e.getMessage());
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("File not found: (Path)" + sourceFile);
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return true;
	}
}
