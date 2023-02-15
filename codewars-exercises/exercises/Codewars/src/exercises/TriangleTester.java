package exercises;

public class TriangleTester {
	public static boolean isTriangle(int a, int b, int c) {

		if (Math.abs((double) b - (double) c) < a && a < b + c) {
			return true;
		}

		if (Math.abs((double) a - (double) c) < b && b < a + c) {
			return true;
		}

		if (Math.abs((double) a - (double) b) < c && c < a + b) {
			return true;
		}

		return false;

	}

	public static boolean isTriangle2(int a, int b, int c) {
		return a + b > c && a + c > b && c + b > a;
		// return a + c > b && c + b > a;
		// return a + b > c && a + c > b;
	}
}
