public with sharing class ProfessorCriacaoOportunidadeScheduler implements Schedulable{
    // Nome do agendamento
    private static String nome = 'Geração de Oportunidades';
    // Cron de 1 minuto
    private static String expressaoCron = '0 0 0 1/1 * ? *';
    // Método para iniciar o job
    public static void agendar(){
        System.schedule(nome, expressaoCron, new CriacaoOportunidadeScheduler());
    }

    // método para executar a classe desejada.
    public void execute(SchedulableContext context){
        Database.executeBatch(new ProfessorCriacaoOportunidadeScheduler());
    }

}