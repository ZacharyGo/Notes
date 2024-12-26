import java.io.File;
import java.nio.file.FileSystems;
import java.nio.file.Paths;

public class FilesUtil {
	private String userDirectory;
	/* Get curret working folder */
	public void GetCurrentDirectorySystem() {
		System.out.println("Working Directory = " + System.getProperty("user.dir"));
		userDirectory = System.getProperty("user.dir");
        System.out.println(userDirectory);
        userDirectory = Paths.get("")
                .toAbsolutePath()
                .toString();
        System.out.println(userDirectory);
	}
	
	public void GetCurrentDirectoryFile() {
		userDirectory = new File("").getAbsolutePath();
        System.out.println(userDirectory);
	}
	
	public void GetCurrentDirectoryFileSystems() {
		userDirectory = FileSystems.getDefault()
                .getPath("")
                .toAbsolutePath()
                .toString();
        System.out.println(userDirectory);
	}
}
