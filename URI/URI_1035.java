import java.util.Scanner;

/*


Read 4 integer values A, B, C and D. Then if B is greater than C and D is greater than A and if the sum of C and D is greater than the sum of A and B and if C and D were positives values and if A is even, write the message “Valores aceitos” (Accepted values). Otherwise, write the message “Valores nao aceitos” (Values not accepted).
Input

Four integer numbers A, B, C and D.
Output

Show the corresponding message after the validation of the values.

 
 */
public class URI_1035 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int A = sc.nextInt();
		int B = sc.nextInt();
		int C = sc.nextInt();
		int D = sc.nextInt();
		int CD = C + D;
		int AB = A + B;
		if (B > C && D > A && CD > AB && C > 0 & D > 0 && A % 2 == 0) {
			System.out.println("Valores aceitos");
		} else {
			System.out.println("Valores nao aceitos");
		}

		sc.close();

	}

}
