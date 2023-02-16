public abstract class ContaBancaria {
    protected Decimal entradasaldo {get; set;}
    private Decimal saldo {get; set;}
    public Decimal limite {get; set;}
    public void inicial(){
        saldo = entradasaldo;
    }
    public Boolean Sacar(Decimal saque){
        Boolean sucesso = false;
        Decimal valortotal = saldo + limite;
        if(saque <= valortotal){
            if(saque > saldo){
                saque = saque - saldo;
                saldo = 0;
                limite = limite - saque;
            }
            else{
                saldo = saldo - saque;
            }
            sucesso = true;
        }else{
            sucesso = false;
        }
        return sucesso;
    }
    public Decimal SaldoAtual(){
        return saldo + limite;
    }
}