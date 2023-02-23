@isTest
public with sharing class ExercicioSOQLTest{
    @TestSetup
    static void criarDado(){
        //Cria algumas contas de teste
        List<Account> todasContas = new List<account>();
        todasContas.add(new Account(Name = 'Conta 1', OwnerId = Userinfo.getUserId()));
        todasContas.add(new Account(Name = 'Conta 2', OwnerId = Userinfo.getUserId()));
        todasContas.add(new Account(Name = 'Conta 3', OwnerId = Userinfo.getUserId()));
        insert todasContas;
        // Chama o método que cria tarefas para as contas criadas acima
        // criaTaskParaAccount();   
        ExercicioSOQL.getInstance().criaTaskParaAccount(todasContas);
    }

    @isTest
    private static void criaTaskParaAccountTest(){
        // Verifica se as tarefas foram criadas corretamente
        Integer quantidadeEsperada = 3;
        Integer quantidadeTarefas = [SELECT COUNT() FROM Task];
        System.assertEquals(quantidadeEsperada, quantidadeTarefas, 'Função não criou tarefas para as contas da org');
    }

}