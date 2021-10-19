
package cursopooaula05a;


public class CursoPOOAula05a {

    public static void main(String[] args) {
        Conta conta = new Conta(26, "cc", "Alan", 20000);
        
        conta.abrirConta();
        conta.mostrarConta();
        conta.fecharConta();
        conta.sacar(2000);
        conta.mostrarConta();
        conta.depositar(1000);
        conta.pagarMensal();
        conta.mostrarConta();
        System.out.println("");
        conta.sacar(19038);
        conta.setNumConta(30);
        conta.fecharConta();
        
        conta.mostrarConta();
        
        
    }

}
