package OOP;
import OOP.Inheritannce.*;

public class Main {

	public static void main(String[] args) {
		Animal dog = new Dog();
		Cat cat = new Cat();
		Dog cat2 = Animal();
/*		Animal cat = new Cat();
		Animal chicken = new Chicken();
	*/	
		System.out.println("Dog has " + dog.getNumberOfFeet() + " and produce a sound of " + dog.getSound());
		System.out.println("Cat has " + cat.getNumberOfFeet() + " and produce a sound of " + cat.getSound());
		
	}

}