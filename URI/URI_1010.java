import java.util.Scanner;
/*
	In this problem, the task is to read a code of a product 1, the number of units of product 1, the price for one unit of product 1, the code of a product 2, the number of units of product 2 and the price for one unit of product 2. 
	After this, calculate and show the amount to be paid.
	
	Input
	The input file contains two lines of data. In each line there will be 3 values: two integers and a floating value with 2 digits after the decimal point.
	
	Output
	The output file must be a message like the following example where "Valor a pagar" means Value to Pay. Remember the space after ":" and after "R$" symbol. The value must be presented with 2 digits after the point.
 * 
 */

public class URI_1010 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int cProduct1 = sc.nextInt();
		int nUnits1 = sc.nextInt();
		double pUnits1 = sc.nextDouble();
		
		int cProduct2 = sc.nextInt();
		int nUnits2 = sc.nextInt();
		double pUnit2 = sc.nextDouble();
		
		double paid = (nUnits1 * pUnits1) + (nUnits2 * pUnit2);
		
		System.out.printf("VALOR A PAGAR: R$ %.2f\n", paid);
		sc.close();

	}

}
