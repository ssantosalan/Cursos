import java.util.Scanner;
/*Read two integer values, in this case, the variables A and B. 
 * After this, calculate the sum between them and assign it to the variable SOMA. Write the value of this variable.
 * 
 *Input
 * 
 *The input file contains 2 integer numbers.
 * 
 *Output
 *Print the message "SOMA" with all the capital letters, with a blank space before and after the equal signal followed by the corresponding value to the sum of A and B. 
 * 
 *Like all the problems, don't forget to print the end of line, otherwise you will receive "Presentation Error"
 */
public class URI_1003 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a = sc.nextInt();
		int b = sc.nextInt();
		int soma = a + b;
		System.out.println("SOMA = " + soma);

		sc.close();

	}

}
