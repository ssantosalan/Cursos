public class ExercicioSOQL{
    private static ExercicioSOQL instance = new ExercicioSOQL();
    public static ExercicioSOQL getInstance() {
        return instance;
    }


    public List<Contract> todosOsContratos(){
        List<Contract> contratosDoSales = [SELECT Id
                                           FROM Contract];
        return contratosDoSales;
    }

    public List<Contract> todosOsContratosFinalizados(){
        List<Contract> ContratosFinalizados = [SELECT Id
                                               FROM Contract
                                               WHERE status = 'Activated'];
        return ContratosFinalizados;
    }

    public Integer numeroDeContratosAbertos(){
        Integer QuantidadeContratosAbertos = [SELECT COUNT()
                                              FROM Contract 
                                              WHERE status != 'Activated'];
        return QuantidadeContratosAbertos;
    }

    public void printaTestAccount(){
        List<Account> contasTeste = [SELECT Id, Name
                                     FROM Account 
                                     WHERE Name LIKE '%teste%'];
        for (Account conta : contasTeste){
            System.debug('>>>' + conta.Name);
        }
    }

    // public void criaTaskParaAccount(){
    //     List<Account> todasContas = [SELECT Id, OwnerId, Name
    //                                  FROM Account ];
    //     List<Task> TasksParaInserir = new List<Task>();
    //     for (Account conta : todasContas){
    //         Task novaTask = new Task();
    //         novaTask.Subject = 'Call';
    //         novaTask.Status = 'Not Started';
    //         novaTask.Priority = 'Normal';
    //         novaTask.WhatId = conta.Id;
    //         novaTask.OwnerId = conta.OwnerId;
    //         TasksParaInserir.add(novaTask);
    //     }
    //     if (!TasksParaInserir.isEmpty()){
    //         insert TasksParaInserir;
    //     }
    // }

    public void criaTaskParaAccount(List<Account> todasContas){
        // List<Account> todasContas = [SELECT Id, OwnerId, Name
        //                              FROM Account ];
        List<Task> tasksParaInserir = new List<Task>();
        for (Account conta : todasContas){
            Task novaTask = new Task();
            novaTask.Subject = 'Call';
            novaTask.Status = 'Not Started';
            novaTask.Priority = 'Normal';
            novaTask.WhatId = conta.Id;
            novaTask.OwnerId = conta.OwnerId;
            tasksParaInserir.add(novaTask);
        }
        System.debug('Debug >>> tasksParaInserir >>> '+ tasksParaInserir);
        if (!tasksParaInserir.isEmpty()){
            insert tasksParaInserir;
        }
    }

}