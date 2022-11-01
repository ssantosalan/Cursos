package exercises;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class Teste {

	public static void main(String[] args) {

		System.out.println(Accumul.accum("abcd"));
		System.out.println(Accumul.accum("ZPGLNRXQENU"));

		List<Integer> list = Arrays.asList(2, 3);

		Collections.sort(list, Comparator.naturalOrder());
		System.out.println(list);

	}

}
