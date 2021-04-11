import java.util.Scanner;
/*
  Make a program that reads a seller's name, his/her fixed salary and the sale's total made by himself/herself in the month (in money). 
  Considering that this seller receives 15% over all products sold, write the final salary (total) of this seller at the end of the month , with two decimal places.

- Don’t forget to print the line's end after the result, otherwise you will receive “Presentation Error”.

- Don’t forget the blank spaces.

Input
The input file contains a text (employee's first name), and two double precision values, that are the seller's salary and the total value sold by him/her.

Output
Print the seller's total salary, according to the given example.
 */
public class URI_1009 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);

		String name = sc.next();
		double salary = sc.nextDouble();
		double sales = sc.nextDouble();
		double bonus = sales * 0.15;
		salary = salary + bonus;

		System.out.printf("TOTAL = R$ %.2f\n", salary);
		
		sc.close();

	}

}
