package FileIO;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.stream.Stream;

public class TestFileIO {

	public static void main(String[] args) {
		String textFile = "C:\\Temp\\ED3601T_TBL.csv";
		if (!bufferReaderInputStreamReader(textFile)) {
			System.out.println("Failed Buffer Reader Input Stream Reader");
		}
		if (!bufferReaderFileReader(textFile)) {
			System.out.println("Failed Buffer Reader File Reader");
		}

	}

	public static boolean bufferReaderFileReader(String textFile) {
		BufferedReader bufferedReader;
		String line;
		try {
			bufferedReader = new BufferedReader(new FileReader(textFile));
			try {
				int outputSize = 0;
				int numRows = 0;
				boolean startWriting=false;
				while ((line = bufferedReader.readLine()) != null && numRows<5) {
					if (line.length()>56 && line.substring(0, 56).equals("\"10000\",20211029003878,\"1\",2021/10/29 0:00:00,\"20\",40920")) {
						startWriting = true;
					}
					if (startWriting) {
						System.out.println(":::" + line);
						numRows++;
					}

				}
				System.out.println("Total lines  : " + numRows);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}


		return true;
	}

	public static boolean bufferReaderInputStreamReader(String textFile) {
		try (InputStream inputStream = new FileInputStream(textFile);
				BufferedReader bufferedReader = new BufferedReader(
						new InputStreamReader(inputStream, StandardCharsets.UTF_8));

				// OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new
				// FileOutputStream("output_" + textFile),
				// StandardCharsets.UTF_8);
				// PrintWriter printWriter = new PrintWriter(new
				// BufferedWriter(outputStreamWriter));
				Stream<String> linesStream = bufferedReader.lines();) {

			Test test = new Test();
			linesStream.forEach(row -> {
				if (row.length()>56 && row.substring(0, 56).equals("\"10000\",20211029003878,\"1\",2021/10/29 0:00:00,\"20\",40920")) {
					test.startShowing = true;
				}
				if (test.startShowing && test.numOFLines<5) {
					System.out.println(":::" + row);
					test.numOFLines++;
				}
				
			});
			System.out.println("Buffer Reader Input Stream Reader lines : " + test.numOFLines);
		} catch (FileNotFoundException e) {
//			 TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		return true;
	}

}

class Test {
	boolean startShowing = false;
	int numOFLines = 0;
}
