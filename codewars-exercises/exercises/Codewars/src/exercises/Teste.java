package exercises;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Teste {

	public static void main(String[] args) {

		Integer[] array = { 1, 2, 3 };

		Arrays.sort(array, Comparator.reverseOrder());
		Arrays.sort(array, Collections.reverseOrder());
		System.out.println(Arrays.toString(array));
	}

}
