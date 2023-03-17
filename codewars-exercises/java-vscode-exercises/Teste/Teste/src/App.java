import java.lang.System.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class App {
    public static void main(String[] args) throws Exception {
        List<String> carroLista = new ArrayList<>();
        String carro = "";
        for (int i = 1; i <= 5; i++) {
            carro = "carro " + i;
            carroLista.add(carro);
        }

        System.out.println(carroLista);
    }

}
