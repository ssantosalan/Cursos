package exercises;

import java.util.List;

public class BinaryArrayToNumber {
	public static int ConvertBinaryArrayToInt(List<Integer> binary) {
		String binaryString = "";
		for (int item : binary) {
			binaryString = binaryString + String.valueOf(item);
		}
		int decimal = Integer.parseInt(binaryString, 2);

		return decimal;

	}

	public static int ConvertBinaryArrayToInt2(List<Integer> binary) {
		return binary.stream().reduce((x, y) -> x * 2 + y).get();
	}
	// public static int ConvertBinaryArrayToInt2(List<Integer> binary) {
	// 	return binary.stream().reduce((x, y) -> x * 2 + y).get();
	// }
}

// public static int ConvertBinaryArrayToInt2(List<Integer> binary) {
// 	return binary.stream().reduce((x, y) -> x * 2 + y).get();
// }