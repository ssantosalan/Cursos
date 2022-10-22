package exercises;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class DescendingOrder {
	public static int sortDesc(final int num) {
		char[] ch = String.valueOf(num).toCharArray();
		Integer[] arrayDesc = new Integer[ch.length];

		for (int i = 0; i < ch.length; i++) {
			arrayDesc[i] = Integer.valueOf(ch[i] - 48);
		}
		
		Arrays.sort(arrayDesc, Collections.reverseOrder());
		String numbDesc = Stream.of(arrayDesc).map(e -> String.valueOf(e)).collect(Collectors.joining());
		return Integer.valueOf(numbDesc);
	}

	public static int sortDesc2(final int num) {
		return Integer.parseInt(String.valueOf(num).chars().mapToObj(i -> String.valueOf(Character.getNumericValue(i)))
				.sorted(Comparator.reverseOrder()).collect(Collectors.joining()));
	}

	public static int sortDesc3(final int num) {
		String[] array = String.valueOf(num).split("");
		Arrays.sort(array, Collections.reverseOrder());
		return Integer.valueOf(String.join("", array));
	}

}
