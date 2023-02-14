package exercises;

public class Counter {
	public int countSheeps(Boolean[] arrayOfSheeps) {
		// TODO May the force be with you
		int numberOfSheeps = 0;
		// int numberOfSheeps = 1;
		for (Boolean sheep : arrayOfSheeps) {
			if (sheep != null && sheep) {
				numberOfSheeps++;
			}
			// if (sheep == null && sheep) {
			// 	numberOfSheeps++;
			// }
		}
		return numberOfSheeps;
	}
}
