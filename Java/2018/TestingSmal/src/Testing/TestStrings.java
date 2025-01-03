package Testing;

import java.util.ArrayList;
import java.util.List;

public class TestStrings {
	TestStrings() {

		//testCSVToArray();
		/*System.out.println(Substrings("\"10000\",20211029003878,\"1\",2021/10/29 0:00:00,\"20\",40920,2021/11/05 0:00:00,0",0, 56));
		String testString = "Import-ED3601T_TBL.sql";
		System.out.println(Substrings(testString, testString.indexOf("."), testString.length()));
		System.out.println(Substrings(testString, 0, testString.indexOf(".")));
		String str = "helloHH24:MI:SS.ffhow are youHH24:MI:SS.ff";
		System.out.println(str.replace("HH24:MI:SS.ff", "HH24:MI:SS"));*/
		String str = "NJD.ED3712T_TBL.csv";
		System.out.println(str.substring(0, str.lastIndexOf(".")) + " - " + str.substring(str.lastIndexOf(".")));
		System.out.println(FormatDate("2018/07/26 10:01:33"));
		System.out.println(FormatDate("2018/07/26 10:01:33.301"));
		System.out.println(FormatDate("2018/07/26 10:01:33.288"));
		System.out.println(FormatDate("2018/07/26"));
	}
	public String FormatDate(String oldDate) {
		String oldTime = oldDate.indexOf(" ") > 0 ? oldDate.substring(oldDate.indexOf(" ")+1) : "00:00:00.000";
		oldDate = oldDate.length()>10? oldDate.substring(0, oldDate.indexOf(" ")): oldDate;
		System.out.print("Original date: " + oldDate);
		System.out.print(" Original time: " + oldTime);
		String newDate = "";

		oldDate = oldDate.trim();
		if (oldDate.contains("/")) {
			if (oldDate.indexOf('/') == 4) {												// if yyyy/mm/dd
				newDate = oldDate.subSequence(5, 10) + "/" + oldDate.subSequence(0, 4); 	//change to mm/dd/yyyy
			} else
				newDate = oldDate;
		}
		if (oldTime.length()>0) {
			if (oldTime.indexOf(".")<0) {
				oldTime = oldTime + ".000";
			}
			newDate = newDate + " " + oldTime;
		}
		System.out.print("\t New Date : ");
		return newDate;
	}
	public String Substrings(String testString, int start, int end) {
		return testString.substring(start, end);
	}
	public void testCSVToArray() {
		//CSVToList("");
		String [] columns = csvToArray("\"10000\",\"20190313001050\",\"00000000000001\",\"00000000013000\",\"3\",\"2\",\"001\",\"1\",,2019/02/01 0:00:00,2019/02/28 0:00:00,\"2?�?1?�?/?�?2?��度?��A?��S?��K?��ﾞ＊�?��ｼ?���?��料?�?\",\"【＊P?�?0?�?5?���?�＊ｵ?��ﾟ＊ｽ?�?'?��W?��l?�?2?��犯?��ﾒ�?\",0,\" ?�? ?�?\",0,4000,\"0\",\"1\",\"03\",0.08,320,4320,\"20190310042103\",\"515377912000000\",\"515377912000000\",\"000001\",,2019/04/26 0:00:00,4320,2019/05/08 0:00:00,0,0,,,,,2019/03/10,\"10000\",,\"ikouser\",,\"ISN013350551P01\",2019/05/08 13:44:39.595,\"10000\",,\"t0010101\",,\"ISN013350551P01\"");
		for (String column : columns)
			System.out.println(column);
		//System.out.println(0 % 2);
	}

	public String[] csvToArray(String CSVLine) {
		List<String> columns = new ArrayList<String>();
		int qouteCounterSingle = 0;
		int qouteCounterDouble = 0;
		String currentChar;
		String currentColValue = "";
		for (int index = 0; index < CSVLine.length(); index++) {
			currentChar = CSVLine.substring(index, index+1);
			if (currentChar.equals("\"")) {
				qouteCounterDouble++;
			}
			/*if (currentChar.equals("\'")) {
				qouteCounterSingle++;
			}*/
			if (currentChar.equals(",") || currentChar.equals("\t")) {
				if (qouteCounterDouble % 2 == 0 && qouteCounterSingle % 2 == 0) {
					columns.add(currentColValue);
					currentColValue = "";
					qouteCounterDouble = 0;
					qouteCounterSingle = 0;
					currentChar = "";
				}
			}
			if (columns.size() == 12) {
				System.out.println("aaa");
			}
			currentColValue = currentColValue + currentChar;

		}
		columns.add(currentColValue); // Add the last column
		return columns.toArray(new String[columns.size()]);

	}

	public void IndexTest() {

		String str = "aa bb cc";
		System.out.println(":" + str.substring(str.indexOf(" ") + 1) + ":");

		System.out.println(":" + str.substring(str.indexOf(" ") + 1, str.indexOf(" ", str.indexOf(" ") + 1)) + ":");

	}

	public void getColumnTest() {
		String colType = "Char10)";
		colType = colType.contains("(") ? colType.substring(0, colType.indexOf("(")) : colType;
		System.out.println(colType);
		getColumnInformation("	 KAISHA_CD  CHAR(5) NOT NULL --�u��ЃR�[�h�v");
		getColumnInformation("	,SEIKYUSHO_NO  CHAR(14) NOT NULL --�u�������ԍ��v");
	}

	public void getColumnInformation(String columnInfomation) {
		columnInfomation = columnInfomation.replace(",", "").trim();
		System.out.println("Column Name : " + getColumnName(columnInfomation));
		System.out.println("Column Type : " + getColumnType(columnInfomation));
		System.out.println("Column Allow Not Null : " + getColumnNotNull(columnInfomation));
		System.out.println("Column Japnese Name : " + getColumnJapaneseName(columnInfomation));
	}

	public String getColumnName(String columnInfomation) {
		return columnInfomation.substring(0, columnInfomation.indexOf(" "));
	}

	public String getColumnType(String columnInfomation) {
		columnInfomation = columnInfomation.substring(columnInfomation.indexOf(" ")).trim();
		columnInfomation = columnInfomation.substring(0, columnInfomation.indexOf(" "));
		return columnInfomation;
	}

	public boolean getColumnNotNull(String columnInfomation) {
		return columnInfomation.contains("NOT NULL");
	}

	public String getColumnJapaneseName(String columnInfomation) {
		return columnInfomation.substring(columnInfomation.indexOf("--") + 1);
	}
}
