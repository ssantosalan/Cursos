import java.util.Scanner;

/*
Make a program that reads 3 integer values and present the greatest one followed by the message "eh o maior".
Input
The input file contains 3 integer values.

Output
Print the greatest of these three values followed by a space and the message “eh o maior”.
 */
public class URI_1013 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int c = sc.nextInt();

		int maiorAB = (a + b + Math.abs(a - b)) / 2;
		int maior = (maiorAB + c + Math.abs(maiorAB - c)) / 2;

		System.out.println(maior + " eh o maior");

		sc.close();

	}

}
