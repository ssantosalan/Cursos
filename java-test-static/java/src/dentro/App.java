package dentro;
import testefora.ClasseFora;

public class App {
    public static void main(String[] args) throws Exception {
        System.out.println("Hello,  World!");

        Teste teste = new Teste();
        teste.testar();

        ClasseFora cf = new ClasseFora();
        cf.testar2();

        ClasseFora.testar2();
    }
}
