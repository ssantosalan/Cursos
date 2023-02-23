// public class PrimeiroQueueable implements Queueable{
//     List<Opportunity> oportunidadesLista;
//     public PrimeiroQueueable(List<Opportunity> oportunidadesLista){
//         this.oportunidadesLista = oportunidadesLista;
//     }

//     public void execute(QueueableContext context){

//         // Pega Ids Oportunidades
//         Set<Id> oppIdSet = new Set<Id>();
//         for (Opportunity oportunidade : oportunidadesLista){
//             oppIdSet.add(oportunidade.Id);
//         }
//         // TODO: Pegar contas de contato e oportunidades de contato
//         List<Opportunity> oportunidadesSemContatos = [SELECT Id, AccountId, (SELECT Id
//                                                                              FROM OpportunityContactRoles)
//                                                       FROM Opportunity 
//                                                       WHERE Id IN:oppIdSet AND AccountId != null];


//         Set<Id> contaIdSet = new Set<Id>();
//         for (Opportunity oportunidade : oportunidadesLista){
//             contaIdSet.add(oportunidade.AccountId);
//         }
//         List<Account> contaLista = [SELECT Id, (SELECT Id
//                                                 FROM Contacts
//                                                 LIMIT 1)
//                                     FROM Account 
//                                     WHERE Id IN:contaIdSet];

//         List<OpportunityContactRole> oportunidadeProcessar = new List<OpportunityContactRole>();

//         for (Opportunity oportunidade : oportunidadesSemContatos){
//             for (Account conta : contaLista){
//                 if (oportunidade.OpportunityContactRoles.size() == 0 && oportunidade.AccountId == conta.Id){
//                     OpportunityContactRole oportunidadeContactRole = new OpportunityContactRole();
//                     oportunidadeContactRole.OpportunityId = oportunidade.Id;
//                     oportunidadeContactRole.ContactId = conta.Contacts[0].Id;
//                     oportunidadeProcessar.add(oportunidadeContactRole);
//                 }
//             }
//         }

//         if (!oportunidadeProcessar.isEmpty()){
//             insert oportunidadeProcessar;
//         }
//     }

// }