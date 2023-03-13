import java.lang.System.Logger;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        System.out.println("Hello, World!");
        System.out.println("vamo");
        String[] Letras = "vamos".split("");
        System.out.println(Arrays.toString(Letras));
        var lista = List.of(1, 2, 3, 4, 5, 6, 7, 8);
        System.out.println(lista);

        Integer inteiro = 10;

        int num = inteiro.intValue();

        String[] array = new String[] { "5", "4", "3", "2", "1" };

        int a = Integer.valueOf(Arrays.stream(array).collect(Collectors.joining("")));
        int b = Integer.valueOf(String.join("", array));
        
        int c = Integer.parseInt(String.join("", array));
        

        System.out.println(a);
        System.out.println(b);
        System.out.println(c);

    }
}
