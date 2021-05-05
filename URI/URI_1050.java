import java.util.Scanner;

/*
Read an integer number that is the code number for phone dialing. Then, print the destination according to the following table:


 If the input number isn’t found in the above table, the output must be:
DDD nao cadastrado
That means “DDD not found” in Portuguese language.
Input

The input consists in a unique integer number.
Output

Print the city name corresponding to the input DDD. Print DDD nao cadastrado if doesn't exist corresponding DDD to the typed number.


 */

public class URI_1050 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int ddd = sc.nextInt();

		if (ddd == 61) {
			System.out.println("Brasilia");
		} else if (ddd == 71) {
			System.out.println("Salvador");
		} else if (ddd == 11) {
			System.out.println("Sao Paulo");
		} else if (ddd == 21) {
			System.out.println("Rio de Janeiro");
		} else if (ddd == 32) {
			System.out.println("Juiz de Fora");
		} else if (ddd == 19) {
			System.out.println("Campinas");
		} else if (ddd == 27) {
			System.out.println("Vitoria");
		} else if (ddd == 31) {
			System.out.println("Belo Horizonte");
		} else {
			System.out.println("DDD nao cadastrado");
		}

		sc.close();
	}

}
