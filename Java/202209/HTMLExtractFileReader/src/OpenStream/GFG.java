package OpenStream;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.net.URL;

public class GFG {

	public static void main(String[] args) throws FileNotFoundException {
		// Try block to check exceptions
        try {
            String val;
 
            // Constructing the URL connection
            // by defining the URL constructors
            URL URL = new URL(
            		"file:///D:/Practice/Java/202209/HTMLExtractFileReader/operationDetail_0.html");
 
            // Reading the HTML content from the .HTML File
            BufferedReader br = new BufferedReader(
                new InputStreamReader(URL.openStream()));
 
            /* Catching the string and  if found any null
             character break the String */
            while ((val = br.readLine()) != null) {
                System.out.println(val);
            }
 
            // Closing the file
            br.close();
        }
 
        // Catch block to handle exceptions
        catch (Exception ex) {
 
            // No file found
            System.out.println(ex.getMessage());
        }
	}

}
