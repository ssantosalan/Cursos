public class ReprovarPropostasScheduler implements Schedulable{
    public static String scheduleName = 'Reprovar Propostas de Compra com status "Aguardando pagamento” por mais de 1 mês';
    public static String cronExpression = '0 0 0 * * ?';
    // public static String cronExpression = '0 15 15 * * ?';
    public static void agendar(){
        System.schedule(scheduleName, cronExpression, new ReprovarPropostasScheduler());
    }

    public void execute(SchedulableContext context){
        ReprovarPropostasBatch batch = new ReprovarPropostasBatch();
        Database.executeBatch(batch);
    }

}