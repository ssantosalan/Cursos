package cursopooaula05a;

public class Conta {

    public int numConta;
    protected String tipo; //corrente ou poupança
    private String dono; //nome do dono
    private double saldo; //quanto de dinheiro tem na conta
    private boolean status; //se ela tá aberta ou fechada
    
    
    //método construtor
    public Conta(int numConta, String tipo, String dono, double saldo) {
        this.numConta = numConta;
        this.tipo = tipo;
        this.dono = dono;
        this.saldo = saldo;
    }
    
    public int getNumConta() {
        return numConta;
    }

    public void setNumConta(int numConta) {
        this.numConta = numConta;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDono() {
        return dono;
    }

    public void setDono(String dono) {
        this.dono = dono;
    }

    public double getSaldo() {
        return saldo;
    }

    public void setSaldo(double saldo) {
        this.saldo = saldo;
    }
    
    public boolean getStatus() {
        return this.status;
    }
    
    public void setStatus(boolean status) {
        this.status = status;
    }

    public void abrirConta() {
        this.status = true;
        if (this.tipo.equals("cc")) {
            this.saldo += 50;
        } else if (this.tipo.equals("cp")) {
            this.saldo += 150;
        }
    }

    public void fecharConta() {
        if (this.saldo == 0) {
            this.status = false;
        } else if (this.saldo < 0) {
            System.out.println("Conta com débido! Não poderá ser fechada!");
        } else if (this.saldo > 0) {
            System.out.println("Conta com saldo! Não poderá ser fechada!");
        }
          
    }

    public void depositar(double saldo) {
        if (this.status == true) {
            this.saldo += saldo;
        } else {
            System.out.println("Erro! Conta fechada!");
        }
    }

    public void sacar(double saldo) {
        if (this.status == true) {
            if (this.saldo >= saldo) {
                this.saldo = this.saldo - saldo;
            } else {
                System.out.println("Saldo indisponível!");
            }
       
        }
    }

    public void pagarMensal() {
        if (this.tipo.equals("cc")) {
            this.saldo -= 12;
        } else if (this.tipo.equals("cp")) {
            this.saldo -= 20;
        }
    }
    
    public void mostrarConta() {
        System.out.println("Número conta: " + this.numConta);
        System.out.println("Tipo: " + this.tipo);
        System.out.println("Dono: " + this.dono);
        System.out.println("Saldo: " + this.saldo);
        System.out.println("Status da conta: " + this.status);
    }

}
