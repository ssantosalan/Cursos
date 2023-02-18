public with sharing class PrimeiroBatch implements Database.Batchable<sObject>{
    // Atualizar endereço de contato
    public Database.QueryLocator start(Database.BatchableContext bc){
        // Receber lista de Contatos.
        return Database.getQueryLocator([SELECT Id, AccountId FROM Contact]); 
    }

    public void execute(Database.BatchableContext bc, List<SObject> scope){
        // Processa cada lote de registros retornado pelo QueryLocator.
        CaseBO.preencherEnderecoContato(casoList);
        for (SObject record : scope){
            // Lógica de processamento aqui.
            System.debug('Nome da conta: ' + record.get('Name'));
        }



    }

    public void finish(Database.BatchableContext bc){
        // Executa qualquer lógica final após o processamento de todos os lotes.
    }

}

// MeuBatch batch = new MeuBatch();
// Database.executeBatch(batch);
