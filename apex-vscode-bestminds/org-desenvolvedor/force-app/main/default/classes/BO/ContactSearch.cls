public with sharing class ContactSearch{
    public static List<Contact> searchForContacts(String lastName, String postalCode){
        List<Contact> contactsList = [SELECT Name
                                      FROM Contact
                                      WHERE lastName = :lastName AND MailingPostalCode = :postalCode];

        return contactsList;
    }

}