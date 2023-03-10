import java.lang.System.Logger;
import java.util.Arrays;
import java.util.List;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello, World!");
        System.out.println("Hello, World!");
        System.out.println("vamo");
        String[] Letras = "vamos".split("");
        System.out.println(Arrays.toString(Letras));
        var lista = List.of(1, 2, 3, 4, 5, 6, 7, 8);
        System.out.println(lista);
    }
}
