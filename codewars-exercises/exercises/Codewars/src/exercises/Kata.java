package exercises;

public class Kata {
	public static int[] invert(int[] array) {
		for (int i = 0; i < array.length; i++) {
			array[i] = -(array[i]);
		}
		return array;
	}

	public static int[] digitize(long n) {
		return new StringBuilder().append(n).reverse().chars().map(Character::getNumericValue).toArray();
	}

	public static int[] digitizeDois(long n) {
		String s = String.valueOf(n);
		int length = s.length();
		int[] array = new int[length];
		for (int i = 0; i < length; i++) {
			array[i] = (int) (s.charAt(length - i - 1)) - 48;
		}
		return array;
	}

}