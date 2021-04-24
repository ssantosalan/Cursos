import java.util.Scanner;

/*
 Using the following table, write a program that reads a code and the amount of an item. After, print the value to pay. 
 This is a very simple program with the only intention of practice of selection commands.
 
 Input

The input file contains two integer numbers X and Y. X is the product code and Y is the quantity of this item according to the above table.
Output

The output must be a message "Total: R$ " followed by the total value to be paid, with 2 digits after the decimal point.

 */
public class URI_1038 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double total;
		int x = sc.nextInt();
		int y = sc.nextInt();

		switch (x) {
		case 1:
			total = (y * 4.00);
			System.out.printf("Total: R$ %.2f\n", total);
			break;
		case 2:
			total = (y * 4.50);
			System.out.printf("Total: R$ %.2f\n", total);
			break;
		case 3:
			total = (y * 5.00);
			System.out.printf("Total: R$ %.2f\n", total);
			break;
		case 4:
			total = (y * 2.00);
			System.out.printf("Total: R$ %.2f\n", total);
			break;
		case 5:
			total = (y * 1.50);
			System.out.printf("Total: R$ %.2f\n", total);
			break;
		}

		sc.close();
	}

}
