package exercises;

import java.util.Arrays;

public class DuplicateEncoder {
	static String encode(String word) {
		String[] chars = word.toLowerCase().split("");
		boolean isEqual = false;

		for (int i = 0; i < chars.length; i++) {

			if (chars[i].equals("(")) {
				chars[i] = "a";
			}

			if (chars[i].equals(")")) {
				chars[i] = "b";
			}

		}

		System.out.println(Arrays.toString(chars));

		for (int i = 0; i < chars.length; i++) {

			for (int j = 1; j < chars.length; j++) {

				if (chars[i].equals(chars[j]) && i != j) {
					chars[j] = ")";
					isEqual = true;
				}

			}

			if (isEqual == true) {
				chars[i] = ")";
			} else if (chars[i] != ")") {
				chars[i] = "(";
			}

			isEqual = false;
		}

		return String.join("", chars);
	}

	static String encode2(String word) {
		word = word.toLowerCase();
		String result = "";
		for (int i = 0; i < word.length(); ++i) {
			char c = word.charAt(i);
			result += word.lastIndexOf(c) == word.indexOf(c) ? "(" : ")";
		}
		return result;
	}

}
