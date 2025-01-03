package com.mytools;

import java.util.Map;


public class TextFileSplitter {
	static String sourceFile;
	static String destinationFile;
	static int numberOfRows;
	static int fileSize;
	static boolean headerPerPage;

	public static void main(String[] args) {
		if (!ReadConfig(args)) {
			System.out.println("Failed getting Config");
		}
		if (!SplitFile()) {
			System.out.println("Failed splitting file");
		}
	}

	public static boolean ReadConfig(String[] args) {
		Config config = new Config();
		System.out.println("Retreiving Config");
		if (!config.getConfig(args)) {
			return false;
		}

		sourceFile = config.getConfigValues("SourceFile");
		destinationFile = config.getConfigValues("DestinationFile");
		numberOfRows = Integer.parseInt(config.getConfigValues("NumberOfRows"));
		fileSize = Integer.parseInt(config.getConfigValues("FileSize"));
		headerPerPage = config.getConfigValues("HeaderPerPage") == "true" ? true : false;

		for (Map.Entry<String, String> m : config.configInfo.entrySet()) {
			//System.out.println(m.getKey() + " : " + m.getValue());
		}
		return true;

//		System.out.println(config.configInfo.get(15));

	}

	public static boolean SplitFile() {
		SplitTextFile splitTextFile = new SplitTextFile();
		return splitTextFile.splitFile(sourceFile, destinationFile, numberOfRows, fileSize, headerPerPage);
		//return true;
	}
}
