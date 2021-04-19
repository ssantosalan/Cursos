import java.util.Scanner;

/*
Read an integer value, which is the duration in seconds of a certain event in a factory, and inform it expressed in hours:minutes:seconds.

Input
The input file contains an integer N.

Output
Print the read time in the input file (seconds) converted in hours:minutes:seconds like the following example.
 */

public class URI_1019 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int time = sc.nextInt();

		int timeHours = time / 3600;
		time = time % 3600;

		int timeMinutes = time / 60;
		time = time % 60;

		int timeSeconds = time / 1;
		time = time % 1;

		System.out.println(timeHours + ":" + timeMinutes + ":" + timeSeconds);

		sc.close();
	}

}
