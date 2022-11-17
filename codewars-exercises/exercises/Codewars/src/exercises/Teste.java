package exercises;

import java.util.Arrays;
import java.util.stream.Stream;

public class Teste {

	public static void main(String[] args) {

		String word = "word";

		System.out.println(Kata.solution(word));

		int[] array = { 3, 2, 1 };

		Arrays.stream(array).map(i -> i * 2).toArray();

	}

}
