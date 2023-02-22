public class PrimeiroQueueable implements Queueable {
    
    // List<Opportunity> opportunities;
    
    // public PrimeiroQueueable(List<Opportunity> opps) {
    //     this.opportunities = opps;
    // }
    
    // public void execute(QueueableContext context) {
    //     for (Opportunity opp : opportunities) {
    //         List<ContactRole> contacts = [SELECT ContactId FROM ContactRole WHERE OpportunityId = :opp.Id];
    //         if (contacts.isEmpty()) {
    //             Account account = [SELECT Id, (SELECT Id FROM Contacts) FROM Account WHERE Id = :opp.AccountId LIMIT 1];
    //             if (!account.Contacts.isEmpty()) {
    //                 Contact contact = account.Contacts[0];
    //                 opp.Contact__c = contact.Id;
    //             }
    //         }
    //     }
    //     Database.update(opportunities);
    // }
}
