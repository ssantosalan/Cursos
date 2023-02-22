//Schedule parte 2
/* Crie um Schedule que chama o Batch criado na atividade anterior que atualiza os Casos sem Contatos. */
public class SegundoScheduler implements Schedulable{
    public static String scheduleName = 'Batch Agendado: Atualizar Endereços de Contatos';
    public static String cronExpression = '0 0 22 * * ?';
    public static void agendar(){
        System.schedule(scheduleName, cronExpression, new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 1', '0 0 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 2', '0 5 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 3', '0 10 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 4', '0 15 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 5', '0 20 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 6', '0 25 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 7', '0 30 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 8', '0 35 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 9', '0 40 * * * ?', new SegundoScheduler());
        // System.schedule('Chama Primeiro Batch 10', '0 45 * * * ?', new SegundoScheduler());
    }

    public void execute(SchedulableContext context){
        PrimeiroBatch batch = new PrimeiroBatch();
        Database.executeBatch(batch);
    }

}

// SegundoScheduler.agendar();

//Scheduler parte 3
/* Faça o agendamento dos Schedule criados através do "open execute anonymous" para rodar todos os dias às 22 horas (Mande um
print do agendamento junto ao arquivo). */
// String scheduleName = 'Chama Segundo Scheduler 1';
// String cronExpression = '0 0 22 * * ?';
// System.schedule(scheduleName, cronExpression, new SegundoScheduler());