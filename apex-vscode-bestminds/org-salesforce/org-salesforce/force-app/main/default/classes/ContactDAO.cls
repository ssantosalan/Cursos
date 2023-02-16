public with sharing class ContactDAO{
    public static ContactDAO instance = new ContactDAO();
    public static getInstance(){
        return instance;
    }
    // public List<Account> buscaQntJogadoresHomo(Set<Id> setId){
    //     List<Accounts> contas = new List<Accounts>();
    //     contas = [SELECT Id, QntHomossexuais, (SELECT Id
    //                           FROM Contact
    //                           WHERE Sexualidade__c = 'Homossexual')
    //               FROM Account WHERE Id IN : setId];

    //     return contas;
    // }

}