public with sharing class LogClassificacaoClienteBO{
    private static LogClassificacaoClienteBO instance = new LogClassificacaoClienteBO();
    public static LogClassificacaoClienteBO getInstance(){
        return instance;
    }

    public void criarLogClassificacaoCliente(){
        LogClassificacaoCliente__c log = new LogClassificacaoCliente__c();
        log.DataExecucao__c = System.today();
        insert log;
    }

}