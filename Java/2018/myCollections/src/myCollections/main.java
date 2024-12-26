package myCollections;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.stream.Collectors;

public class main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*List <MyClass> myClasses = Initialize();
		MapGroupBy(myClasses);*/
		ListClassList();


	}

	public static void ListClassList() {
		List<ClassList> classLists = new ArrayList<ClassList>();
		ClassList classList = new ClassList();
		List<String> details = new ArrayList<String>();

		//------------------------
		details.add("A1");
		details.add("A2");
		details.add("A3");
		details.add("A4");
		details.add("A5");
		classList.setName("1");
		classList.setDescription("First");
		classList.setDetails(details);
		classLists.add(classList);
		//------------------------
		details.add("B1");
		details.add("B2");
		details.add("B3");
		details.add("B4");
		details.add("B5");
		classList.setName("2");
		classList.setDescription("Second");
		classList.setDetails(details);
		classLists.add(classList);
		//------------------------
		details.add("C1");
		details.add("C2");
		details.add("C3");
		details.add("C4");
		details.add("C5");
		classList.setName("3");
		classList.setDescription("Third");
		classList.setDetails(details);
		classLists.add(classList);
		for (ClassList myClassList:classLists) {
			System.out.print("Name : " + myClassList.getName());
			System.out.print("Description : " + myClassList.getDescription());
			for (String myDetails : myClassList.details) {
				System.out.println(myDetails);
			}
		}


	}
	public static List <MyClass> Initialize() {
		List <MyClass> myClasses = new ArrayList <MyClass>();
		MyClass myClass = new MyClass();
		myClass.setName("One");
		myClass.setAge(1);
		myClass.setPosition("First");
		myClasses.add(myClass);
		myClass = new MyClass();
		myClass.setName("Two");
		myClass.setAge(2);
		myClass.setPosition("Second");
		myClasses.add(myClass);
		myClass.setName("Two2");
		myClass.setAge(22);
		myClass.setPosition("Second");
		myClasses.add(myClass);
		myClass = new MyClass();
		myClass.setName("Three");
		myClass.setAge(3);
		myClass.setPosition("Third");
		myClasses.add(myClass);
		myClass.setName("Three2");
		myClass.setAge(32);
		myClass.setPosition("Third");
		myClasses.add(myClass);
		return myClasses;
	}

	public static void MapGroupBy(List <MyClass> myClasses) {
		Map <String, List<MyClass>> myMap = myClasses.stream().collect(Collectors.groupingBy(s -> s.getPosition()));

		for (Entry<String, List<MyClass>> myMapDetail: myMap.entrySet()) {
			for (MyClass MyMlass:myMapDetail.getValue()) {
				System.out.println(MyMlass.getClass());
				System.out.println(MyMlass.getName());
				System.out.println(MyMlass.getAge());
				System.out.println(MyMlass.getPosition());

			}
			System.out.println("-------------------------");
//			System.out.println(myMapDetail.getValue().getClass());
//			System.out.println(myMapDetail.getValue().get(0).getName());
//			System.out.println(myMapDetail.getValue().get(0).getAge());
//			System.out.println(myMapDetail.getValue().get(0).getPosition());
		}
	}

	public static void ComparatorComparing() {

	}
}
