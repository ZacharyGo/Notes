package duke.choice;

public class ShopApp {

	public static void main(String[] args) {
		double tax = 0.2; // tax
		Clothing item1;
		Clothing item2;
		double total; //total amount a customer needs 
		
		System.out.println("Welcome to Duke Choice Shop!");
		item1 = new Clothing();
		item2 = new Clothing();
		item1.description = "Blue Jacket";
		item1.price = 20.9;
		item1.size = "M";
		
		item2.description = "Orange T-Shirt";
		item2.price = 10.5;
		item2.size = "S";
		
		System.out.println(item1.description + "," + item1.price + "," + item1.size);
		System.out.println(item2.description + "," + item2.price + "," + item2.size);
		System.out.println(item2.description + "," + item2.price + "," + item2.size);
		
		total = item2.price * 2 + item1.price;
		
		System.out.println("              total:" + String.format("%.2f", total));
		System.out.println("total including tax:" + String.format("%.2f", (total + (total * tax))));
		
	}

}
