public class ReprovarPropostasBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext context){
        Date dataDeCorte = Date.today().addMonths(-1);
        return Database.getQueryLocator([SELECT Id, Name
                                         FROM PropostaCompra__c
                                         WHERE Status__c = 'Aguardando pagamento' AND CreatedDate < :dataDeCorte]);
    }

    public void execute(Database.BatchableContext context, List<PropostaCompra__c> propostasVencidasLista){
        List<PropostaCompra__c> propostasAtualizarLista = new List<PropostaCompra__c>();
        for (PropostaCompra__c proposta : propostasVencidasLista){
            proposta.Status__c = 'Reprovada';
            propostasAtualizarLista.add(proposta);
        }
        update propostasAtualizarLista;
    }

    public void finish(Database.BatchableContext context){
        // Nada a ser feito
    }

}