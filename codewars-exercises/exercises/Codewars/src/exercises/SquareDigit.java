package exercises;

public class SquareDigit {
	public static int squareDigits(int n) {
		String[] array = String.valueOf(n).split("");
		StringBuilder sb = new StringBuilder();

		for (int i = 0; i < array.length; i++) {
			int number = Integer.valueOf(array[i]) * Integer.valueOf(array[i]) ;
			sb.append(number);
		}
		
		return Integer.valueOf(sb.toString());
	}
}
