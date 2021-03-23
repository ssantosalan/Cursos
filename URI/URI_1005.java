import java.util.Scanner;
public class URI_1005 {

	public static void main(String[] args) {
		float A, B, med;
        Scanner sc = new Scanner(System.in);
        A = sc.nextFloat();
        B = sc.nextFloat();
        med = (float) (((A * 3.5) + (B * 7.5)) / (3.5 + 7.5));
        String media = String.format("MEDIA = %,.5f", med);
        System.out.print(media +"\n");

	}

}
