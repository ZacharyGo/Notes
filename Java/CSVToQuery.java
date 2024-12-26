package com.jdu.alsok.csvquery;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

public class Application {

	public static void main(String[] args) {
		Application app = new Application();

		if(args.length == 0) {
			System.out.println("------ Please specify the csv file -------");
			return;
		}

		app.start(args[0], "conditions.txt");
	}

	private void start(String csvFile, String conditionFile) {
		try (InputStream inputStream = new FileInputStream(csvFile);
				BufferedReader bufferedReader = new BufferedReader(
						new InputStreamReader(inputStream, StandardCharsets.UTF_8));

				OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream("output.csv"),
						StandardCharsets.UTF_8);
				PrintWriter printWriter = new PrintWriter(new BufferedWriter(outputStreamWriter));
				Stream<String> linesStream = bufferedReader.lines();) {

			String header = bufferedReader.readLine();
			List<String> headers = Arrays.asList(header.replaceAll("\"", "").split(","));
			headers.forEach(System.out::println);

			Map<String, String> conditionMap = parseConditions(conditionFile);

			// Write header
			System.out.println("--------------- Writing the hearder  ------------------");
			printWriter.println(header);

			System.out.println("------------- Start checking each row  ----------------");

			linesStream.forEach(row -> {
				String[] columns = row.split(",");
				boolean match = conditionMap.entrySet().stream().filter(condition -> {
					int index = headers.indexOf(condition.getKey());

					if(index < 0 || index > columns.length) {
						System.out.println("------------ Column not found: " + condition.getKey());
						System.exit(1);
					}

					if (!condition.getValue().equals(columns[index].replace("\"", ""))) {
						return true;
					} else {
						return false;
					}

				}).count() == 0;

				if(match) {
					printWriter.println(row);
				}


			});
			System.out.println("-------------------  Completed  ------------------------");

		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private Map<String, String> parseConditions(String conditionFile) {
		Map<String, String> conditionMap = new HashMap<>();
		try (InputStream inputStream = new FileInputStream(conditionFile);
				BufferedReader bufferedReader = new BufferedReader(
						new InputStreamReader(inputStream, StandardCharsets.UTF_8));
				Stream<String> linesStream = bufferedReader.lines();
			) {

			linesStream.forEach(line -> {
				String[] cond = line.split("=");
				conditionMap.put(cond[0], cond[1]);
			});


		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return conditionMap;
	}

}
