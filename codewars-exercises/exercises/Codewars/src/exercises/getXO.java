package exercises;

public class getXO {
	public static boolean getXO(String str) {
		str = str.toLowerCase();

		int x = 0;
		int o = 0;
		for (char ch : str.toCharArray()) {

			if (0 == Character.compare(ch, 'x')) {
				x++;
			}
			if (0 == Character.compare(ch, 'o')) {
				o++;
			}
		}
		return x == o ? true : false;

	}

	public static boolean getXO2(String str) {
		str = str.toLowerCase();
		return str.replace("o", "").length() == str.replace("x", "").length();

	}

}
