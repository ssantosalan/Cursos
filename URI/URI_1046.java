import java.util.Scanner;

/*


Read the start time and end time of a game, in hours. Then calculate the duration of the game, knowing that the game can begin in a day and finish in another day, with a maximum duration of 24 hours. The message must be printed in portuguese “O JOGO DUROU X HORA(S)” that means “THE GAME LASTED X HOUR(S)”
Input

Two integer numbers representing the start and end time of a game.
Output

Print the duration of the game as in the sample output.

 * 
 * 
 */
public class URI_1046 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int sTime = sc.nextInt();
		int eTime = sc.nextInt();
		int duration;
		if (sTime > eTime) {
			duration = (sTime - eTime) - 24;
			duration = - (duration);
			System.out.println("O JOGO DUROU " + duration + " HORA(S)");
		} else if (sTime < eTime) {
			duration = eTime - sTime;
			System.out.println("O JOGO DUROU " + duration + " HORA(S)");
		} else {
			System.out.println("O JOGO DUROU 24 HORA(S)");
		}
		
		sc.close();

	}

}
