@isTest
public with sharing class AccountBOTest{
    @TestSetup
    static void makeData(){
        //Cria algumas contas de teste
        List<Account> todasContas = new List<account>();
        todasContas.add(new Account(Name = 'Conta 1', OwnerId = Userinfo.getUserId(), Match_Billing_Address__c = true));
        todasContas.add(new Account(Name = 'Conta 2', OwnerId = Userinfo.getUserId(), Match_Billing_Address__c = true));
        todasContas.add(new Account(Name = 'Conta 3', OwnerId = Userinfo.getUserId(), Match_Billing_Address__c = true));
        insert todasContas;
    }

    @isTest
    static void verificaQuantidadeConta(){
        List<Account> todasContas = [SELECT Id
                                     FROM Account];
        Integer quantidadeContasEsperada = 3;
        System.assertEquals(quantidadeContasEsperada, todasContas.size(), 'Quantidade de conta incorreta');
    }

    @isTest
    static void verificaCamposConta(){
        List<Account> todasContas = [SELECT Id, Name, Match_Billing_Address__c
                                     FROM Account];
        // Boolean matchEsperado = true;
        for (Account conta : todasContas){
            System.assertEquals(conta.Match_Billing_Address__c != null, conta.Match_Billing_Address__c, 'Match billing address incorreto!');
        }
    }

    // @isTest
    // static void seMatchBillingAdressTrue(){
    //     List<Account> todasContas = [SELECT Id, Name, Match_Billing_Address__c, BillingPostalCode, ShippingAddress
    //                                  FROM Account];
        
    // }

}