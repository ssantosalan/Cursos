
package cursopooaula02ex;


public class CursoPOOAula02EX {

    public static void main(String[] args) {
        Garrafa garrafa = new Garrafa();
        garrafa.cor = "Preta";
        garrafa.agua = true;
        garrafa.tampada = false;
        
        garrafa.status();
        garrafa.servirAgua();
        System.out.println("");
        Trabalho trabalho = new Trabalho();
        trabalho.folga = true;
        trabalho.horario = "9h às 16h";
        trabalho.area = "Tecnologia";
        trabalho.diaDeTrabalho = "Segunda à sexta";
        
        trabalho.status();
        
        trabalho.desfolgar();
        
        trabalho.status();
        
    }

}
