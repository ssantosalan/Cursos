import java.lang.System.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import entities.Aluno;

public class App {
    public static void main(String[] args) throws Exception {
        Aluno aluno1 = new Aluno("Alan", "431.331.331.00", "SENAC", "Último ano");

        System.out.println(aluno1);

        System.out.println("The future is now baby");
    }

}
