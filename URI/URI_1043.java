import java.util.Scanner;

/*


Read three point floating values (A, B and C) and verify if is possible to make a triangle with them. If it is possible, calculate the perimeter of the triangle and print the message:


Perimetro = XX.X


If it is not possible, calculate the area of the trapezium which basis A and B and C as height, and print the message:


Area = XX.X
Input

The input file has tree floating point numbers.
Output

Print the result with one digit after the decimal point.

 */
public class URI_1043 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double a = sc.nextDouble();
		double b = sc.nextDouble();
		double c = sc.nextDouble();
		
		if (a < b + c && b < a + c && c < a + b) {
			double perimetro = a + b + c;
			System.out.printf("Perimetro = %.1f\n", perimetro);
		} else {
			double area = ((a + b) * c) / 2;
			System.out.printf("Area = %.1f\n", area);
		}
		
		sc.close();

	}

}
