package com.mytools;

public class ColTools {


	public String FixCol(String colType, boolean colNotNul, String colValue) {
		String outValue=colValue;
		colType = colType.contains("(") ? colType.substring(0, colType.indexOf("(")) : colType;

		switch (colType) {
		case "DATE":
		case "TIMESTAMP":
			colValue = colValue.trim();
			if (colValue.contains("/")) {
				if (colValue.indexOf('/') == 4) {												// if yyyy/mm/dd
					outValue = colValue.subSequence(5, 10) + "/" + colValue.subSequence(0, 4); 	//change to mm/dd/yyyy
					if (colValue.length() > 10) {												// If time included
						outValue = outValue + colValue.substring(10);
					}
				} else
					outValue = colValue;
			}
			break;
		case "CHAR":
		case "VARCHAR":
		case "VARCHAR2":
		case "NUMBER":
				break;
		default:
			System.out.println("Unknown column type:" + colType);
		}
		return outValue;
	}
}
