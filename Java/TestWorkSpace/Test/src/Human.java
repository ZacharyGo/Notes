import java.util.Comparator;

public class Human {
	private String name;
    private int age;
    
	public Human() {
		super();
	}

	public Human(String name, int age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
    
	public static int compareByNameThenAge(Human lhs, Human rhs) {
	    if (lhs.name.equals(rhs.name)) {
	        return Integer.compare(lhs.age, rhs.age);
	    } else {
	        return lhs.name.compareTo(rhs.name);
	    }
	}
	
    
}
