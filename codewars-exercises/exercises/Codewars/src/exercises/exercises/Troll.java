package exercises;

import java.util.Arrays;

public class Troll {
	public static String disemvowel(String str) {

		String[] arrayString = str.split("");

		for (int i = 0; i < arrayString.length; i++) {
			if (arrayString[i].toLowerCase().equals("a") || arrayString[i].toLowerCase().equals("e")
					|| arrayString[i].toLowerCase().equals("i") || arrayString[i].toLowerCase().equals("o")
					|| arrayString[i].toLowerCase().equals("u")) {
				arrayString[i] = "";
			}
		}

		System.out.println(Arrays.toString(arrayString));

		return String.join("", arrayString);

	}

	public static String disemvowel2(String Z) {
		return Z.replaceAll("(?i)[aeiou]", "");
	}

	public static String disemvowel3(String str) {
		return str.replaceAll("[aAeEiIoOuU]", "");
	}

	public static String disemvowel4(String str) {

		return str.replaceAll("(?i)[^aeiou]", "");

	}

}
