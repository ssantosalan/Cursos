package exercises;

import java.util.Arrays;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Solution {

	public static boolean check(Object[] a, Object x) {
		return Arrays.asList(a).contains(x);
	}

	public static String repeatStr(final int repeat, final String string) {
		String s = "";
		for (int i = 0; i < repeat; i++) {
			s = s.concat(string);
		}
		return s;
	}

	public static boolean validatePin(String pin) {

		if (pin.matches("^(?=([\\D]?\\d){10,13}$)(?!.*--)(?!\\+-)\\+?[-0-9]*")) {
			return false;
		}

		for (int i = 0; i < pin.length(); i++) {

			if (Character.isLetter(pin.charAt(i))) {
				return false;
			}

			if (Character.isAlphabetic(pin.charAt(i))) {
				return false;
			}

			if (Character.isDigit(i)) {
				return false; // --
			}

			if (pin.charAt(i) == '$' || pin.charAt(i) == '*' || pin.charAt(i) == ' ' || pin.charAt(i) == '\"'
					|| pin.charAt(i) == '!' || pin.charAt(i) == ',' || pin.charAt(i) == ';' || pin.charAt(i) == '.'
					|| pin.charAt(i) == '?' || pin.charAt(i) == '-' || pin.charAt(i) == '\'' || pin.charAt(i) == '\"'
					|| pin.charAt(i) == ':') {
				return false;
			}
		}

		return pin.length() == 4 || pin.length() == 6;
	}

	public static boolean validatePin2(String pin) {
		if (pin.length() != 4 || pin.length() != 6)
			return false;

		for (int i = 0; i < pin.length(); i++) {
			if (!Character.isDigit(pin.charAt(i))) {
				return false;
			}
		}

		return true;

	}

	public static String whoLikesIt(String... names) {
		if (names.length == 0) {
			return "no one likes this";
		}

		int total = names.length;

		if (total == 1) {
			return names[0] + " likes this";
		}

		if (total == 2) {
			return names[0] + " and " + names[1] + " like this";
		}

		if (total == 3) {
			return names[0] + ", " + names[1] + " and " + names[2] + " like this";
		}

		if (total >= 4) {
			return names[0] + ", " + names[1] + " and " + (total - 2) + " others like this";
		}

		return "";

	}

	public static String whoLikesIt2(String... names) {
		switch (names.length) {
		case 0:
			return "no one likes this";
		case 1:
			return String.format("%s likes this", names[0]);
		case 2:
			return String.format("%s and %s like this", names[0], names[1]);
		case 3:
			return String.format("%s, %s and %s like this", names[0], names[1], names[2]);
		default:
			return String.format("%s, %s and %d others like this", names[0], names[1], names.length - 2);
		}
	}

	// public static boolean validatePin2(String pin) {
	// 	if (pin.length() != 4 || pin.length() != 6)
	// 		return false;

	// 	for (int i = 0; i < pin.length(); i++) {
	// 		if (!Character.isDigit(pin.charAt(i))) {
	// 			return false;
	// 		}
	// 	}

	// 	return true;

	// }

	static int stray(int[] numbers) {
		Arrays.sort(numbers);
		System.out.println(Arrays.toString(numbers));
		int length = numbers.length;

		if (numbers[0] != numbers[1]) {
			return numbers[0];
		}

		if (numbers[length - 1] != numbers[length - 2]) {
			return numbers[length - 1];
		}

		for (int i = 0; i < numbers.length; i++) {

			if (numbers[i] != numbers[i + 1]) {
				return numbers[i + 1];
			}

		}

		return 0;
	}

	public static String camelCase(String input) {
		if (input.equals("")) {
			return "";
		}

		return Stream.of(input.split("")).map(e -> e == e.toUpperCase() ? " " + e : e).collect(Collectors.joining(""))
				.trim();
	}

	public static String camelCase2(String input) {
		return input.replaceAll("([A-Z])", " $1").trim();
	}

	public static String doubleChar(String s) {
		return Stream.of(s.split("")).map(i -> i + i).collect(Collectors.joining(""));
	}

	public static String correct(String string) {
		string = string.replaceAll("[5]", "S");
		string = string.replaceAll("[0]", "O");
		string = string.replaceAll("[1]", "I");
		return string;
	}

	// public static String camelCase2(String input) {
	// 	return input.replaceAll("([A-Z])", " $1").trim();
	// }

	// public static boolean validatePin(String pin) {

	// 	if (pin.matches("^(?=([\\D]?\\d){10,13}$)(?!.*--)(?!\\+-)\\+?[-0-9]*")) {
	// 		return false;
	// 	}

	// 	for (int i = 0; i < pin.length(); i++) {

	// 		if (Character.isLetter(pin.charAt(i))) {
	// 			return false;
	// 		}

	// 		if (Character.isAlphabetic(pin.charAt(i))) {
	// 			return false;
	// 		}

	// 		if (Character.isDigit(i)) {
	// 			return false; // --
	// 		}

	// 		if (pin.charAt(i) == '$' || pin.charAt(i) == '*' || pin.charAt(i) == ' ' || pin.charAt(i) == '\"'
	// 				|| pin.charAt(i) == '!' || pin.charAt(i) == ',' || pin.charAt(i) == ';' || pin.charAt(i) == '.'
	// 				|| pin.charAt(i) == '?' || pin.charAt(i) == '-' || pin.charAt(i) == '\'' || pin.charAt(i) == '\"'
	// 				|| pin.charAt(i) == ':') {
	// 			return false;
	// 		}
	// 	}

	// 	return pin.length() == 4 || pin.length() == 6;
	// }

	// public static boolean check(Object[] a, Object x) {
	// 	return Arrays.asList(a).contains(x);
	// }

}
