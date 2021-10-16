
package cursopooaula02ex;


public class CursoPOOAula02EX {

    public static void main(String[] args) {
        Garrafa garrafa = new Garrafa();
        garrafa.cor = "Preta";
        garrafa.agua = true;
        garrafa.tampada = false;
        
        garrafa.status();
        garrafa.servirAgua();
    }

}
