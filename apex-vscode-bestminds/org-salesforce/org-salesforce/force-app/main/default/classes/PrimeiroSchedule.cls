// Exercício 1 parte 1 - schedule
public with sharing class PrimeiroSchedule implements Schedulable{
    // Nome do agendamento
    public static String jobNome = 'Geração de contrato 1 para Oportunidades Close Won ou acima de 100 mil';
    // Cron de 1 minuto
    public static String expressaoCron = '0 5 * * * ?';
    // Método para iniciar o job
    public static void agendar(){
        // System.schedule(jobNome, expressaoCron, new PrimeiroSchedule());
        System.schedule('Scheduled Job 1', '0 0 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 2', '0 5 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 3', '0 10 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 4', '0 15 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 5', '0 20 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 6', '0 25 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 7', '0 30 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 8', '0 35 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 9', '0 40 * * * ?', new PrimeiroSchedule());
        System.schedule('Scheduled Job 10', '0 45 * * * ?', new PrimeiroSchedule());
    }

    public void execute(SchedulableContext context){
        // Busca as oportunidades que atendem aos critérios especificados
        List<Opportunity> opportunities = [SELECT Id, AccountId, Name
                                           FROM Opportunity 
                                           WHERE StageName = 'Closed Won' OR Amount > 100000];

        List<Contract> contractsToInsert = new List<Contract>();

        for (Opportunity opp : opportunities){
            // Cria um novo contrato
            Contract newContract = new Contract();
            newContract.AccountId = opp.AccountId;
            newContract.Status = 'Draft';
            newContract.StartDate = System.today();
            newContract.ContractTerm = 6;
            newContract.Description = 'Contract created for Opportunity ' + opp.Name;
            
            contractsToInsert.add(newContract);

            // Adiciona a referência ao contrato na oportunidade
            opp.Contract = newContract;

        }

        // Insere os novos contratos
        insert contractsToInsert;

        // Atualiza as oportunidades com as referências aos contratos
        update opportunities;
    }

}

// PrimeiroSchedule.agendar();