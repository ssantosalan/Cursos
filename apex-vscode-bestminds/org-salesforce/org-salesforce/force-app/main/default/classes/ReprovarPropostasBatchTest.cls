@IsTest
private class ReprovarPropostasBatchTest{
    @TestSetup
    static void createTestData(){
        List<PropostaCompra__c> propostas = new List<PropostaCompra__c>();
        // cria proposta
        PropostaCompra__c proposta = new PropostaCompra__c();
        proposta.Contact__c = 'a00Dp000001ed8sIAA';
        proposta.Status__c = 'Aguardando pagamento';
        proposta.Imovel__c = 'a01Dp0000016btjIAA';
        propostas.add(proposta);

        PropostaCompra__c proposta2 = new PropostaCompra__c();
        proposta2.Contact__c = 'a00Dp000001eZ3IIAU';
        proposta2.Status__c = 'Reprovada';
        proposta2.Imovel__c = 'a01Dp0000016btoIAA';
        propostas.add(proposta2);

        insert propostas;
    }

    @IsTest
    static void testBatch(){
        // Criar batch
        ReprovarPropostasBatch batchJob = new ReprovarPropostasBatch();
        Test.startTest();
        Id batchJobId = Database.executeBatch(batchJob);
        Test.stopTest();

        // Ver se todos os registros foram atualizados
        List<PropostaCompra__c> updatedPropostas = [SELECT Id, Status__c
                                                    FROM PropostaCompra__c
                                                    WHERE Status__c = 'Reprovada'];
        System.assertEquals(1, updatedPropostas.size());

        List<PropostaCompra__c> updatedPropostas2 = [SELECT Id, Status__c
                                                     FROM PropostaCompra__c
                                                     WHERE Status__c = 'Aguardando pagamento'];
        System.assertEquals(1, updatedPropostas2.size());
    }

}