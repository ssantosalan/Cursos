public with sharing class ProfessorClass2{
//     // public with sharing class OpportunityBO{
//     public static void preencherUltimaOportunidade(List<Opportunity> oportunidadeList){
//         // Crio o set de id e add os ids da conta no set        Set<Id> idContaSet = new Set<Id>();
//         for (Opportunity oportunidade : oportunidadeList){
//             idContaSet.add(oportunidade.AccountId);
//         }
//         // Busco as Contas relacionadas a oportunidade e add ela em um Map de Conta.        List<Account> contaList = AccountDAO.buscarPorId(idContaSet);
//         Map<Id, Account> contaMap = new Map<Id, Account>();
//         for (Account conta : contaList){
//             contaMap.put(conta.Id, conta);
//         }
//         List<Account> contaAtualizarList = new List<Account>();
//         for (Opportunity oportunidade : oportunidadeList){
//             Account conta = contaMap.get(oportunidade.AccountId);
//             // Verifico se o objeto.            if (conta != null) {
//             conta.LastOpportunity__c = oportunidade.Id;
//             // Add a conta na lista                contaAtualizarList.add(conta);
//         }
//     }

//     // Chamo o método futuro se a lista estiver preenchida.        if (!contaAtualizarList.isEmpty()) {
//     executarFuture(JSON.serialize(contaAtualizarList));
//     public static void preencherContatosOportunidade(List<Opportunity> opportunityList){
//         //Crio o set de id e add os ids da conta        Set<Id> idContaSet = new Set<Id>();
//         for (Opportunity oportunidade : opportunityList){
//             idContaSet.add(oportunidade.AccountId);
//         }
//         // Busco os contatos relacionados a conta e add eles em um Map de lista de contatos        List<Contact> contatoList = ContactDAO.buscarPorConta(idContaSet);
//         Map<Id, List<Contact>> contatoMap = new Map<Id, List<Contact>>();
//         for (Contact contato : contatoList){
//             List<Contact> contatos = contatoMap.get(contato.AccountId);
//             if (contatos == null){
//                 contatoMap.put(contato.AccountId, contatos = new List<Contact>());
//             }
//             contatos.add(contato);
//         }
//         List<OpportunityContactRole> contatoOportunidadeList = new List<OpportunityContactRole>();
//         for (Opportunity oportunidade : opportunityList){
//             List<Contact> contatos = contatoMap.get(oportunidade.AccountId);
//             //Verifico a lista vazia            if (contatos.isEmpty()) {
//             continue;
//         }
//         // Em cada contato eu crio o contato da oportunidade            for (Contact contato : contatos) {
//         OpportunityContactRole opportunityContactRole = new OpportunityContactRole();
//         opportunityContactRole.OpportunityId = oportunidade.Id;
//         opportunityContactRole.ContactId = contato.Id;
//         contatoOportunidadeList.add(opportunityContactRole) ;
//     }

//     // Chamo o método futuro        if (!contatoOportunidadeList.isEmpty()) {
//     executarFuture(JSON.serialize(contatoOportunidadeList));
    
//     @future
//     private static void executarFuture(String jsonObjeto){
//         List<SObject> objetoList = (List<SObject>)JSON.deserialize(jsonObjeto, List<SObject>.class);
//         // Inseri ou Atualizo os registros da lista        upsert objetoList;
//     }

//     public static void gerarContrato(List<Opportunity> opportunityList){
//         List<Contract> contratoList = new List<Contract>();
//         for (Opportunity oportunidade : opportunityList){
//             Contract contrato = new Contract();
//             contrato.AccountId = oportunidade.AccountId;
//             contratoList.add(contrato);
//         }
//         insert contratoList;
//         Map<Id, Contract> contratoMap = new Map<Id, Contract>();
//         for (Contract contrato : contratoList){
//             contratoMap.put(contrato.AccountId, contrato);
//         }
//     }

// }

}