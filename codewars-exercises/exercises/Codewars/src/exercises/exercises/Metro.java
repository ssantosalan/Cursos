package exercises;

import java.util.ArrayList;
//
//Your task is to return number of people who are still in the bus after the last bus station 
//(after the last array). Even though it is the last bus stop,
//the bus is not empty and some people are still in the bus, and they are probably sleeping there :D

public class Metro {
	public static int countPassengers(ArrayList<int[]> stops) {
		int sum = 0;
		for (int[] stop : stops) {
			sum = sum + (stop[0] - stop[1]);
		}

		return sum;
	}

	public static int countPassengers2(ArrayList<int[]> stops) {
		return stops.stream().mapToInt(x -> x[0] - x[1]).sum();
	}

}
