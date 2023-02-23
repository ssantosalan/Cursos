public class ClassificacaoClienteContaSchedule implements Schedulable{
    private static String jobNome = 'Classificação de Cliente da Conta';
    // Cron todos os dias às 12:00
    private static String expressaoCron = '0 0 12 * * ? *';
    private static ClassificacaoClienteContaSchedule batchInstance = new ClassificacaoClienteContaSchedule();
    public static void agendar(){
        System.schedule(jobNome, expressaoCron, batchInstance);
    }

    public void execute(SchedulableContext sc){
        Database.executeBatch(new ClassificacaoClienteConta());
    }

}