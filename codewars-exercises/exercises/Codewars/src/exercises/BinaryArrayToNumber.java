package exercises;

import java.util.List;

public class BinaryArrayToNumber {
	public static int ConvertBinaryArrayToInt(List<Integer> binary) {
		String number = "";
		for (int item : binary) {
			number = number + String.valueOf(item);
		}
		System.out.println("n�mero junto: " + number);
		
		int binaryNumber = Integer.parseInt(number);
		System.out.println("n�mero em int: " + binaryNumber);
//		System.out.println("Bin�rio: " + binaryNumber);
		number = Integer.toBinaryString(binaryNumber);
//		System.out.println("number bin�rio " + number); 
		return Integer.parseInt(number);

		
	}
}
