package exercises;

import java.util.Arrays;

public class Isogram {
	public static boolean isIsogram(String str) {
		str = str.toLowerCase();
		// str = str.toUpperCase();
		System.out.println(str.toLowerCase().chars().distinct().count());
		char[] ch = new char[str.length()];

		for (int i = 0; i < str.length(); i++) {
			ch[i] = str.charAt(i);
		}

		Arrays.sort(ch);
		for (int i = 0; i < ch.length - 1; i++) {
			int comp = Character.compare(ch[i], ch[i + 1]);
			if (comp == 0) {
				return false;
			}
		}
		return true;
	}

//	public static boolean isIsogram2(String str) {
//		return str.length() == str.toLowerCase().chars().distinct().count();
//	}

}
