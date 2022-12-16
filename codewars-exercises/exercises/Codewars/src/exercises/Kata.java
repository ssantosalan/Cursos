package exercises;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.PrimitiveIterator.OfInt;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
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

	public static int opposite(int number) {
		return -number;
	}

	public static int[] sortArray(int[] array) {
		List<Integer> oddNumbers = new ArrayList<>();

		for (int i = 0; i < array.length; i++) {

			if (array[i] % 2 == 1) {
				oddNumbers.add(array[i]);
			}

		}
		Collections.sort(oddNumbers);

		int count = 0;

		for (int i = 0; i < array.length; i++) {

			if (array[i] % 2 == 1) {
				array[i] = oddNumbers.get(count);
				count++;
			}

		}

		return array;
	}

	public static int[] sortArray2(int[] array) {
		List<Integer> oddNumbers = new ArrayList<>();
		List<Integer> leftovers = new ArrayList<>();
		List<Integer> list = new ArrayList<>();

		for (int i = 0; i < array.length; i++) {
			if (array[i] % 2 == 0) {
				leftovers.add(array[i]);
			} else {
				oddNumbers.add(array[i]);
			}

		}

		Collections.sort(oddNumbers);

		for (int i = 0; i < oddNumbers.size(); i++) {
			list.add(oddNumbers.get(i));
		}

		for (int i = 0; i < leftovers.size(); i++) {
			list.add(leftovers.get(i));
		}

		for (int i = 0; i < array.length; i++) {
			array[i] = list.get(i);
		}

		return array;
	}

	public static int[] sortArray3(final int[] array) {

		// Sort the odd numbers only
		final int[] sortedOdd = Arrays.stream(array).filter(e -> e % 2 == 1).sorted().toArray();

		// Then merge them back into original array
		for (int j = 0, s = 0; j < array.length; j++) {
			if (array[j] % 2 == 1)
				array[j] = sortedOdd[s++];
		}

		return array;
	}

	public static int[] sortArray4(int[] array) {
		OfInt sortedOdds = IntStream.of(array).filter(i -> i % 2 == 1).sorted().iterator();

		return IntStream.of(array).map(i -> i % 2 == 0 ? i : sortedOdds.nextInt()).toArray();
	}

	public static String numberToString(int num) {
		return String.valueOf(num);
	}

	public static String switchItUp(int number) {

		switch (number) {
		case 0:
			return "Zero";
		case 1:
			return "One";
		case 2:
			return "Two";
		case 3:
			return "Three";
		case 4:
			return "Four";
		case 5:
			return "Five";
		case 6:
			return "Six";
		case 7:
			return "Seven";
		case 8:
			return "Eight";
		case 9:
			return "Nine";
		default:
			throw new IllegalArgumentException();
		}
	}

	public static int grow(int[] x) {

		return Arrays.stream(x).reduce(1, (a, b) -> a * b);

	}

//	"scissors", "paper" --> "Player 1 won!"
	public static String rps(String p1, String p2) {

		if (p1.equals("scissors") && p2.equals("paper")) {
			return "Player 1 won!";
		}

		if (p1.equals("scissors") && p2.equals("rock")) {
			return "Player 2 won!";
		}

		if (p1.equals("scissors") && p2.equals("scissors")) {
			return "Draw!";
		}

		if (p1.equals("paper") && p2.equals("rock")) {
			return "Player 1 won!";
		}

		if (p1.equals("paper") && p2.equals("scissors")) {
			return "Player 2 won!";
		}

		if (p1.equals("paper") && p2.equals("paper")) {
			return "Draw!";
		}

		if (p1.equals("rock") && p2.equals("scissors")) {
			return "Player 1 won!";
		}

		if (p1.equals("rock") && p2.equals("paper")) {
			return "Player 2 won!";
		}

		if (p1.equals("rock") && p2.equals("rock")) {
			return "Draw!";
		}

		throw new IllegalArgumentException();

	}

	public static String rps2(String p1, String p2) {
		if (p1 == p2)
			return "Draw!";
		int p = (p1 + p2).equals("scissorspaper") || (p1 + p2).equals("rockscissors") || (p1 + p2).equals("paperrock")
				? 1
				: 2;
		return "Player " + p + " won!";
	}

	public static String greet(String name) {
		return "Hello, " + name + " how are you doing today?";
	}

	public static String solution(String str) {
		String[] array = str.split("");
		StringBuilder sb = new StringBuilder();
		for (int i = array.length - 1; i >= 0; i--) {
			sb.append(array[i]);
		}
		return sb.toString();
	}

	public static String solution2(String str) {
		return new StringBuffer(str).reverse().toString();
	}

	public static String solution3(String str) {
		return new StringBuilder(str).reverse().toString();
	}

	public static boolean checkForFactor(int base, int factor) {
		return base % factor == 0;
	}

	public static long[] powersOfTwo(int n) {

		long[] array = new long[n + 1];

		for (int i = 0; i < array.length; i++) {
			array[i] = (long) Math.pow(2, i);
		}

		return array;
	}

	public static boolean isAnagram(String test, String original) {
		String[] arrayTest = test.toLowerCase().split("");
		String[] arrayOriginal = original.toLowerCase().split("");
		Arrays.sort(arrayTest);
		Arrays.sort(arrayOriginal);

		test = String.join("", arrayTest);
		original = String.join("", arrayOriginal);

		return test.equals(original);
	}

	public static boolean feast(String beast, String dish) {
		return beast.charAt(0) == dish.charAt(0) && beast.charAt(beast.length() - 1) == dish.charAt(dish.length() - 1);
	}

	public static int square(int n) {
		return n * n;
	}

	public static String reverseWords(final String original) {
		if (Stream.of(original.split(" ")).count() == 0) {
			return original;
		}

		return Stream.of(original.split(" ")).map(i -> new StringBuilder(i).reverse()).collect(Collectors.joining(" "));
	}

	public static int hexToDec(final String hexString) {
		return Integer.parseInt(hexString, 16);
	}

	public static String mouthSize(String animal) {
		return animal.toLowerCase().equals("alligator") ? "small" : "wide";
	}

	public static int arithmetic(int a, int b, String operator) {
		switch (operator) {
		case "add":
			return a + b;
		case "subtract":
			return a - b;
		case "multiply":
			return a * b;
		case "divide":
			return a / b;
		default:
			throw new IllegalArgumentException();
		}
	}

	public static boolean solution(String str, String ending) {
		return str.endsWith(ending);
	}

}