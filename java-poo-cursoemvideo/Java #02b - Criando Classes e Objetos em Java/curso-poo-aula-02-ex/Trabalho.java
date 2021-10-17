
package cursopooaula02ex;


public class Trabalho {
    boolean folga;
    String horario;
    String area;
    String diaDeTrabalho;
    
    void folgar() {
        this.folga = true;
    }    
    
    void desfolgar() {
        this.folga = false;
    }
    
    void status () {
        System.out.println("Folga: " + this.folga);
        System.out.println("Horário: " + this.horario);
        System.out.println("Área: " + this.area);
        System.out.println("Dia de trabalho: " + this.diaDeTrabalho);
    }
    
}
