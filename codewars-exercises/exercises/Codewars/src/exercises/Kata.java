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

	public static String highAndLow(String numbers) {
		String[] strNumbers = numbers.split(" ");

		String max = strNumbers[0];
		int maxInt = Integer.parseInt(max);
		String min = strNumbers[0];
		int minInt = Integer.parseInt(min);

		for (int i = 0; i < strNumbers.length; i++) {

			if (Integer.parseInt(strNumbers[i]) > maxInt) {
				max = strNumbers[i];
				maxInt = Integer.parseInt(strNumbers[i]);
			}

			if (Integer.parseInt(strNumbers[i]) < minInt) {
				min = strNumbers[i];
				minInt = Integer.parseInt(strNumbers[i]);
			}

		}

		return max + " " + min;
	}

	public static String binaryAddition(int a, int b) {
		return Integer.toBinaryString(a + b);
	}

	public static double getVolumeOfCuboid(final double length, final double width, final double height) {
		return length * width * height;
	}

	public static int makeNegative(final int x) {
		return x > 0 ? -(x) : x;
	}

}