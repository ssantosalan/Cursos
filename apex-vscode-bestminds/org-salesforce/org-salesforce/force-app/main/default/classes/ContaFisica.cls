public class ContaFisica extends ContaBancaria {
    public ContaFisica(Decimal psaldo){
        entradasaldo = psaldo;
        inicial();
    }
    public String cpf {get; set;}
}