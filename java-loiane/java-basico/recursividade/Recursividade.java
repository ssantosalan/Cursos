
public class Recursividade {

	public static void main(String[] args) {
		System.out.println(fatorialRecursivo(2));
	}

	public static int fatorialRecursivo(int num) {
		if (num == 0) {
			return 1;
		}
		return num * fatorialRecursivo(num - 1);
	}
}
