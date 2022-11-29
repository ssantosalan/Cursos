package exercises;

public class NthSeries {
//	Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
//	String strDouble = String.format("%.2f", 1.23456);

	public static String seriesSum(int n) {
		double sum = 0;
		for (int i = 0; i < n; i++) {
			sum += 1 / (1 + i * 3.0);
		}
		System.out.println(sum);
		return String.format("%.2f", sum);
	}
}
