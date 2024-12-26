import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Scanner;

public class ReadTextFile {
	public static String filename = "ED0517T_TBL.sql";
	
	public static void BufferedReaderType() {
		// File path is passed as parameter
        File file = new File(filename);
 
        // Note:  Double backquote is to avoid compiler
        // interpret words
        // like \test as \t (ie. as a escape sequence)
 
        // Creating an object of BufferedReader class
        BufferedReader br;
		try {
			br = new BufferedReader(new FileReader(file));
	        String st;
	        // Condition holds true till
	        // there is character in a string
	        try {
				while ((st = br.readLine()) != null)
 
				    // Print the string
				    System.out.println(st);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	

		} catch (FileNotFoundException e) {
			System.out.println("File :" + filename + " not found");
		}
 
        // Declaring a string variable

	}
	public static void FileReaderType() {
		// Passing the path to the file as a parameter
        FileReader fr;
		try {
			fr = new FileReader(filename);
			try {
				// Declaring loop variable
		        int i;
		        // Holds true till there is nothing to read
				while ((i = fr.read()) != -1)
	 
				    // Print all the content of a file
				    System.out.print((char)i);
				System.out.println();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			System.out.println("File :" + filename + " not found");
		}
	}
	public static void ScannerType() {
		// pass the path to the file as a parameter
	    File file = new File(filename);
	    
	    try {
			Scanner sc = new Scanner(file);
 
			while (sc.hasNextLine())
			  System.out.println(sc.nextLine());
		} catch (FileNotFoundException e) {
			System.out.println("File :" + filename + " not found");
		}
	}
}
