/* Retorna os últimos 5 imóveis vendidos
 */
public with sharing class TabelaImovelVendidoController{
    @AuraEnabled()
    public static List<UltimosImoveisVendidoTO> obterUltimosImoveisVendidosCls(){

        List<Imovel__c> ultimosImoveisVendido = [SELECT Name, RecordType.Name, (SELECT Contact__r.Name, Valor__c
                                                                                FROM PropostasCompra__r
                                                                                WHERE Status__c = 'Finalizada')
                                                 FROM Imovel__c
                                                 WHERE Status__c = 'Vendido'
                                                 ORDER BY Status__c, LastModifiedDate DESC
                                                 LIMIT 5];

        List<UltimosImoveisVendidoTO> ultimosImoveisVendidoTOLista = new List<UltimosImoveisVendidoTO>();

        for (Imovel__c imovel : ultimosImoveisVendido){
            UltimosImoveisVendidoTO ultimosImoveisVendidoTO = new UltimosImoveisVendidoTO();
            ultimosImoveisVendidoTO.numeroImovel = imovel.Name;
            ultimosImoveisVendidoTO.tipoImovel = imovel.RecordType.Name;

            for (PropostaCompra__c proposta : imovel.PropostasCompra__r){
                ultimosImoveisVendidoTO.nomeCliente = proposta.Contact__r.Name;
                ultimosImoveisVendidoTO.valorVenda = proposta.Valor__c;
            }

            ultimosImoveisVendidoTOLista.add(ultimosImoveisVendidoTO);
        }

        return ultimosImoveisVendidoTOLista;
    }

    public class UltimosImoveisVendidoTO{
        @AuraEnabled
        public String numeroImovel{ get; set; }

        @AuraEnabled
        public String tipoImovel{ get; set; }

        @AuraEnabled
        public String nomeCliente{ get; set; }

        @AuraEnabled
        public Decimal valorVenda{ get; set; }

    }

}