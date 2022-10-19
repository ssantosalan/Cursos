package exercises;

import java.util.List;

public class BinaryArrayToNumber {
	public static int ConvertBinaryArrayToInt(List<Integer> binary) {
		String number = "";
		for (int item : binary) {
			number = number + String.valueOf(item);
		}
		System.out.println("número junto: " + number);
		
		int binaryNumber = Integer.parseInt(number);
		System.out.println("número em int: " + binaryNumber);
//		System.out.println("Binário: " + binaryNumber);
		number = Integer.toBinaryString(binaryNumber);
//		System.out.println("number binário " + number); 
		return Integer.parseInt(number);

		
	}
}
