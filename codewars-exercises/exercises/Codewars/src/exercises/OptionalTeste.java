package exercises;

import java.util.OptionalInt;

public class OptionalTeste {

	public static void main(String[] args) {
		String s = "1";
		System.out.println(converterNumero(s).orElseThrow(() -> new NullPointerException("Valor vazio")));

	}

	public static OptionalInt converterNumero(String numero) {

		try {
			int integer = Integer.parseInt(numero);
			return OptionalInt.of(integer);
		} catch (Exception e) {
			return OptionalInt.empty();
		}

	}

}
