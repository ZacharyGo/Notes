import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class SortList {

	private List<Country> countries = new ArrayList<Country>();
	
	public SortList() {
		countries.add(new Country(5,"Ch", "China",""));
		countries.add(new Country(4,"US", "United State","Dictator Country"));
		countries.add(new Country(2,"Jp", "Japan","Rising Sun"));
		countries.add(new Country(1,"Ph", "Philippines","Pearl of the Orient"));
		List<Country> countriesSorted = SortObject("Code");
		for(Country country1: countriesSorted) {
			System.out.println("ID:" + country1.getId() + ", Code:" + country1.getCode() + ", Name:" + country1.getName() + ", Description: " + country1.getDescription());
		}
		
	}

	public List<Country> SortObject(String sortCol) {
		switch (sortCol) {
			case "Id":
				Collections.sort(countries, (a, b) -> ((int)(a.getId() - b.getId())));
				break;
			case "Name":
				Collections.sort(countries, (a, b) -> (a.getDescription()).compareTo(b.getDescription()));
				break;
			case "Description":
				Collections.sort(countries, (a, b) -> (a.getName()).compareTo(b.getName()));
				break;
			case "Code":
				Collections.sort(countries, (a, b) -> (a.getCode()).compareTo(b.getCode()));
				break;
		}
		
		return countries;
	}
}

class Country implements Comparable<Country>{
	
	private long id;
	private String code;
	private String name;
	private String description;
	
	public Country(long id, String code, String name, String description) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.description = description;
	}

	@Override
	public int compareTo(Country o) {
		
		return (int)(this.getId() - o.getId());
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}