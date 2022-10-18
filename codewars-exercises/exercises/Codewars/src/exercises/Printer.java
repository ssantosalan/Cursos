package exercises;

public class Printer {
	public static String printerError(String s) {

		char[] charToSearch = { 'n', 'o', 'p', 'r', 's', 't', 'u', 'v', 'x', 'y', 'w', 'z' };
		int cont = 0;
		for (int i = 0; i < s.length(); i++) {

			char ch = s.charAt(i);
			for (int j = 0; j < charToSearch.length; i++) {
				if (charToSearch[j] == ch) {
					cont++;
				}
			}
		}
		return "test";
	}
}
