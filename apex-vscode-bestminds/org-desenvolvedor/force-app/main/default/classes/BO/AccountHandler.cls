public with sharing class AccountHandler{
    public static Account insertNewAccount(String accountName){
        Account account = new Account();
        account.Name = accountName;
        try{
            insert account;
            return account;
        } catch (DmlException e){
            System.debug('A DML exception has occurred: ' + e.getMessage());
            return null;
        }
    }

}