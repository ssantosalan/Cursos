import java.util.Arrays;

public class Vetor04 {

	public static void main(String[] args) {
		int vetor[] = { 4, 5, 2, 6, 7, 3, 10 };

		for (int valor : vetor) {
			System.out.print(valor + " ");
		}
		System.out.println();
		int posicao = Arrays.binarySearch(vetor, 5);
		System.out.println("Encontrei o valor na posição " + posicao);

	}

}
