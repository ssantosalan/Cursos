import java.lang.System.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import humanos.Padeiro;

public class App {
  public static void main(String[] args) throws Exception {
    System.out.println("Hello, World!");
    List<String> list = new ArrayList<String>();
    list.add("alan");

    System.out.println(list.toString());
    int[] array = { 2, 4, 1 };
    List<Integer> numeros = new ArrayList<Integer>();
    numeros.add(2);
    numeros.add(11);
    numeros.add(1);
    Collections.sort(numeros, Comparator.naturalOrder());
    System.out.println(numeros);
    String word = "Alan Silva dos Santos";
    System.out.println(Arrays.toString(word.split(" ")));

    Padeiro padeiro = new Padeiro();
    padeiro.setNome("Alan");
    padeiro.setIdade((18));
    padeiro.apresentar("Alan"); 
    padeiro.apresentar("Alan"); 
    System.out.println("Eu sou o " + padeiro.nome + " e tenho " + padeiro.idade);

    int[] result = Codewars.take(new int[]{0, 1, 2, 3, 5, 8, 13}, 3);
    System.out.println(Arrays.toString(result));
    List<Integer> lista = new ArrayList<Integer>();
    lista.add(1);
    lista.add(2);
    lista.add(0);
    lista.sort(null);
    System.out.println(lista);
    int numero = 5566;
    char[] digitos = String.valueOf(numero).toCharArray();
    System.out.println(Arrays.toString(digitos));
    System.out.println(
      "alan ");
      System.out.println("teste");
  }
}
