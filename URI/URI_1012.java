import java.util.Scanner;

/*

Make a program that reads three floating point values: A, B and C. Then, calculate and show:
a) the area of the rectangle triangle that has base A and height C.
b) the area of the radius's circle C. 
c) the area of the trapezium which has A and B by base, and C by height.
d) area of the square that has side B.
e) the area of the rectangle that has sides A and B.

Input
The input file contains three double values with one digit after the decimal point.

Output
The output file must contain 5 lines of data. Each line corresponds to one of the areas described above, always with a corresponding message (in Portuguese) and one space between the two points and the value. 
The value calculated must be presented with 3 digits after the decimal point.
 */

public class URI_1012 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double A = sc.nextDouble();
		double B = sc.nextDouble();
		double C = sc.nextDouble();
		double PI = 3.14159;
		double areaRTriangle = (A * C) / 2;
		double areaCircle = (PI * (Math.pow(C, 2)));
		double areaTrapezium = (((A + B) * C) / 2);
		double areaSquare = Math.pow(B, 2);
		double areaRectangle = (A * B);
		
		System.out.printf("TRIANGULO: %.3f\n", areaRTriangle);
		System.out.printf("CIRCULO: %.3f\n", areaCircle);
		System.out.printf("TRAPEZIO: %.3f\n", areaTrapezium);
		System.out.printf("QUADRADO: %.3f\n", areaSquare);
		System.out.printf("RETANGULO: %.3f\n", areaRectangle);
		
		sc.close();

	}

}
