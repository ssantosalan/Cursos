public with sharing class CriarCarro {

    @AuraEnabled
    public static Carro__c criarCarro(CarroTO carroTO) {
        try {
            Carro__c carro = new Carro__c(); 
            carro.Name = carroTO.nome;
            carro.Cor__c = carroTO.cor;
            carro.Velocidade__c = carroTO.velocidade;
            carro.Placa__c = carroTO.placa;
            
            insert carro;
            return carro;
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }

    public class CarroTO {
        
        @AuraEnabled
        public String nome {get; set;}

        @AuraEnabled
        public String cor {get; set;}

        @AuraEnabled
        public String placa {get; set;}

        @AuraEnabled
        public Decimal velocidade {get; set;}

    }

}