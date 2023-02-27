public with sharing class MundoController{
    @AuraEnabled
    public static Mundo__c criarMundo(MundoTO mundoTO){
        Mundo__c mundo = new Mundo__c();
        mundo.Name = mundoTO.nome;
        mundo.DistanciaSol__c = mundoTO.distanciaSol;
        mundo.Tamanho__c = mundoTO.tamanho;
        mundo.Cor__c = mundoTO.cor;
        mundo.QuantidadeLuas__c = mundoTO.quantidadeLuas;
        mundo.PossuiAgua__c = mundoTO.possuiAgua;


        insert mundo;
        return mundo;
    }

    @AuraEnabled
    public static List<MundoTO> obterMundo(){
        List<Mundo__c> mundosLista = new List<Mundo__c>();
        mundosLista = [SELECT Id, Name, DistanciaSol__c, Tamanho__c, Cor__c, QuantidadeLuas__c, PossuiAgua__c
                       FROM Mundo__c];

        List<MundoTO> mundoTOLista = new List<MundoTO>();

        for (Mundo__c mundo : mundosLista){
            MundoTO mundoTO = new MundoTO();
            mundoTO.id = mundo.Id;
            mundoTO.nome = mundo.Name;
            mundoTO.distanciaSol = mundo.DistanciaSol__c;
            mundoTO.tamanho = mundo.Tamanho__c;
            mundoTO.cor = mundo.Cor__c;
            mundoTO.quantidadeLuas = mundo.QuantidadeLuas__c;
            mundoTO.possuiAgua = mundo.PossuiAgua__c;
            mundoTOLista.add(mundoTO);
        }

        return mundoTOLista;
    }

    public class MundoTO{
        @AuraEnabled
        public Id id{ get; set; }

        @AuraEnabled
        public String nome{ get; set; }

        @AuraEnabled
        public String cor{ get; set; }

        @AuraEnabled
        public Decimal distanciaSol{ get; set; }

        @AuraEnabled
        public Decimal tamanho{ get; set; }

        @AuraEnabled
        public Decimal quantidadeLuas{ get; set; }

        @AuraEnabled
        public Boolean possuiAgua{ get; set; }

    }

}