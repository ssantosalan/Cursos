public with sharing class FicharioDAO{
    private static FicharioDAO instance = new FicharioDAO();
    public static FicharioDAO getInstance(){
        return instance;
    }

    public List<Fichario__c> buscarFichariosPorConta(Set<Id> setIdConta){
        List<Fichario__c> ficharios = new List<Fichario__c>();
        ficharios = [SELECT Id
                     FROM Fichario__c
                     WHERE AccountId__c IN:setIdConta];
                     
        return ficharios;
    }

}