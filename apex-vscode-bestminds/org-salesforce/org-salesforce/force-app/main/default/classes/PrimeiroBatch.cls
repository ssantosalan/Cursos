public with sharing class PrimeiroBatch implements Database.Batchable<sObject>{
    // Atualizar endereço de contato
    public Database.QueryLocator start(Database.BatchableContext bc){
        // Receber lista de Contatos.
        return Database.getQueryLocator([SELECT Id
                                         FROM Account]);
    }

    public void execute(Database.BatchableContext bc, List<Account> contasLista){
        // Processa cada lote de registros retornado pelo QueryLocator.
        AccountBO.getInstance().atualizarEnderecosDeContaEContato(contasLista);
    }

    public void finish(Database.BatchableContext bc){
        // Executa qualquer lógica final após o processamento de todos os lotes.
    }

}