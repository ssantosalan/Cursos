
public class Ex_01 {

	public static void main(String[] args) {
		System.out.println(fibonacciRecursivo(8));

	}
	// 0, 1, 1, 2, 3, 5, 8, 13, 21
	public static int fibonacciRecursivo (int num) {
	
	if (num == 0) {
		return 0;
	}
		
	return fibonacciRecursivo((num - 1) + (num - 2));
		
	}

}
