package exercises;

import java.util.Arrays;
import java.util.List;

public class Teste {

	public static void main(String[] args) {

		List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5, 6);

		numbers.stream().reduce(0, (a, b) -> a + b);
	}

}
