package exercises;

import java.util.Arrays;
import java.util.stream.Stream;

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

	public static int squareSum(int[] n) {
		int soma = 0;
		for (int i = 0; i < n.length; i++) {
			n[i] = n[i] * n[i];
			soma += n[i];
		}
		return soma;
	}

	public static int squareSum2(int[] xs) {
		return Arrays.stream(xs).map(x -> x * x).sum();
	}

	public static int squareSum3(int[] xs) {
		return Arrays.stream(xs).reduce(0, (acc, number) -> acc + number * number);
	}

	public static String getMiddle(String word) {
		char[] letter = word.toCharArray();
		int length = letter.length;

		if (length == 1) {
			return "" + letter[0];
		}

		if (length % 2 == 0) {
			return letter[(length / 2) - 1] + "" + letter[(length / 2 + 1) - 1];
		}

		return "" + letter[length / 2];
	}

}