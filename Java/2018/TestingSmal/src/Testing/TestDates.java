package Testing;

public class TestDates {
	TestDates() {
		String dateYMD = "2019/01/31 0:00:00";
		dateYMD = "2019/01/31";
		dateYMD = "01/31/2019 ";
		System.out.println(toDateMDY(dateYMD));
	}

	public String toDateMDY(String dateYMD) {
		String dateMDY = "";
		dateYMD = dateYMD.trim();
		if (dateYMD.contains("/")) {
			if (dateYMD.indexOf('/') == 4) { // if yyyy/mm/dd
				dateMDY = dateYMD.subSequence(5, 9) + "/" + dateYMD.subSequence(0, 4); //change to mm/dd/yyyy
				if (dateYMD.length() > 10) {		// If time included
					dateMDY = dateMDY + dateYMD.substring(10);
				}
			} else
				dateMDY = dateYMD;
		}
		return dateMDY;
	}
}
