public with sharing class ProfessorBatchClass{
    // public with sharing class ProfessorBatchClass implements Database.Batchable<sObject>{
    //     public Database.QueryLocator start(Database.BatchableContext bc){
    //         return Database.getQueryLocator([SELECT Id
    //                                          FROM Case
    //                                          WHERE ContactId = null AND Status != 'Closed']);
    //     }

    //     public void execute(Database.BatchableContext bc, List<Case> casoList){
    //         CaseBO.fecharCasoSemContato(casoList);
    //         // public static void fecharCasoSemContato(List<Case> casoList){
    //         //     List<Case> casoAtualizarList = new List<Case>();
    //         //     for (Case caso : casoList){
    //         //         caso.Status = 'Closed';
    //         //         casoAtualizarList.add(caso);
    //         //     }
    //         //     update casoAtualizarList;
    //         }

    //     }

    //     public void finish(Database.BatchableContext bc){
    //     }

    // }

    // // Como executar o batch manualmenteFecharCasosBatch fecharCasosBatch = new FecharCasosBatch();
    // Database.executeBatch(fecharCasosBatch);