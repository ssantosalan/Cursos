public class ClassificacaoClienteConta implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator([SELECT Id, Name, AnnualRevenue, ClassificacaoCliente__c
                                         FROM Account]);
    }

    public void execute(Database.BatchableContext BC, List<sObject> contaLista){
        AccountBO.getInstance().calcularClassificacaoClienteConta(contaLista);
        LogClassificacaoCliente__c log = new LogClassificacaoCliente__c();
        log.DataExecucao__c = System.today();
        insert log;
    }

    public void finish(Database.BatchableContext BC){
        List<LogClassificacaoCliente__c> logs = [SELECT Id, Finalizado__c
                                                 FROM LogClassificacaoCliente__c
                                                 ORDER BY CreatedDate DESC
                                                 LIMIT 1];
        if (!logs.isEmpty()){
            LogClassificacaoCliente__c log = logs[0];
            log.Finalizado__c = true;
            update log;
        }
    }

}