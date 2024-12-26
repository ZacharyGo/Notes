import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;



public class TestingMain {

	public static void main(String[] args) {
		/*InternalConstructor internalConstructor = new InternalConstructor();
		System.out.println(internalConstructor.name);*/
		SortList sortlist = new SortList();
		
		/*
		// TODO Auto-generated method stub
		OrdinaryClass ordinaryClass = new OrdinaryClass();
		ordinaryClass.firstProperty = "hello";
		updateProperty(ordinaryClass);
		System.out.println(ordinaryClass.firstProperty);
		TestMap tTestMap = new TestMap();
		tTestMap.test();
		
		List<Human> humans = new ArrayList<Human>();
		humans.add(new Human("Sarah", 10));
		humans.add(new Human("Jack", 12));
		//humans.sort(Human::compareByNameThenAge);
		Collections.sort(
			      humans, Comparator.comparing(Human::getName));
		Comparator<Human> comparator
		 = (final Human h1, final Human h2) -> h1.getName().compareTo(h2.getName());
		 for (Human human: humans) {
				System.out.println(human.getName() + human.getAge());
			}
		 
		 //List<Human> humans3 = humans.(h1, h2) -> h1.getName().compareTo(h2.getName());
		for (Human human: humans) {
			System.out.println(human.getName() + human.getAge());
		}
		
		Comparator<Human> comparator2
	      = (h1, h2) -> h1.getName().compareTo(h2.getName());
	      
		humans.sort(comparator.reversed());

		for (Human human: humans) {
			System.out.println(human.getName() + human.getAge());
		}
		*/
	}
	
	public static void updateProperty(OrdinaryClass ordinaryClass) {
		ordinaryClass.firstProperty = "Updated";
	}

}
