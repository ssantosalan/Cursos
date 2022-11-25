package exercises;

public class NthSeries {
//	Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...
//	String strDouble = String.format("%.2f", 1.23456);

	public static String seriesSum(int n) {
		if (n == 0) {
			return "0.00";
		}

		if (n == 1) {
			return "1.00";
		}

		double sum = 0.0;
		double number = 1.0;
		
		for (int i = 1; i < n; i++) {
			sum = sum + (1.0 / (number + 3.0));
	
		}
		sum += 1.0;
		return String.format("%.2f", sum);
	}
}
