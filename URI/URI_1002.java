import java.util.Scanner;

/*
 *The formula to calculate the area of a circumference is defined as A = pi . R2. 
 *Considering to this problem that pi = 3.14159:
 *
 *Calculate the area using the formula given in the problem description.
 *
 *Input
 *The input contains a value of floating point (double precision), that is the variable R.
 *
 *Output
 *Present the message "A=" followed by the value of the variable, as in the example bellow, with four places after the decimal point. 
 */

public class URI_1002 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
        double pi = 3.14159;
        double r = sc.nextDouble();
        double area = pi * r * r;
        System.out.printf("A=%.4f\n",  area);
        
        sc.close();
	}

}
