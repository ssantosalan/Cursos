import java.util.Scanner;

/*
The company ABC decided to give a salary increase to its employees, according to the following table:

Salary 	                Readjustment Rate

0 - 400.00                   15%
400.01 - 800.00              12%
800.01 - 1200.00             10%
1200.01 - 2000.00             7%
Above 2000.00                 4%
	

Read the employee's salary, calculate and print the new employee's salary, as well the money earned and the increase percentual obtained by the employee, with corresponding messages in Portuguese, as the below example.

Input

The input contains only a floating-point number, with 2 digits after the decimal point.
Output

Print 3 messages followed by the corresponding numbers (see example) informing the new salary, the among of money earned and the percentual obtained by the employee. Note:
Novo salario:  means "New Salary"
Reajuste ganho: means "Money earned"
Em percentual: means "In percentage"





 */
public class URI_1048 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double salary = sc.nextDouble();
		double correction;
		
		if (salary >= 0 && salary <= 400) {
			correction = (salary * 0.15);
			salary = salary + correction;
			
			System.out.printf("Novo salario: %.2f\n", salary);
			System.out.printf("Reajuste ganho: %.2f\n", correction);
			System.out.println("Em percentual: 15 %");
		} else if (salary > 400 && salary <= 800) {
			correction = (salary * 0.12);
			salary = salary + correction;
			
			System.out.printf("Novo salario: %.2f\n", salary);
			System.out.printf("Reajuste ganho: %.2f\n", correction);
			System.out.println("Em percentual: 12 %");
		} else if (salary > 800 && salary <= 1200) {
			correction = (salary * 0.10);
			salary = salary + correction;
			
			System.out.printf("Novo salario: %.2f\n", salary);
			System.out.printf("Reajuste ganho: %.2f\n", correction);
			System.out.println("Em percentual: 10 %");
		} else if (salary > 1200 && salary <= 2000) {
			correction = (salary * 0.07);
			salary = salary + correction;
			
			System.out.printf("Novo salario: %.2f\n", salary);
			System.out.printf("Reajuste ganho: %.2f\n", correction);
			System.out.println("Em percentual: 7 %");
		} else if (salary > 2000) {
			correction = (salary * 0.04);
			salary = salary + correction;
			
			System.out.printf("Novo salario: %.2f\n", salary);
			System.out.printf("Reajuste ganho: %.2f\n", correction);
			System.out.println("Em percentual: 4 %");
		}
		
		
		
		
		
		
		
		sc.close();

	}

}
