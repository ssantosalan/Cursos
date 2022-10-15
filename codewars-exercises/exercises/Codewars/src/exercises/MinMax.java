package exercises;

import java.util.Arrays;

public class MinMax {

	public static void main(String[] args) {
		int[] array = { 1, 2, 5, 10 };

		System.out.println(Arrays.toString(minMax(array)));

	}

	public static int[] minMax(int[] arr) {
		return new int[] { Arrays.stream(arr).min().getAsInt(), Arrays.stream(arr).max().getAsInt() };

	}

}
