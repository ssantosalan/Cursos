public with sharing class Carro extends Automovel {
    public Carro(Decimal pvelocidade){
        velocidade = pvelocidade * 2;
    }
    public Carro(){
    }
    private Decimal velocidade {get; set;}   
    public Integer marchas {get; set;}   
}