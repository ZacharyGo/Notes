package OOP.Inheritannce;

public class Animal {

	private int NumberOfFeet;
	private String sound;
	public Animal(int numberOfFeet, String sound) {
		super();
		NumberOfFeet = numberOfFeet;
		this.sound = sound;
	}
	public int getNumberOfFeet() {
		return NumberOfFeet;
	}
	public void setNumberOfFeet(int numberOfFeet) {
		NumberOfFeet = numberOfFeet;
	}
	public String getSound() {
		return sound;
	}
	public void setSound(String sound) {
		this.sound = sound;
	}
	
	
}
