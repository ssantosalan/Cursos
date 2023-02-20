// Exercício 1 parte 2
// Cria uma classe Batch para atualizar casos sem contato
public with sharing class SegundoBatch implements Database.Batchable<SObject>{
    public Database.QueryLocator start(Database.BatchableContext BC){
        // Busca todos os casos criados nos últimos 5 dias sem nenhum contato associado
        Datetime dataDeCorte = Datetime.now().addDays(-5);
        return Database.getQueryLocator([SELECT Id, ContactId
                                         FROM Case
                                         WHERE CreatedDate >= :dataDeCorte AND ContactId = null]);
    }

    public void execute(Database.BatchableContext BC, List<Case> casosSemContato){
        try{
            // Busca o contato criado para receber os casos sem contato
            Contact contact = [SELECT Id
                               FROM Contact
                               WHERE Name = 'Novo contato Alan'
                               LIMIT 1];

            // Atualiza o campo de Contato para o novo contato criado
            if (contact != null){
                for (Case caso : casosSemContato){
                    caso.ContactId = contact.Id;
                }
                update casosSemContato;
            }
        } catch (Exception e){
            System.debug('Ocorreu um erro durante a execução do Batch: ' + e.getMessage());
        }
    }

    public void finish(Database.BatchableContext BC){
        // Nada a fazer ao finalizar a execução
    }

}

// Inicia a execução da Batch
// SegundoBatch batch = new SegundoBatch();
// Database.executeBatch(new SegundoBatch(batch));