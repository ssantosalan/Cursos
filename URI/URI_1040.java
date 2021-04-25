import java.text.DecimalFormat;
import java.util.Scanner;

public class URI_1040 {

	public static void main(String[] args) {
		DecimalFormat df = new DecimalFormat("0.0");
		Scanner sc = new Scanner(System.in);
		double n1 = sc.nextDouble();
		double n2 = sc.nextDouble();
		double n3 = sc.nextDouble();
		double n4 = sc.nextDouble();
		double media = ((n1 * 2.0) + (n2 * 3.0) + (n3 * 4.0) + (n4 * 1.0)) / 10.0;
		System.out.printf("Media: " + df.format(media) + "\n");

		if (media >= 7) {
			System.out.println("Aluno aprovado.");
		} else if (media < 5) {
			System.out.println("Aluno reprovado.");
			System.out.println();
		} else if (media >= 5.0 || media <= 6.9) {
			System.out.println("Aluno em exame.");
			n1 = sc.nextDouble();
			System.out.printf("Nota do exame: " + df.format(n1) + "\n");
			media = (media + n1) / 2;

			if (media >= 5.0) {
				System.out.println("Aluno aprovado.");
			} else {
				System.out.println("Aluno reprovado.");
			}
			System.out.printf("Media final: " + df.format(media) + "\n");

		}

		sc.close();

	}

}
