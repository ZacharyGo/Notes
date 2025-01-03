package com.mytools;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileAndFolders {
	List<String> files = new ArrayList<String>();

	public boolean GetFiles(String path, String extension) {

		if (path == null) {
			System.out.println("No path specified");
			return false;
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
			for (String currentFile : files) {
				if (currentFile.toLowerCase().endsWith("." + extension)) {
					this.files.add(currentFile);
				}
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

		return true;
	}

	public String filenamePart(String filename) {
		return filename.substring(0, filename.lastIndexOf("."));
		// return filename.split("\\.")[0];
	}
	public String filenameExt(String filename) {
		return filename.substring(filename.lastIndexOf("."));
		// return filename.split("\\.")[1];
	}
}
