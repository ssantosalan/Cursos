package exercises;

public class Codewars {
	public static int strCount(String str, char letter) {
		return str.replaceAll("[^"+letter+"]", "").length();
	}
}

// public static int strCount(String str, char letter) {
// 	return str.replaceAll("[^"+letter+"]", "").length();
// }
