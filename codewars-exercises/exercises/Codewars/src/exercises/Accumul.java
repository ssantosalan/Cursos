package exercises;

public class Accumul {
	public static String accum(String s) {
		String[] array = s.toUpperCase().split("");

		for (int i = 0; i < array.length; i++) {

			array[i] += array[i].repeat(i).toLowerCase();

		}

		return String.join("-", array);
	}
}
