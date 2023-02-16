public with sharing class SOQL{
    //1
    public List<Contract> getContrato(){
        List<Contract> contractList = [SELECT Id, ContractNumber
                                       FROM Contract];

        return contractList;
    }

    //2
    public List<Contract> getContractStatusActivated(){
        List<Contract> contractList = [SELECT Id, ContractNumber
                                       FROM Contract
                                       WHERE Status = 'Activated'];

        return contractList;
    }

    // 3
    // public List<Contract> getListaBonusCliente(String ID){
    //     List<Contract> bonusList = [SELECT Bonus
    //                                 FROM Contract
    //                                 WHERE Id = :ID];
    //     return bonusList;
    // }
    // 5
    public Integer getQuantidadeStatusAberto(){
        List<Contract> contractList = [SELECT Id, ContractNumber
                                       FROM Contract
                                       WHERE Status = 'Draft'];

        return contractList.size();
    }

    //6
    public List<Contract> getSomaTodasParcelasContrato(String ID){

        List<Contract> contractList = [SELECT Status
                                       FROM Contract
                                       WHERE Id = :ID];
        return contractList;
    }

    // Próximo exercício
    // 0.
    public void getContasComNomeTeste(){
        List<Account> contas = [SELECT Id, Name
                                FROM Account ];

        for (Account conta : contas){
            if (conta.Name.toLowerCase().contains('teste')){
                System.debug(conta);
            }
        }
    }

    // 1.
    public void createTaskToAllAccounts(){

        List<Task> taskToBeCreated = new List<Task>();

        for (Account conta : [SELECT Id
                              FROM Account]){
            Task task = new Task();
            task.Subject = 'Call';
            task.Status = 'Not Started';
            task.Priority = 'Normal';
            task.WhatId = conta.Id;
            // task.OwnerId = conta.Owner.Id;
            taskToBeCreated.add(task) ;

        }

        if (taskToBeCreated.size() > 0){
            insert taskToBeCreated;
        }
    }

    public void deleteAllTask(){

        List<task> allTasks = [SELECT Id
                               FROM Task];

        if (allTasks.size() > 0){
            delete allTasks;
        }
    }

    //Exercícios de SOQL
    //1
    public void atualizaValorOportunidade(String ID, Decimal amount){

        List<Opportunity> opportunityList = [SELECT Id
                                             FROM Opportunity
                                             WHERE Id = :ID];


        for (Opportunity opportunity : opportunityList){
            opportunity.Amount = amount;
        }

        if (opportunityList.size() > 0){
            update opportunityList;
        }
    }

    //2
    public void atualizaAccountCampoAtivoParaFalso(String ID){
        Account account = [SELECT Id
                           FROM Account
                           WHERE Id = :ID];

        account.Ativo__c = false;

        update account;
    }

    //3
    // public Boolean criarContatoCliente(String ID, String nome, String cargo, Date dataNascimento, String email){
    //     // Account account = [SELECT Id
    //     //                    FROM Account
    //     //                    WHERE Id = :ID];
    //     try{
    //         for (Account account : [SELECT Id
    //                                 FROM Account
    //                                 WHERE Id = :ID]){
    //             Contact contatoSeraCriado = new Contact();
    //             contatoSeraCriado.LastName = nome;
    //             contatoSeraCriado.Title = cargo;
    //             contatoSeraCriado.Birthdate = dataNascimento;
    //             contatoSeraCriado.Email = email;
    //             insert contatoSeraCriado;
    //         }
    //         return true;
    //     } catch (Exception e){
    //         return false;
    //     }
    // }
    //Exercício controle de fluxo
    //4.
    public class StatusContaException extends Exception{
    }

    public void criarCasoParaCliente(Id ID){

        Account conta = [SELECT Id, Ativo__c, Name
                         FROM Account 
                         WHERE Id = :ID];


        try{
            if (conta.Ativo__c == false){
                throw new StatusContaException('Cliente deve estar ativo para criar um caso!');
            }

            // if (!conta.Contacts.isEmpty()){
            //     throw new StatusContaException('É necessário de um contato para o caso!');
            // }

            criarCaso(conta);

        } catch (StatusContaException e){

        }
    }

    //5
    public void criarCaso(Account conta){
        Case caso = new Case();
        caso.AccountId = conta.Id;
        caso.Subject = conta.Name + ' - Sinistro';
        caso.Origin = 'Phone';
        insert caso;
    }

    //5
    // public void criaCasoParaCliente(Id conta){
    //     Account cliente = [Select Id, Name, Active__c, (SELECT Id
    //                                                     FROM Contacts)
    //                        FROM Account
    //                        WHERE Id = :conta];
    //     System.debug(JSON.serialize(cliente));
    //     if (cliente.Active__c == 'No'){
    //         Throw new caseException('O cliente deve estar ativo para criar um caso.');
    //     }
    //     if (cliente.Contacts.isEmpty()){
    //         Throw new caseException('O cliente deve ter ao menos um contato relacionado para que o caso seja criado.');
    //     }
    //     createCase(cliente);
    // }
    //feito pelo prof
    //
    //     public class caseException extends Exception{}
    //     public void criaCasoParaCliente(Id conta){
    //         Account cliente = [Select Id, Name, Active__c,(SELECT Id FROM Contacts) FROM Account WHERE Id = :conta];
    //         System.debug(JSON.serialize(cliente));
    //         if(cliente.Active__c == 'No'){
    //             Throw new caseException('O cliente deve estar ativo para criar um caso.');
    //         }
    //         if(cliente.Contacts.isEmpty()){
    //             Throw new caseException('O cliente deve ter ao menos um contato relacionado para que o caso seja criado.');
    //         }
    //         createCase(cliente);
    //     }
    //     private void createCase(Account conta){
    //         Case caso = new Case();
    //         caso.Subject = conta.Name + ' – Sinistro3';
    //         caso.AccountId = conta.Id;
    //         caso.ContactId = conta.Contacts[0].Id;
    //         insert caso;
    //     }
    private void createCase(Account conta){
        Case caso = new Case();
        caso.Subject = conta.Name + ' - Sinistro3';
        caso.AccountId = conta.Id;
        caso.ContactId = conta.Contacts[0].Id;
        insert caso;
    }

    //Exercício
    //1.
    //2.
    public void atualizaTeste(){
        Account conta = [SELECT Id, Name, RecordType.Name
                         FROM Account 
                         WHERE Account.RecordType.Name IN ('Teste')
                         LIMIT 1];
        try{
            conta.Name = '';
            update conta;
        } catch (StatusContaException error){
            String erro = error.getMessage();
            System.debug(erro);
        } catch (Exception error){
            String erro = error.getMessage();
        }
    }

    // 2.2
    public void atualizaContatoDaContaTeste(){
        List<Contact> listaContacts = [SELECT Id
                                       FROM Contact
                                       WHERE Account.RecordType.Name IN ('Teste')];

        try{
            for (Integer i = 0; i < listaContacts.size(); i++){
                if (Math.mod(i, 2) == 0){
                    listaContacts[i].LastName = 'A';
                } else{
                    listaContacts[i].LastName = 'B';
                }

            }
            update listaContacts;
        } catch (StatusContaException error){
            String erro = error.getMessage();
            System.debug(erro);
        }
    }

    //feito pelo prof
    // 2.2
    // Id devRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('teste').getRecordTypeId();
    // System.debug(devRecordTypeId);
    // List<Account> contas = new List<Account>();
    // for (Integer i = 0; i < 10; i++){
    //     Account novaConta = new Account();
    //     novaConta.Name = ('exercicioSOQL - ' + i);
    //     novaConta.RecordTypeId = devRecordTypeId;
    //     contas.add(novaConta);
    // }
    // insert contas;
    /// 1
    // Id devRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('teste').getRecordTypeId();
    // System.debug(devRecordTypeId);
    // List<Account> contas = new List<Account>();
    // for (Integer i = 0; i < 10; i++){
    //     Account novaConta = new Account();
    //     novaConta.Name = ('exercicioSOQL - ' + i);
    //     novaConta.RecordTypeId = devRecordTypeId;
    //     contas.add(novaConta);
    // }
    // insert contas;
    // List<Contact> contatos = new List<Contact>();
    // for (Account conta : contas){
    //     Contact contato = new Contact();
    //     contato.AccountId = conta.Id;
    //     contato.FirstName = 'contato-' + conta.Name;
    //     contato.LastName = 'xpto-' + conta.Name;
    //     contatos.add(contato);
    // }
    // insert contatos;
    // List<Case> casos = new List<Case>();
    // for (Contact contato : contatos){
    //     Case novoCaso = new Case();
    //     novoCaso.AccountId = contato.AccountId;
    //     novoCaso.ContactId = contato.Id;
    //     casos.add(novoCaso);
    // }
    // system.debug(JSON.serialize(casos));
    // insert casos;
    //2
    // Id devRecordTypeId = Schema.SObjectType.Account.getRecordTypeInfosByName().get('teste').getRecordTypeId();
    // List<Account> contasExercicio = [Select Id, Name, RecordTypeId, (SELECT Id, FirstName
    //                                                                  FROM Contacts)
    //                                  FROM Account 
    //                                  WHERE RecordTypeId = :devRecordTypeId];
    // Set<Id> accountIds = new Set<Id>();
    // for (Account conta : contasExercicio){
    //     accountIds.add(conta.Id);
    // }
    // List<Contact> contatos =  //alternativa: new List<Contact>();
    // [SELECT Id, FirstName
    //  FROM Contact
    //  WHERE AccountId IN:accountIds];
    // //alternativa: for(Account conta :contasExercicio){ contatos.addAll(conta.Contacts);}
    // Integer contador = 0;
    // for (Contact contato : contatos){
    //     if ((math.mod(contador, 2) == 0)){
    //         contato.FirstName = 'A';
    //     } else{
    //         contato.FirstName = 'B';
    //     }
    //     contador++;
    // }
    // Try{
    //     update contatos;
    // } Catch (Exception ex){
    //     System.debug(ex.getMessage());
    // }
}