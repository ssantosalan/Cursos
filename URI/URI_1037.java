import java.util.Scanner;

/*


You must make a program that read a float-point number and print a message saying in which of following intervals the number belongs: [0,25] (25,50], (50,75], (75,100]. If the read number is less than zero or greather than 100, the program must print the message “Fora de intervalo” that means "Out of Interval".

The symbol '(' represents greather than. For example:
[0,25] indicates numbers between 0 and 25.0000, including both.
(25,50] indicates numbers greather than 25 (25.00001) up to 50.0000000.
Input

The input file contains a floating-point number.
Output

The output must be a message like following example.

 */
public class URI_1037 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double n = sc.nextDouble();

		if (n >= 0 && n <= 25) {
			System.out.println("Intervalo [0,25]");
		} else if (n > 25 && n <= 50) {
			System.out.println("Intervalo (25,50]");
		} else if (n > 50 && n <= 75) {
			System.out.println("Intervalo (50,75]");
		} else if (n > 75 && n <= 100) {
			System.out.println("Intervalo (75,100]");
		} else {
			System.out.println("Fora de intervalo");
		}

		sc.close();

	}

}
