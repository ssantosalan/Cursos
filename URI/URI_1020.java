import java.util.Scanner;

/*

Read an integer value corresponding to a person's age (in days) and print it in years, months and days, followed by its respective message “ano(s)”, “mes(es)”, “dia(s)”.

Note: only to facilitate the calculation, consider the whole year with 365 days and 30 days every month. In the cases of test there will never be a situation that allows 12 months and some days, like 360, 363 or 364. 
This is just an exercise for the purpose of testing simple mathematical reasoning.

Input

The input file contains 1 integer value.
Output

Print the output, like the following example.
 
 */

public class URI_1020 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int age = sc.nextInt();

		int year = age / 365;
		age = age % 365;

		int month = age / 30;
		age = age % 30;

		int days = age;

		System.out.println(year + " ano(s)");
		System.out.println(month + " mes(es)");
		System.out.println(days + " dia(s)");

		sc.close();

	}

}
