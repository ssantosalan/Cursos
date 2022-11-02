package exercises;

import java.util.List;

public class MixedSum {
	public int sum(List<?> mixed) {

		int soma = 0;
		for (int i = 0; i < mixed.size(); i++) {

			if (mixed.get(i) instanceof String) {
				soma += Integer.parseInt((String) mixed.get(i));
			} else if (mixed.get(i) instanceof Integer) {
				soma = soma + (Integer) mixed.get(i);
			}

		}

		return soma;
	}

	public int sum2(List<?> mixed) {
		return mixed.stream().mapToInt(o -> Integer.parseInt(o.toString())).sum();
	}

	public int sum3(List<?> mixed) {

		int sum = 0;
		for (int i = 0; i < mixed.size(); i++) {
			sum += Integer.parseInt(mixed.get(i).toString());
		}

		return sum;
	}

}
