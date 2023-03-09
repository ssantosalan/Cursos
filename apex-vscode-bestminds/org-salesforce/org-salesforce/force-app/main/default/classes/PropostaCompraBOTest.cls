// @isTest
// private class PropostaCompraBOTest{
//     @TestSetup
//     static void criarDado(){
//         //Cria algumas propostaCompraLista de teste
//         List<PropostaCompra__c> propostaCompraLista = new List<PropostaCompra__c>();
//         todasContas.add(new PropostaCompra__c(Vendedor__c = Userinfo.getUserId(), Imovel__c = , Status__c = 'Aguardando pagamento'));
//         insert propostaCompraLista;
//         //Cria algumas propostaCompraOldMapList de teste
//         Map<Id, PropostaCompra__c> propostaCompraOldMapList = new Map<Id, PropostaCompra__c>();
//         insert todasContas;
//         // Chama o método que cria tarefas para as contas criadas acima
//         // criaTaskParaAccount();
//         PropostaCompraBO.criarComissaoSeAguardandoPagamento(propostaCompraLista, propostaCompraOldMapList);
//     }
//     @isTest
//     static void testCriarComissaoSeAguardandoPagamento(){
//         // Criação dos objetos de teste
//     }
// @isTest
// private class PropostaCompraBOTest{
//     @isTest
//     static void testCriarComissaoSeAguardandoPagamento(){
//         // Criação de dados de teste
//         Contact contato = new Contact(Name = 'Fulano da Silva', Email = 'fulano@teste.com', Telefone = '(11) 99999-9999', Data_de_nascimento__c = Date.newInstance(1990, 1, 1));
//         insert contato;
//         RecordType rtImovel = [SELECT Id, Name
//                                FROM RecordType
//                                WHERE SObjectType = 'Imovel__c'
//                                LIMIT 1];
//         Imovel__c imovel = new Imovel__c(Nome_do_empreendimento__c = 'Meu empreendimento', Status__c = 'Disponível', Metragem__c = 100, Unidade__c = '101', Bloco__c = 'A', Possui_sacada__c = true, Quantidade_de_vagas__c = 2, Valor_base__c = 500000, RecordTypeId = rtImovel.Id);
//         insert imovel;
//         User vendedor = new User(FirstName = 'João', LastName = 'Silva', Email = 'joao@teste.com', UserName = 'joao@teste.com');
//         insert vendedor;
//         PropostaCompra__c proposta = new PropostaCompra__c(Vendedor__c = vendedor.Id, Imovel__c = imovel.Id, Contact__c = contato.Id, Valor__c = 450000, Status__c = 'Aguardando pagamento', Data__c = Date.today());
//         insert proposta;
//         ConfiguracaoPropostaCompra__mdt configuracao = new ConfiguracaoPropostaCompra__mdt(Tipo__c = rtImovel.Name, PercentualComissao__c = 5);
//         insert configuracao;
//         // Execução do método de teste
//         PropostaCompraBO.criarComissaoSeAguardandoPagamento(new List<PropostaCompra__c>{ proposta }, new Map<Id, PropostaCompra__c>{ proposta.Id => proposta });
//         // Verificação dos
//     }
// }

@isTest
private class PropostaCompraBOTest{
}