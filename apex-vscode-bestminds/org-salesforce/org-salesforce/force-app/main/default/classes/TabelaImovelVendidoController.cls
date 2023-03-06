public with sharing class TabelaImovelVendidoController{
    @AuraEnabled(cacheable = true)
    public static List<PropostaCompra__c> obterUltimosImoveisVendidosCls(){
        return [SELECT Imovel__r.Name, Imovel__r.RecordType.Name, Contact__r.Name, Valor__c
                FROM PropostaCompra__c
                WHERE Status__c = 'Finalizada'
                ORDER BY CreatedDate DESC
                LIMIT 5];
    }

}