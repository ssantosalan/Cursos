package exercises;

public class Counter {
	public int countSheeps(Boolean[] arrayOfSheeps) {
		// TODO May the force be with you
		int numberOfSheeps = 0;
		for (Boolean sheep : arrayOfSheeps) {
			if (sheep != null && sheep) {
				numberOfSheeps++;
			}
		}
		return numberOfSheeps;
	}
}