public with sharing class AccountDAO{
    private static AccountDAO instance = new AccountDAO();
    public static AccountDAO getInstance(){
        return instance;
    }

    // public void apagarFichario(List<Account> contas){
    //     List<Fichario__c> lstApagarFicharios = new List<Fichario__c>();
    //     Set<Id> idContas = new Set<Id>(contas);
    //     lstApagarFicharios = fichariosDAO.getInstance().buscarFichariosPorConta;
    // }
    // public List<Account> buscarQntContas(Set<Id> setContaId){
    //     List<Account> contas = new List<Account>();
    //     contas = [SELECT Id, Faturamento__c, (SELECT Id
    //                                           FROM Account
    //                                           WHERE ContaFaturamento__c = )
    //               FROM Account
    //               WHERE Id IN:setContaId];
    //     return contas;
    // }

}