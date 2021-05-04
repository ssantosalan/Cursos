import java.util.Scanner;

/*
In this problem, your job is to read three Portuguese words. These words define an animal according to the table below, from left to right. After, print the chosen animal defined by these three words. 

 
Input

The input contains 3 words, one by line, that will be used to identify the animal, according to the above table, with all letters in lowercase.

Output

Print the animal name according to the given input.

 */

public class URI_1049 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);	
		String spine = sc.next();
		String type = sc.next();
		String food = sc.next();
		
		if (spine.equalsIgnoreCase("vertebrado")) {
			if (type.equalsIgnoreCase("ave")) {
				if (food.equalsIgnoreCase("carnivoro")) {
					System.out.println("aguia");
				} else if (food.equalsIgnoreCase("onivoro")) {
					System.out.println("pomba");
				}
			} else if (type.equalsIgnoreCase("mamifero")) {
				if (food.equalsIgnoreCase("onivoro")) {
					System.out.println("homem");
				} else if (food.equalsIgnoreCase("herbivoro")) {
					System.out.println("vaca");
				}
			}
		} else if (spine.equalsIgnoreCase("invertebrado")) {
			if (type.equalsIgnoreCase("inseto")) {
				if (food.equalsIgnoreCase("hematofago")) {
					System.out.println("pulga");
				} else if (food.equalsIgnoreCase("herbivoro")) {
					System.out.println("lagarta");
				}
			} else if (type.equalsIgnoreCase("anelideo")) {
				if (food.equalsIgnoreCase("hematofago")) {
					System.out.println("sanguessuga");
				} else if (food.equalsIgnoreCase("onivoro")) {
					System.out.println("minhoca");
				}
			}
		}
		
		
		
		
		sc.close();

	}

}
