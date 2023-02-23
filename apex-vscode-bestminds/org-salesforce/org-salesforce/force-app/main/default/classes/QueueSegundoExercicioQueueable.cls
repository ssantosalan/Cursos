public with sharing class QueueSegundoExercicioQueueable implements Queueable{
    public void execute(QueueableContext context){
        List<Opportunity> oportunidades = [SELECT Id, Description, AccountId
                                           FROM Opportunity
                                           WHERE CloseDate > TODAY];
        for (Opportunity oportunidade : oportunidades){
            oportunidade.Description = 'Oportunidades com contato associado';
        }
        update oportunidades;

        System.enqueueJob(new QueueExercicio(oportunidades));
    }

}