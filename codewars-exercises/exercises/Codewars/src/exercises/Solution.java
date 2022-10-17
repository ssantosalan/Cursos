package exercises;

import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

}
