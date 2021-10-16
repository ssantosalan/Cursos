package cursopooaula02ex;

public class Garrafa {

    String cor;
    boolean tampada;
    boolean agua;

    void status() {
        System.out.println("Cor: " + this.cor);
        System.out.println("Tampada: " + this.tampada);
        System.out.println("Com água: " + this.agua);
    }
    
    void tampar() {
        this.tampada = true;
    }
    
    void destampar() {
        this.tampada = false;
    }
    
    void servirAgua() {
        if (this.agua == true && this.tampada == false) {
            System.out.println("Estou servindo água!");
        } else {
            System.out.println("ERRO! Não estou derramando água!");
        }
            
    }
}
