package com.fujitsu.ph.junit.exercises;

/**
 * Converts the given number to its equivalent text format
 * 
 * e.g. 245 = two hundred forty five 8500 = eight thousand five hundred
 * 
 * exception cases: - input less than 0 and over 9999
 *
 */
public class NumberToText {

	public String convertNumberToWords(int number) {
		if (number < 0 || number >= 9999) {
			return "Out of range";
		} else {
			if (number == 0) {
				return "zero";
			} else {
				int thousands = number / 1000;
				int hundreds = (number - (thousands * 1000)) / 100;
				int tens = (number - (thousands * 1000) - (hundreds * 100));
				return getThousands(thousands) + getHundreds(hundreds) + getTens(tens);
			}
		}
	}

	private String getThousands(int thousands) {
		String thousandsStr = "";
		switch (thousands) {

		case 1:
			thousandsStr = "One";
			break;
		case 2:
			thousandsStr = "Two";
			break;
		case 3:
			thousandsStr = "Three";
			break;
		case 4:
			thousandsStr = "Four";
			break;
		case 5:
			thousandsStr = "Five";
			break;
		case 6:
			thousandsStr = "Six";
			break;
		case 7:
			thousandsStr = "Seven";
			break;
		case 8:
			thousandsStr = "Eight";
			break;
		case 9:
			thousandsStr = "Nine";
			break;
		}

		if (thousandsStr.length() > 0)
			thousandsStr += " Thousand ";

		return thousandsStr;
	}

	private String getHundreds(int hundreds) {
		String hundredsStr = "";
		switch (hundreds) {

		case 1:
			hundredsStr = "One";
			break;
		case 2:
			hundredsStr = "Two";
			break;
		case 3:
			hundredsStr = "Three";
			break;
		case 4:
			hundredsStr = "Four";
			break;
		case 5:
			hundredsStr = "Five";
			break;
		case 6:
			hundredsStr = "Six";
			break;
		case 7:
			hundredsStr = "Seven";
			break;
		case 8:
			hundredsStr = "Eight";
			break;
		case 9:
			hundredsStr = "Nine";
			break;
		}

		if (hundredsStr.length() > 0)
			hundredsStr += " Hundred ";

		return hundredsStr;
	}

	private String getTens(int tens) {
		String tensStr = "";

		if (tens / 10 == 1) {
			switch (tens) {

			case 10:
				tensStr = "Ten";
				break;
			case 11:
				tensStr = "Eleven";
				break;

			case 12:
				tensStr = "Twelve";
				break;
			case 13:
				tensStr = "Thirteen";
				break;
			case 14:
				tensStr = "Fourteen";
				break;
			case 15:
				tensStr = "Fifteen";
				break;
			case 16:
				tensStr = "Sixteen";
				break;
			case 17:
				tensStr = "Seventeen";
				break;
			case 18:
				tensStr = "Eighteen";
				break;
			case 19:
				tensStr = "Nineteen";
				break;
			}

		} else {

			int tensNum = tens / 10;
			int ones = tens - (tensNum * 10);

			switch (tensNum) {
			case 2:
				tensStr = "Twenty";
				break;
			case 3:
				tensStr = "Thirty";
				break;
			case 4:
				tensStr = "Forty";
				break;
			case 5:
				tensStr = "Fifty";
				break;
			case 6:
				tensStr = "Sixty";
				break;
			case 7:
				tensStr = "Seventy";
				break;
			case 8:
				tensStr = "Eighty";
				break;
			case 9:
				tensStr = "Ninety";
				break;
			}

			if (tensStr.length() > 0)
				tensStr += " ";

			switch (ones) {

			case 1:
				tensStr += "One";
				break;
			case 2:
				tensStr += "Two";
				break;
			case 3:
				tensStr += "Three";
				break;
			case 4:
				tensStr += "Four";
				break;
			case 5:
				tensStr += "Five";
				break;
			case 6:
				tensStr += "Six";
				break;
			case 7:
				tensStr += "Seven";
				break;
			case 8:
				tensStr += "Eight";
				break;
			case 9:
				tensStr += "Nine";
				break;
			}
		}
		return tensStr;
	}

}
