import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        List<String> list = new ArrayList<String>();
        list.add("alan");
    
        System.out.println(list.toString());
        int[] array = {2, 4, 1};
        List<Integer> numeros = new ArrayList<Integer>();
        numeros.add(2);
        numeros.add(11);
        numeros.add(1);
        Collections.sort(numeros, Comparator.naturalOrder());
        System.out.println(numeros);
    }
}
