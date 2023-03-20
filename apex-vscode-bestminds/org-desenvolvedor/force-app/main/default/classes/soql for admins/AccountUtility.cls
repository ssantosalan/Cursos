public with sharing class AccountUtility{
    public static void viewAnnualRevenue(){
        List<Account> accountsList = new List<Account>();
        accountsList = [SELECT Name, AnnualRevenue
                        FROM Account];

        for (Account account : accountsList){
            String acctRev;
            acctRev = account.Name + ' : ' + account.AnnualRevenue;
            System.debug(acctRev);
        }
    }

}