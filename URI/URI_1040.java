import java.text.DecimalFormat;
import java.util.Scanner;

/*

Read four numbers (N1, N2, N3, N4), which one with 1 digit after the decimal point, corresponding to 4 scores obtained by a student. Calculate the average with weights 2, 3, 4 e 1 respectively, for these 4 scores and print the message "Media: " (Average), followed by the calculated result. If the average was 7.0 or more, print the message "Aluno aprovado." (Approved Student). If the average was less than 5.0, print the message: "Aluno reprovado." (Reproved Student). If the average was between 5.0 and 6.9, including these, the program must print the message "Aluno em exame." (In exam student).

In case of exam, read one more score. Print the message "Nota do exame: " (Exam score) followed by the typed score. Recalculate the average (sum the exam score with the previous calculated average and divide by 2) and print the message “Aluno aprovado.” (Approved student) in case of average 5.0 or more) or "Aluno reprovado." (Reproved student) in case of average 4.9 or less. For these 2 cases (approved or reproved after the exam) print the message "Media final: " (Final average) followed by the final average for this student in the last line.
Input

The input contains four floating point numbers that represent the students' grades.
Output

Print all the answers with one digit after the decimal point.

 */
public class URI_1040 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		DecimalFormat df = new DecimalFormat("0.0");
		double N1 = sc.nextDouble();
		double N2 = sc.nextDouble();
		double N3 = sc.nextDouble();
		double N4 = sc.nextDouble();
		double MEDIA = ((N1 * 2) + (N2 * 3) + (N3 * 4) + (N4 * 1)) / 10;
		System.out.println("Media: " + df.format(MEDIA));
		if (MEDIA >= 7) {
			System.out.println("Aluno aprovado.");
		} else if (MEDIA < 7 && MEDIA >= 5) {
			System.out.println("Aluno em exame.");
			double NExame = sc.nextDouble();
			System.out.println("Nota do exame: " + df.format(NExame));
			MEDIA = (MEDIA + NExame) / 2;
			if (MEDIA >= 5) {
				System.out.println("Aluno aprovado.");
			} else {
				System.out.println("Aluno reprovado.");
			}
			System.out.println("Media final: " + df.format(MEDIA));
		} else {
			System.out.println("Aluno reprovado.");
		}
	}

}