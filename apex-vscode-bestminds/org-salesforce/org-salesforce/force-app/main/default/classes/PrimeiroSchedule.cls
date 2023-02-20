// Exercício 1 parte 1 - schedule
public with sharing class PrimeiroSchedule implements Schedulable{
    // Nome do agendamento
    public static String nome = 'Geração de contrato 2 para Oportunidades Close Won ou acima de 100 mil';
    // Cron de 1 minuto
    public static String expressaoCron = '0 5 * * * ?';
    // Método para iniciar o job
    public static void agendar(){
        System.schedule(nome, expressaoCron, new PrimeiroSchedule());
    }

    public void execute(SchedulableContext context){
        // Busca as oportunidades que atendem aos critérios especificados
        List<Opportunity> opportunities = [SELECT Id, AccountId
                                           FROM Opportunity
                                           WHERE StageName = 'Close Won' OR Amount > 100000];

        List<Contract> contractsToInsert = new List<Contract>();

        for (Opportunity opp : opportunities){
            // Cria um novo contrato
            Contract newContract = new Contract();

            // Define o nome do contrato
            newContract.Name = 'Schedule: Contrato de ' + opp.Name;

            // Define a conta do contrato como a mesma da oportunidade
            newContract.AccountId = opp.AccountId;

            contractsToInsert.add(newContract);
        }

        // Insere os novos contratos
        insert contractsToInsert;
  
    }

}

// PrimeiroSchedule.agendar();