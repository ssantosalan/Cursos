import java.util.Arrays;
import java.util.List;
public class App {
  public static void main(String[] args) throws Exception {   
    System.out.println(); 
    String[] palavras = new String[]{"Barbara", "Oliveira", "Drops"};
    System.out.println(Arrays.toString(palavras));
  
    System.out.println(SmashWords.smash(palavras));
    System.out.println(SmashWords.smash2(palavras));
    System.out.println(SmashWords.smash3(palavras));
    System.out.println(SmashWords.smash4(palavras));
    

  }
}
