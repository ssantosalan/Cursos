package exercises;

import java.util.ArrayList;

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
        

	}

}
