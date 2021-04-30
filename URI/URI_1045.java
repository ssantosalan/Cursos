import java.util.Scanner;

/*


Read 3 double numbers (A, B and C) representing the sides of a triangle and arrange them in decreasing order, so that the side A is the biggest of the three sides. Next, determine the type of triangle that they can make, based on the following cases always writing an appropriate message:

    if A ≥ B + C, write the message: NAO FORMA TRIANGULO
    if A2 = B2 + C2, write the message: TRIANGULO RETANGULO
    if A2 > B2 + C2, write the message: TRIANGULO OBTUSANGULO
    if A2 < B2 + C2, write the message: TRIANGULO ACUTANGULO
    if the three sides are the same size, write the message: TRIANGULO EQUILATERO
    if only two sides are the same and the third one is different, write the message: TRIANGULO ISOSCELES

Input

The input contains three double numbers, A (0 < A) , B (0 < B) and C (0 < C).
Output

Print all the classifications of the triangle presented in the input.

 */
public class URI_1045 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double a = sc.nextDouble();
		double b = sc.nextDouble();
		double c = sc.nextDouble();
		double n1 = 0, n2 = 0, n3 = 0;

		if (a > b && a > c) {
			n1 = a;
			if (b > c) {
				n2 = b;
				n3 = c;
			} else {
				n2 = c;
				n3 = b;

			}
			a = n1;
			b = n2;
			c = n3;

		} else if (b > a && b > c) {
			n1 = b;
			if (a > c) {
				n2 = a;
				n3 = c;
			} else {
				n2 = c;
				n3 = a;
			}
			a = n1;
			b = n2;
			c = n3;

		} else if (c > a && c > b) {
			n1 = c;
			if (a > b) {
				n2 = a;
				n3 = b;
			} else {
				n2 = b;
				n3 = a;
			}
			a = n1;
			b = n2;
			c = n3;
		}
		

		if (a >= b + c) {
			System.out.println("NAO FORMA TRIANGULO");
		} else {
			if ((a * a) == (b * b + c * c)) {
				System.out.println("TRIANGULO RETANGULO");
			}
			if ((a * a) > ((b * b) + (c * c))) {
				System.out.println("TRIANGULO OBTUSANGULO");
			}
			if ((a * a) < (b * b + c * c)) {
				System.out.println("TRIANGULO ACUTANGULO");
			}
			if (a == b && a == c) {
				System.out.println("TRIANGULO EQUILATERO");
			}
			if ((a == b && a != c) || (b == c && b != a) || (c == a && c != b)) {
				System.out.println("TRIANGULO ISOSCELES");
			}
		}

		sc.close();

	}

}
