import java.io.File;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Paths;

public class Test {
	public static void Test() {
		System.out.println("Working Directory = " + System.getProperty("user.dir"));
		String userDirectory = System.getProperty("user.dir");
        System.out.println(userDirectory);
        userDirectory = Paths.get("")
                .toAbsolutePath()
                .toString();
        System.out.println(userDirectory);
    
        userDirectory = new File("").getAbsolutePath();
        System.out.println(userDirectory);
    
        userDirectory = FileSystems.getDefault()
                .getPath("")
                .toAbsolutePath()
                .toString();
        System.out.println(userDirectory);
        try {
            File myObj = new File("filename.txt");
            if (myObj.createNewFile()) {
              System.out.println("File created: " + myObj.getName());
            } else {
              System.out.println("File already exists.");
            }
          } catch (IOException e) {
            System.out.println("An error occurred.");
            e.printStackTrace();
          }
	}
}
