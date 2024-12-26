
public class Exceptions {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String str = null;
		try {
			System.out.println(str.length());
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			System.out.println("NullPointerException had occurs");
		}
		//str="Hello World";
		try {
			System.out.println(Integer.parseInt(str));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			System.out.println("NumberFormatException had occurs");
		}
		Integer i= null;
		int[] numbers=new int[10];
		try {
			numbers[i] = 1;
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			System.out.println("NullPointerException had occurs");
		}
		
		
		

	}

}
