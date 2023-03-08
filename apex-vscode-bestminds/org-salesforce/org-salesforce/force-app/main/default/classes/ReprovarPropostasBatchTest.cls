@IsTest
public class ReprovarPropostasBatchTest{
    // @IsTest
    // public static void testReprovarPropostasBatch(){
    //     // Criação dos registros de PropostaCompra__c
    //     List<PropostaCompra__c> propostas = new List<PropostaCompra__c>();
    //     for (Integer i = 0; i < 10; i++){
    //         PropostaCompra__c proposta = new PropostaCompra__c();
    //         proposta.Status__c = 'Aguardando pagamento';
    //         proposta.Imovel__c = 'a0B0x00000000123'
    //         propostas.add(proposta);
    //     }
    //     insert propostas;

    //     // Executa a batch
    //     Test.startTest();
    //     ReprovarPropostasBatch batch = new ReprovarPropostasBatch();
    //     Database.executeBatch(batch);
    //     Test.stopTest();

    //     // Verifica se as propostas foram atualizadas corretamente
    //     List<PropostaCompra__c> propostasAtualizadas = [SELECT Id, Name, Status__c
    //                                                     FROM PropostaCompra__c];
    //     System.assertEquals(propostas.size(), propostasAtualizadas.size());
    //     for (PropostaCompra__c proposta : propostasAtualizadas){
    //         System.assertEquals('Reprovada', proposta.Status__c);
    //     }
    // }

}