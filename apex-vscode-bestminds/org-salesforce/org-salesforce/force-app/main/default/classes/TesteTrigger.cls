public with sharing class TesteTrigger{
    public static void handleAccountTrigger(List<Account> listAccounts, Map<Id, Account> oldAccounts){
        List<Account> contasProcessar = new List<Account>();
        //validar contas a atualizar
        if (oldAccounts != NULL){
            System.debug('chegou auqi');
            for (Account acc : listAccounts){
                Account oldAccount = oldAccounts.get(acc.Id);
                if (acc.Match_Billing_Address__c && ((acc.ShippingPostalCode != oldAccount.ShippingPostalCode) || acc.BillingPostalCode == NULL)){
                    contasProcessar.add(acc);
                }
            }
        } else{
            System.debug('aqui 2');
            for (Account acc : listAccounts){
                if (acc.Match_Billing_Address__c && acc.ShippingPostalCode != NULL && acc.BillingPostalCode == NULL){
                    contasProcessar.add(acc);
                }
            }
        }
        if (!contasProcessar.isEmpty()){
            System.debug('aqui 3');
            for (Account acc : contasProcessar){
                acc.BillingPostalCode = acc.ShippingPostalCode;
            }
        }
        /*listAccounts = validateAccount(listAccounts);
         listAccounts = updateAccounts(listAccounts);*/
    }

    /* private static List<Account> validateAccount(List<Account> listAccounts) {
     List<Account> accountsToUpdate = new List<Account>();
     for(Account acc: listAccounts) {
     if ((acc.Match_Billing_Address__c == True) && (acc.ShippingPostalCode != acc.BillingPostalCode)) {
     accountsToUpdate.add(acc);
     }
     }
     return accountsToUpdate;
     }
     private static List<Account> updateAccounts(List<Account> listAccounts) {
     for(Account acc: listAccounts) {
     acc.BillingPostalCode = acc.ShippingPostalCode;
     }
     return listAccounts;
     }*/
}