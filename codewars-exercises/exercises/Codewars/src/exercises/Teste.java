package exercises;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String nome = "isogram";
		String nome2 = "Olon";
		String xo = "sda";
		System.out.println(Isogram.isIsogram(nome));
		System.out.println(Isogram.isIsogram(nome2));

		System.out.println(getXO.getXO(xo));

		System.out.println("HIGH AND LOW");
		Kata.highAndLow("80 3 -5 42 -1 50 0 -9 4 7 4 -4");

		int[] numbers = { 6, 2, 1, 8, 10 };
		var sum = new Sum();
		System.out.println(sum.sum(numbers));

		System.out.println(Kata.binaryAddition(1, 1));

		System.out.println(OppositesAttract.isLove(2, 3));

		ArrayList<int[]> lista = new ArrayList<int[]>();

		int[] array = { 10, 0 };
		int[] array2 = { 5, 10 };
		lista.add(array);
		lista.add(array2);

		System.out.println(Metro.countPassengers(lista));

		System.out.println(Solution.repeatStr(3, "Alan"));
//		Solution solucion = new Solution();

		System.out.println(Kata.makeNegative(-5));
		System.out.println(Kata.makeNegative(5));

		System.out.println("----FALSO");
		System.out.println(Solution.validatePin("1"));
		System.out.println(Solution.validatePin("12"));
		System.out.println(Solution.validatePin("123"));
		System.out.println(Solution.validatePin("12345"));
		System.out.println(Solution.validatePin("1234567"));
		System.out.println(Solution.validatePin("-1234"));
		System.out.println(Solution.validatePin("1.234"));
		System.out.println(Solution.validatePin("00000000"));
		System.out.println("----FALSO");
		System.out.println(Solution.validatePin("a234"));
		System.out.println(Solution.validatePin(".234"));
		System.out.println("----TRUE");
		System.out.println(Solution.validatePin("1234"));
		System.out.println(Solution.validatePin("0000"));
		System.out.println(Solution.validatePin("1111"));
		System.out.println(Solution.validatePin("123456"));
		System.out.println(Solution.validatePin("098765"));
		System.out.println(Solution.validatePin("000000"));
		System.out.println(Solution.validatePin("090909"));
		System.out.println("----NOVOS");
		System.out.println(Solution.validatePin(" 123"));
		System.out.println(Solution.validatePin(" 123 "));
		System.out.println(Solution.validatePin("*123"));
		System.out.println(Solution.validatePin("123a"));
		System.out.println(Solution.validatePin("a23a"));
		System.out.println(Solution.validatePin("a23a"));
		System.out.println(Solution.validatePin("123*"));
		System.out.println(Solution.validatePin(" 123"));
		System.out.println(Solution.validatePin(" 123 "));
		System.out.println(Solution.validatePin("123 "));
		System.out.println(Solution.validatePin("123"));
		System.out.println("próxima");
		System.out.println(TwiceAsOld.TwiceAsOld(80, 50));
		int[] ar = { 2, 2, 2 };
		System.out.println(Kata.squareSum(ar));
		int[] ar2 = { 1, 1, 2 };
		System.out.println(Kata.squareSum3(ar2));
		String nome3 = "Alan silva dos santos";
		String nome4 = "Alan teste dos santos";
		JadenCase jadenCase = new JadenCase();
		System.out.println(jadenCase.toJadenCase(nome3));
		System.out.println(jadenCase.toJadenCase2(nome4));

		String phraseUsada = "vamos, alan!";
		System.out.println(jadenCase.capitalizeFirstLetter(phraseUsada));
		System.out.println("next");
//		System.out.println(Printer.printerError("abcdmno"));
//		System.out.println(Printer.printerError("abc"));
		System.out.println("outro");
		ArrayList<Integer> listaBinary = new ArrayList<>(Arrays.asList(0, 0, 0, 1));
		ArrayList<Integer> listaBinary2 = new ArrayList<>(Arrays.asList(0, 0, 1, 0));
		System.out.print("tem que dá 1: ");
		System.out.println(BinaryArrayToNumber.ConvertBinaryArrayToInt(listaBinary));
		System.out.print("tem que dá 2: ");
		System.out.println(BinaryArrayToNumber.ConvertBinaryArrayToInt(listaBinary2));
		System.out.println("Próximo");
//		String[] nomes = {"Peter"};
//		String[] nomes = {"Peter", "Alan"};
//		String[] nomes = {"Peter", "Alan", "joao"};
//		String[] nomes = {"Peter", "Alan", "joao", "maria"};
		String[] nomes = {""};
		System.out.println(Solution.whoLikesIt(nomes));

	}

}
