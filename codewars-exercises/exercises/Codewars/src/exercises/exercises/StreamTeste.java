package exercises;

import java.util.Arrays;
import java.util.OptionalInt;
import java.util.stream.IntStream;

public class StreamTeste {

	public static void main(String[] args) {

//		List<Integer> lista = Arrays.asList(1, 1, 2, 3, 4, 5);	
//		Optional<Integer> min = lista.stream().filter(number -> number % 2 == 0).min(Comparator.naturalOrder());
//		System.out.println(min);

//		List<Integer> lista = Arrays.asList(1, 1, 2, 3, 4, 5);	
//		Optional<Integer> max = lista.stream().max(Comparator.naturalOrder());
//		System.out.println(max.get());

//		List<Integer> lista = Arrays.asList(1, 1, 2, 3, 4, 5);
//		List<Integer> novaLista = lista.stream().filter(e -> e % 2 == 0).collect(Collectors.toList());
//		System.out.println(novaLista);

//		List<Integer> lista = Arrays.asList(1, 1, 2, 3, 4, 5);
//		Map<Object, List<Integer>> novaLista = lista.stream().map(e -> e * 3).collect(Collectors.groupingBy(e -> e % 2 == 0));
//		System.out.println(novaLista);

//		List<Integer> lista = Arrays.asList(1, 1, 2, 3, 4, 5);
//		String novaLista = lista.stream().map(e -> String.valueOf(e)).collect(Collectors.joining(";"));
//		System.out.println(novaLista);
//
//		int[] vetor = { 1, 2, 3 };
//		int[] novoVetor = Arrays.stream(vetor).map(e -> e * 2).toArray();
//		System.out.println(Arrays.toString(novoVetor));
		

        int[] num = {1, 2, 3, 4, 5};

        //1. int[] -> IntStream
        IntStream stream = Arrays.stream(num);

        // 2. OptionalInt
        OptionalInt first = stream.findFirst();

        // 3. getAsInt()
        int result = first.getAsInt();

        System.out.println(result); 

        // one line
        System.out.println(Arrays.stream(num).findFirst().getAsInt());
        
	}
}
