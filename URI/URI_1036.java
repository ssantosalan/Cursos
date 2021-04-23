import java.util.Scanner;

/*
Read 3 floating-point numbers. After, print the roots of bhaskara’s formula. 
If it's impossible to calculate the roots because a division by zero or a square root of a negative number, presents the message “Impossivel calcular”.

Input
Read 3 floating-point numbers (double) A, B and C.

Output
Print the result with 5 digits after the decimal point or the message if it is impossible to calculate.
 */
public class URI_1036 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double a = sc.nextDouble();
		double b = sc.nextDouble();
		double c = sc.nextDouble();

		double delta = (b * b) - (4 * a * c);

		if (a == 0 || delta <= 0) {
			System.out.println("Impossivel calcular");
		} else {
			double x1 = (-b + Math.sqrt(delta)) / (2 * a);
			System.out.printf("R1 = %.5f\n", x1);
			
			double x2 = (-b - Math.sqrt(delta)) / (2 * a);
			System.out.printf("R2 = %.5f\n", x2);

		}

		sc.close();

	}

}
