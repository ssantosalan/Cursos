package exercises;

import java.util.stream.Stream;

public class FindDivisor {
	public long numberOfDivisors(int n) {
		int cont = 0;

		for (int i = 1; i <= n; i++) {
			if (n % i == 0) {
				cont++;
			}
		}

		return cont;
	}
}
