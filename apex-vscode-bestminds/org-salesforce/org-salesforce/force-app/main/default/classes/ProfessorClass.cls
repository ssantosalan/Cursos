public with sharing class ProfessorClass{
    public class ProfessorClass{
        public static void atualizarNomeConta(List<Account> accountList){
            System.debug('# Método AccountBO >> atualizarNomeConta >>> accountList >>> ' + accountList);
            // Carrego Set de idAccountSet        Set<Id> idAccountSet = new Set<Id>();
            for (Account conta : accountList){
                idAccountSet.add(conta.Id);
            }
            //Chamar método futuro        atualizarNomeContaFuture(idAccountSet, 'EMPRESA - ');
        }

        @future
        public static void atualizarNomeContaFuture(Set<Id> idAccountSet, String nomePadrao){
            System.debug('# Método AccountBO >> atualizarNomeContaFuture >>> idAccountSet >>> ' + idAccountSet);
            System.debug('# Método AccountBO >> atualizarNomeContaFuture >>> nomePadrao >>> ' + nomePadrao);
            // Busca das Contas para atualizar o nome        List<Account> accountList = new List<Account>();
            accountList = [SELECT Id, Name
                           FROM Account
                           WHERE Id IN:idAccountSet];
            System.debug('# Método AccountBO >> atualizarNomeContaFuture >>> accountList >>> ' + accountList);
            // Outra forma de codificar a busca        //List<Account> accountList = [SELECT Id, Name FROM Account WHERE Id IN: idAccountSet];        List<Account> accountUpdateList = new List<Account>();
            for (Account conta : accountList){
                conta.Name = nomePadrao + conta.Name;
                accountUpdateList.add(conta);
            }
            System.debug('# Método AccountBO >> atualizarNomeContaFuture >>> accountUpdateList >>> ' + accountUpdateList);
            update accountUpdateList;
        }

        @future
        public static void integrarConta(String jsonConta){
            System.debug('# Método AccountBO >> integrarConta');
            List<Account> accountList = (List<Account>)JSON.deserialize(jsonConta, List<Account>.class);
            List<Account> accountUpdateList = new List<Account>();
            for (Account conta : accountList){
                conta.IntegrarConta__c = true;
                accountUpdateList.add(conta);
            }
            System.debug('# Método AccountBO >> integrarConta >>> accountUpdateList >>> ' + accountUpdateList);
            update accountUpdateList;
        }

        public static void marcarContaIntegracao(List<Account> contaList){
            System.debug('# Método AccountBO >> marcarContaIntegracao >>> contaList >>> ' + contaList);
            String jsonConta = JSON.serialize(contaList);
            System.debug('# Método AccountBO >> integrarConta >>> jsonConta >>> ' + jsonConta);
            integrarConta(jsonConta);
        }

    }

}