package exercises;

import java.util.Arrays;
import java.util.stream.Collectors;

public class JadenCase {
	public String toJadenCase(String phrase) {

		if (phrase == null || phrase == "") {
			return null;
		}

		String[] vetor = phrase.split(" ");
		String capitalizedPhrase = "";
		for (int i = 0; i < vetor.length; i++) {
			capitalizedPhrase += vetor[i].substring(0, 1).toUpperCase() + vetor[i].substring(1) + " ";
		}
		return capitalizedPhrase.trim();
	}

	public String toJadenCase2(String phrase) {

		if (phrase == null || phrase == "") {
			return null;
		}

		String[] words = phrase.split(" ");
		String capitalizedPhrase = "";

		for (String word : words) {
			capitalizedPhrase += word.substring(0, 1).toUpperCase() + word.substring(1) + " ";
		}
		return capitalizedPhrase.trim();

	}
	
	 public String capitalizeFirstLetter(String phrase) {
	      if (null == phrase || phrase.length() == 0) {
	          return null;
	      }

	      return Arrays.stream(phrase.split(" "))
	                   .map(i -> i.substring(0, 1).toUpperCase() + i.substring(1, i.length()))
	                   .collect(Collectors.joining(" "));
	  }

}
