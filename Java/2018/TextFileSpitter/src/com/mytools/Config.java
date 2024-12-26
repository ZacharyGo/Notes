package com.mytools;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class Config {
	Map<String, String> configInfo = new HashMap<String, String>();

	public boolean getConfig(String[] args) {
		if (readArguments(args)) {
			System.out.println("Configuration information retreive from arguments passed");
			return true;
		}
		try {
			if (readConfig()) {
				System.out.println("Configuration information retreive from Config.sys");
				return true;
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		System.out.println("Failed to read configuration information");
		return false;
	}

	public boolean readArguments(String[] args) {
		if (args.length==0) {
			return false;
		}
		for(String configValue : args) {
			if( setConfigValues(configValue)) {
				System.out.println(configValue);
			} else {
				System.out.println(" in arguments");
			}
		}
		return true;
	}

	public boolean readConfig() throws IOException {

		File file = new File("Config.sys");

		BufferedReader bufferedReader;
		try {
			bufferedReader = new BufferedReader(new FileReader(file));
			String configValue;
			try {
				while ((configValue = bufferedReader.readLine()) != null) {
					if( setConfigValues(configValue)) {
						System.out.println(configValue);
					} else {
						System.out.println(" in Config.sys");
					}
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				bufferedReader.close();
				return false;
			}
		} catch (FileNotFoundException e) {
			System.out.println("Configuration file (Config.sys) not found");
			return false;
		} catch (Exception e) {
			System.out.println("Errr reading Config.sys : " + e.getMessage());
			return false;
		}
		bufferedReader.close();
		return true;
	}

	public boolean setConfigValues(String configValue) {
		String delimiter;
		if (configValue.contains("=")) {
			delimiter = "=";
		} else if (configValue.contains(":")) {
			delimiter = ":";
		} else {
			System.out.print("Unknown settings : " + configValue);
			return false;
		}
		String[] configKeyPair = configValue.toLowerCase().split(delimiter);
		configInfo.put(configKeyPair[0], configKeyPair[1]);
		return true;
	}

	public String getConfigValues(String configKey) {
		return configInfo.get(configKey.toLowerCase());
	}
}
