import java.util.Scanner;

/*
Read a value of floating point with two decimal places. This represents a monetary value. 
After this, calculate the smallest possible number of notes and coins on which the value can be decomposed. The considered notes are of 100, 50, 20, 10, 5, 2. The possible coins are of 1, 0.50, 0.25, 0.10, 0.05 and 0.01. Print the message “NOTAS:” followed by the list of notes and the message “MOEDAS:” followed by the list of coins.

Input
The input file contains a value of floating point N(0 <= N <= 1000000.00).

Output
Print the minimum quantity of banknotes and coins necessary to change the initial value, as the given example. 
 
 */
public class URI_1021 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double value = sc.nextDouble();

		int nota100 = (int) value / 100;
		value = value % 100.0;

		int nota50 = (int) value / 50;
		value = value % 50.0;

		int nota20 = (int) value / 20;
		value = value % 20.0;

		int nota10 = (int) value / 10;
		value = value % 10.0;

		int nota5 = (int) value / 5;
		value = value % 5.0;

		int nota2 = (int) value / 2;
		value = value % 2.0;

		value = value * 100;
		
		int moeda1 = (int) value / 100;
		value = value % 100;

		int moeda50 = (int) (value / 50);
		value = value % 50;

		int moeda25 = (int) (value / 25);
		value = value % 25;

		int moeda10 = (int) (value / 10);
		value = value % 10;

		int moeda05 = (int) (value / 5);
		value = value % 5;

		int moeda01 = (int) (value / 1);
		value = value % 1;

		System.out.println("NOTAS:");
		System.out.println(nota100 + " nota(s) de R$ 100.00");
		System.out.println(nota50 + " nota(s) de R$ 50.00");
		System.out.println(nota20 + " nota(s) de R$ 20.00");
		System.out.println(nota10 + " nota(s) de R$ 10.00");
		System.out.println(nota5 + " nota(s) de R$ 5.00");
		System.out.println(nota2 + " nota(s) de R$ 2.00");
		
		System.out.println("MOEDAS:");
		System.out.println(moeda1 + " moeda(s) de R$ 1.00");
		System.out.println(moeda50 + " moeda(s) de R$ 0.50");
		System.out.println(moeda25 + " moeda(s) de R$ 0.25");
		System.out.println(moeda10 + " moeda(s) de R$ 0.10");
		System.out.println(moeda05 + " moeda(s) de R$ 0.05");
		System.out.println(moeda01 + " moeda(s) de R$ 0.01");

		sc.close();

	}

}
