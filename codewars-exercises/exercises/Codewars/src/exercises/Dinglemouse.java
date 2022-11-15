package exercises;

public class Dinglemouse {
	public static int[] humanYearsCatYearsDogYears(final int humanYears) {
		if (humanYears == 1) {
			return new int[] { 1, 15, 15 };
		}
		if (humanYears == 2) {
			return new int[] { 2, 24, 24 };
		}

		int dogYears = 24 + (5 * (humanYears - 2));
		int catYears = 24 + (4 * (humanYears - 2));
		return new int[] { humanYears, catYears, dogYears };
	}
}
