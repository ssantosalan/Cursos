import java.util.Scanner;

/*


Read an integer number between 1 and 12, including. Corresponding to this number, you must print the month of the year, in english, with the first letter in uppercase.
Input

The input contains only an integer number.
Output

Print the name of the month according to the input number, with the first letter in uppercase.

 */
public class URI_1052 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int opcao;
		opcao = sc.nextInt();

		switch (opcao) {
		case 1:
			System.out.println("January");
			break;
		case 2:
			System.out.println("February");
			break;
		case 3:
			System.out.println("March");
			break;
		case 4:
			System.out.println("April");
			break;
		case 5:
			System.out.println("May");
			break;
		case 6:
			System.out.println("June");
			break;
		case 7:
			System.out.println("July");
			break;
		case 8:
			System.out.println("August");
			break;
		case 9:
			System.out.println("September");
			break;
		case 10:
			System.out.println("October");
			break;
		case 11:
			System.out.println("November");
			break;
		case 12:
			System.out.println("December");
			break;
		}

		sc.close();

	}

}
