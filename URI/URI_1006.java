import java.util.Scanner; 
public class URI_1006 {

	public static void main(String[] args) {

        Scanner scan = new Scanner(System.in);
        double A = scan.nextDouble();
        double B = scan.nextDouble();
        double C = scan.nextDouble();
        double MEDIA = ((A*2) + (B*3) + (C*5))/(10);
        System.out.printf("MEDIA = %.1f\n", MEDIA);
        
        scan.close();

	}

}
