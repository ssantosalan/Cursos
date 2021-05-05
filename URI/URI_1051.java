import java.util.Scanner;

/* 
 In an imaginary country called Lisarb, all the people are very happy to pay their taxes because they know that doesn’t exist corrupt politicians and the taxes are used to benefit the population, without any misappropriation. The currency of this country is Rombus, whose symbol is R$.

Read a value with 2 digits after the decimal point, equivalent to the salary of a Lisarb inhabitant. Then print the due value that this person must pay of taxes, according to the table below.

Remember, if the salary is R$ 3,002.00 for example, the rate of 8% is only over R$ 1,000.00, because the salary from R$ 0.00 to R$ 2,000.00 is tax free. In the follow example, the total rate is 8% over R$ 1000.00 + 18% over R$ 2.00, resulting in R$ 80.36 at all. The answer must be printed with 2 digits after the decimal point.
Input

The input contains only a float-point number, with 2 digits after the decimal point.
Output

Print the message "R$" followed by a blank space and the total tax to be payed, with two digits after the decimal point. If the value is up to 2000, print the message "Isento".

 * 
 */
public class URI_1051 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double salary = sc.nextDouble();
		double taxes, taxes2000, taxes3000, taxes4500;

		if (salary >= 0 && salary <= 2000) {
			System.out.println("Isento");
			salary = salary - 2000;

		} else {
			salary = salary - 2000;

		}

		if (salary > 0 && salary <= 1000) {
			taxes = (salary * 0.08);
			System.out.printf("R$ %.2f\n", taxes);

		} else if (salary > 1000 && salary <= 2500) {
			salary = salary - 1000;
			taxes2000 = 1000 * 0.08;
			taxes3000 = salary * 0.18;
			taxes = taxes2000 + taxes3000;

			System.out.printf("R$ %.2f\n", taxes);

		} else if (salary > 2500) {
			salary = salary - 1000;
			taxes2000 = 1000 * 0.08;
			salary = salary - 1500;
			taxes3000 = 1500 * 0.18;
			taxes4500 = salary * 0.28;
			taxes = taxes2000 + taxes3000 + taxes4500;
			System.out.printf("R$ %.2f\n", taxes);

		}

		sc.close();

	}

}
