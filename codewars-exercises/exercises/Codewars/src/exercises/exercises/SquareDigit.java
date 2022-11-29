package exercises;

import java.util.stream.Collectors;

public class SquareDigit {
	public static int squareDigits(int n) {
		String[] array = String.valueOf(n).split("");
		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < array.length; i++) {
			int number = Integer.valueOf(array[i]) * Integer.valueOf(array[i]);
			sb.append(number);
		}

		return Integer.valueOf(sb.toString());
	}

	public int squareDigits2(int n) {
		return Integer.parseInt(String.valueOf(n).chars().map(i -> Integer.parseInt(String.valueOf((char) i)))
				.map(i -> i * i).mapToObj(String::valueOf).collect(Collectors.joining("")));
	}

}
