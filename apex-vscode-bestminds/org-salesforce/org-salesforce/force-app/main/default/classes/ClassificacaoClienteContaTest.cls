@isTest
public with sharing class ClassificacaoClienteContaTest{
    @TestSetup
    static void makeData(){
        List<Account> contasLista = new List<Account>();
        contasLista.add(new Account(Name = 'Conta Teste 1', AnnualRevenue = 5000));
        contasLista.add(new Account(Name = 'Conta Teste 2', AnnualRevenue = 5001));
        contasLista.add(new Account(Name = 'Conta Teste 3', AnnualRevenue = 500000));
        contasLista.add(new Account(Name = 'Conta Teste 4', AnnualRevenue = 500001));
        insert contasLista;
        Database.executeBatch(new ClassificacaoClienteConta());
    }

    @isTest
    static void testClassificacaoClienteContaBatch(){
        List<Account> contasAtualizadas = [SELECT Id, ClassificacaoCliente__c
                                           FROM Account];

        System.assertEquals(4, contasAtualizadas.size(), 'Deveria ter 3 contas atualizadas');
        System.assertEquals('Prata', contasAtualizadas[0].ClassificacaoCliente__c, 'A conta 1 deveria ser classificada como Prata');
        System.assertEquals('Ouro', contasAtualizadas[1].ClassificacaoCliente__c, 'A conta 2 deveria ser classificada como Ouro');
        System.assertEquals('Ouro', contasAtualizadas[2].ClassificacaoCliente__c, 'A conta 3 deveria ser classificada como Ouro');
        System.assertEquals('Diamante', contasAtualizadas[3].ClassificacaoCliente__c, 'A conta 4 deveria ser classificada como Diamante');
    }

}