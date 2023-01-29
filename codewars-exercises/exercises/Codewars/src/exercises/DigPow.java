package exercises;

import java.util.Arrays;
import java.util.stream.LongStream;

public class DigPow {
	public static long digPow(int n, int p) {
		// your code
		// p cada digito, elevar com p + 1;
		// long sum = LongStream.of(numeros).sum();
		String number = String.valueOf(n);
		char[] digitos = number.toCharArray();
		long[] numeros = new long[digitos.length];

		for (int i = 0; i < digitos.length; i++) {
			numeros[i] = Character.getNumericValue(digitos[i]);
			numeros[i] = (long) Math.pow(numeros[i], p + i);
		}
		
		System.out.println(Arrays.toString(numeros));

		long sum = LongStream.of(numeros).sum();

		long k = sum / n;
		double y = (double) sum / n;
		System.out.println("y" + y);
		System.out.println("k:" + k);
		System.out.println("sum: " + sum);
		System.out.println("n: " + n);
		if (k >= 1 && k == y) {
			return k;
		}

		return -1;
	}

	// public static int strCount(String str, char letter) {
	// 	return str.replaceAll("[^"+letter+"]", "").length();
	// }

	public static long digPow2(int n, int p) {
		String intString = String.valueOf(n);
		long sum = 0;
		for (int i = 0; i < intString.length(); ++i, ++p)
			sum += Math.pow(Character.getNumericValue(intString.charAt(i)), p);
		return (sum % n == 0) ? sum / n : -1;
	}

	// public static long digPow2(int n, int p) {
	// 	String intString = String.valueOf(n);
	// 	long sum = 0;
	// 	for (int i = 0; i < intString.length(); ++i, ++p)
	// 		sum += Math.pow(Character.getNumericValue(intString.charAt(i)), p);
	// 	return (sum % n == 0) ? sum / n : -1;
	// }

}
