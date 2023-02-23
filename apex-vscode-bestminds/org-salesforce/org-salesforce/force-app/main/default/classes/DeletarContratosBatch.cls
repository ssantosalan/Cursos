// Exercício 1 parte 1
public with sharing class DeletarContratosBatch implements Database.Batchable<sObject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([SELECT Id, Description
                                         FROM Contract]);
    }

    public void execute(Database.BatchableContext bc, List<Contract> contratos){
        // Processa cada lote de registros retornado pelo QueryLocator.
        if (contratos.isEmpty()){
            return;
        }
        List<Contract> contratosDeletar = new List<Contract>();

        for (Contract contrato : contratos){
            if (contrato != null && contrato.Description != null && contrato.Description.contains('Contract created for Opportunity')){
                contratosDeletar.add(contrato);
            }
        }

        if (!contratosDeletar.isEmpty()){
            delete contratosDeletar;
        }
    }

    public void finish(Database.BatchableContext bc){
        // Executa qualquer lógica final após o processamento de todos os lotes.
        System.debug('DEBUG >>> PrimeiroBatch >>> Finished');
    }

}

// DeletarContratosBatch deletarContratos = new DeletarContratosBatch();
// database.executeBatch(deletarContratos);