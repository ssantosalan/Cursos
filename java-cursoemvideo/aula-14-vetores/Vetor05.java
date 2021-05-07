import java.util.Arrays;

public class Vetor05 {

	public static void main(String[] args) {
		int vetor[] = new int[5];
		Arrays.fill(vetor, 8);
		
		for(int item: vetor) {
			System.out.println(item);
		}
	}

}
