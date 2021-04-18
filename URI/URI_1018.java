import java.util.Scanner;
/*
In this problem you have to read an integer value and calculate the smallest possible number of banknotes in which the value may be decomposed. 
The possible banknotes are 100, 50, 20, 10, 5, 2 e 1. Print the read value and the list of banknotes.

Input
The input file contains an integer value N (0 < N < 1000000).

Output
Print the read number and the minimum quantity of each necessary banknotes in Portuguese language, as the given example. 
Do not forget to print the end of line after each line, otherwise you will receive “Presentation Error”.
 */
public class URI_1018 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		int value = sc.nextInt();
		int valor = value;

		int nota100 = value / 100;
		value = value % 100;

		int nota50 = value / 50;
		value = value % 50;

		int nota20 = value / 20;
		value = value % 20;

		int nota10 = value / 10;
		value = value % 10;

		int nota5 = value / 5;
		value = value % 5;

		int nota2 = value / 2;
		value = value % 2;

		int nota1 = value / 1;
		value = value % 1;

		System.out.println(valor);
		System.out.println(nota100 + " nota(s) de R$ 100,00");
		System.out.println(nota50 + " nota(s) de R$ 50,00");
		System.out.println(nota20 + " nota(s) de R$ 20,00");
		System.out.println(nota10 + " nota(s) de R$ 10,00");
		System.out.println(nota5 + " nota(s) de R$ 5,00");
		System.out.println(nota2 + " nota(s) de R$ 2,00");
		System.out.println(nota1 + " nota(s) de R$ 1,00");

		sc.close();

	}

}
