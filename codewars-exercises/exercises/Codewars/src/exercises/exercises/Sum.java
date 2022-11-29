package exercises;

import java.util.Arrays;
import java.util.Optional;
import javax.swing.plaf.basic.BasicMenuBarUI;

/*
 *  Sum all the numbers of a given array ( cq. list ),
 *  except the highest and the lowest element ( by value, not by index! ).
 *  The highest or lowest element respectively is a single element at each edge, 
 *  even if there are more than one with the same value.
 * 
 * Input validation
If an empty value ( null, None, Nothing etc. ) 
is given instead of an array, or the given array is an empty list or a list with only 1 element, return 0.
 * 
 */

public class Sum {
	public static int sum(int[] numbers) {

		if (numbers == null || numbers.length < 2) {
			return 0;
		}

		int result = Arrays.stream(numbers).sum();
		result = result - Arrays.stream(numbers).min().getAsInt();
		result = result - Arrays.stream(numbers).max().getAsInt();
		return result;

//		  return  Arrays.stream(numbers)
//                  .filter(number -> number > Arrays.stream(numbers).min().getAsInt() && number < Arrays.stream(numbers).max().getAsInt())
//                  .sum();

	}
}
