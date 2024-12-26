import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class TestMap {
	public void test() {
		List<String> data = new ArrayList<String>();
		data.add("Alice");
		data.add("Alexa");
		data.add("Ben");
		data.add("Alice");
		Map<Object, List<String>> mapObj=data.stream().collect(Collectors.groupingBy(names->names));
		System.out.println(mapObj);
		
		List<TableRecord> tableList= new ArrayList<>();
		
		tableList.stream().forEach(tableList2-> {tableList2.column1 = "z";});
		System.out.println("hello");
		
		
		TableRecord tableRec = new TableRecord();
		tableRec.column1 = "a";
		tableRec.column2 = "1";
		tableRec.value = "a1";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "b";
		tableRec.column2 = "1";
		tableRec.value = "b1";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "a";
		tableRec.column2 = "2";
		tableRec.value = "a2";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "b";
		tableRec.column2 = "2";
		tableRec.value = "b2";
		tableList.add(tableRec);
		for(TableRecord tableRecord: tableList) {
			System.out.println(tableRecord.column1 + ", " + tableRecord.column2 + " = " + tableRecord.value );
		}
		Map<String, List<TableRecord>> level1 = new LinkedHashMap<>();
		level1.put("First", tableList);
		
		tableRec = new TableRecord();
		tableRec.column1 = "c";
		tableRec.column2 = "1";
		tableRec.value = "c1";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "d";
		tableRec.column2 = "1";
		tableRec.value = "d1";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "c";
		tableRec.column2 = "2";
		tableRec.value = "c2";
		tableList.add(tableRec);
		tableRec = new TableRecord();
		tableRec.column1 = "d";
		tableRec.column2 = "2";
		tableRec.value = "d2";
		tableList.add(tableRec);
		level1.put("Second", tableList);
		
		Map<String, Map<String, List<TableRecord>>> table = new LinkedHashMap<>();
		table.put("Top",level1);
		System.out.println(table.get(tableRec.getColumn1()));
		//..stream().collect(Collectors.groupingBy(p1->p1.get("First"))); 
		
		//System.out.println(
				//tableList.stream().forEach(tableList2-> {tableList2.setColumn1 = "z";});
		
				//System.out.println(level1.get(1).isEmpty());
	}
}
