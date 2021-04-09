import java.util.Scanner;

/* Read four integer values named A, B, C and D. 
 * Calculate and print the difference of product A and B by the product of C and D (A * B - C * D).
 *
 * Input
 * The input file contains 4 integer values.

 * Output
 * Print DIFERENCA (DIFFERENCE in Portuguese) 
 * with all the capital letters, according to the following example, with a blank space before and after the equal signal.*/
public class URI_1007 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int A, B, C, D;

		A = sc.nextInt();
		B = sc.nextInt();
		C = sc.nextInt();
		D = sc.nextInt();

		int DIFFERENCE = (A * B - C * D);

		System.out.println("DIFERENCA = " + DIFFERENCE);

		sc.close();

	}

}
