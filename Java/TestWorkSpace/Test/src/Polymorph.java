
public class Polymorph {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Shape round = new Round();
		Shape square = new Square();
		round.Info();
		square.Info();		
	}
	public static void main(String args) {
		// TODO Auto-generated method stub
		Shape round = new Round();
		Shape square = new Square();
		round.Info();
		square.Info();		
	}
}

class Shape {
	int sides;
	public String iAm = "Shape";
	public void Info() {
		System.out.println("I am " + iAm + " with " + this.sides + " sides");
	}
}

class Round extends Shape {
	public Round() {
		this.sides = 1;
		//this.iAm = "Round";	
	}
	public void Info() {
		System.out.println("I am Round with " + this.sides + " sides");
	}
}

class Square extends Shape {
	
	public Square() {
		this.sides = 4;
		this.iAm = "Square";
	}
}
