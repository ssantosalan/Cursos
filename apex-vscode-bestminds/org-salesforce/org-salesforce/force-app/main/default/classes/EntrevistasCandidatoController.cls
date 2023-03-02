public with sharing class EntrevistasCandidatoController{
    @AuraEnabled
    public static List<EntrevistaTO> obterEntrevista(Id candidatoId){

        // Consulta as vagas que o CandidatoVaga__c participou
        List<CandidatoVaga__c> candidatoVagasLista = [SELECT Id, Vaga__c, Vaga__r.Status__c, Vaga__r.Name__c, (SELECT Id, DataEntrevista__c, DetalhesEntrevista__c
                                                                                                               FROM Entrevistas__r)
                                                      FROM CandidatoVaga__c
                                                      WHERE Candidato__c = :candidatoId];


        //Percorre as candidatoVagasLista para extrair as informações das entrevistas
        List<EntrevistaTO> entrevistasLista = new List<EntrevistaTO>();

        for (CandidatoVaga__c candidatoVaga : candidatoVagasLista){
            for (Entrevista__c entrevista : candidatoVaga.Entrevistas__r){
                EntrevistaTO entrevistaTO = new EntrevistaTO();
                entrevistaTO.vagaNome = candidatoVaga.Vaga__r.Name__c;
                entrevistaTO.vagaStatus = candidatoVaga.Vaga__r.Status__c;
                entrevistaTO.entrevistaData = entrevista.DataEntrevista__c;
                entrevistaTO.entrevistaDetalhes = entrevista.DetalhesEntrevista__c;

                entrevistasLista.add(entrevistaTO);
            }
        }
        return entrevistasLista;
    }

    public class EntrevistaTO{
        @AuraEnabled
        public String vagaNome{ get; set; }

        @AuraEnabled
        public String vagaStatus{ get; set; }

        @AuraEnabled
        public Datetime entrevistaData{ get; set; }

        @AuraEnabled
        public String entrevistaDetalhes{ get; set; }

    }

}