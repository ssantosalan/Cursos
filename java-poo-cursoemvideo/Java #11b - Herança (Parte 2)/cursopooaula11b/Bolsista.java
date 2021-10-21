
package cursopooaula11b;

public class Bolsista extends Aluno {
    private float bolsa;
    
    public void renovarBolsa() {
        System.out.println("RENOVOU BOLSA DE + " + this.nome);
    }
    
    @Override
    public void pagarMensalidade() {
        System.out.println(this.nome + " é bolsista! Pagamente facilitado!"); 
    }

    public float getBolsa() {
        return bolsa;
    }

    public void setBolsa(float bolsa) {
        this.bolsa = bolsa;
    }
    
    
    
}
