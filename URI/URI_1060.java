import java.util.Scanner;

/*


Write a program that reads 6 numbers. These numbers will only be positive or negative (disregard null values). Print the total number of positive numbers.
Input

Six numbers, positive and/or negative.
Output

Print a message with the total number of positive numbers.

 */

public class URI_1060 {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		int positivos = 0;

		for (int i = 0; i < 6; i++) {
			double n = entrada.nextDouble();

			if (n > 0) {
				positivos++;
			}
		}
		System.out.println(positivos + " valores positivos");

		entrada.close();

	}

}
