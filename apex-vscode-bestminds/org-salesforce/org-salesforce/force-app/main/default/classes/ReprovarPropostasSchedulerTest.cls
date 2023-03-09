@isTest
private class ReprovarPropostasSchedulerTest{
    @isTest
    static void testAgendar(){
        Test.startTest();
        ReprovarPropostasScheduler.agendar();
        List<CronTrigger> ct = [SELECT Id, CronJobDetail.Name, State, NextFireTime
                                FROM CronTrigger
                                WHERE CronJobDetail.Name = :ReprovarPropostasScheduler.scheduleName];
        System.assertEquals(1, ct.size(), 'Deveria existir um único CronTrigger para a classe ReprovarPropostasScheduler');
        System.assertEquals('WAITING', ct[0].State, 'O estado do CronTrigger deveria estar WAITING');
        Test.stopTest();
    }

}