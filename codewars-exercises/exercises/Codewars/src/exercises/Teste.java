package exercises;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Stream;

public class Teste {

	public static void main(String[] args) {

		List<Integer> lista = Arrays.asList(5,1,2,3);
		
		Collections.sort(lista, Comparator.naturalOrder());
		Collections.sort(lista);
		
		List<String> teste = Stream.of("xyz", "abc").toList();
		
		System.out.println(teste);
		System.out.println(lista);
		
		System.out.println(SquareDigit.squareDigits(9119));
		
	}

}
