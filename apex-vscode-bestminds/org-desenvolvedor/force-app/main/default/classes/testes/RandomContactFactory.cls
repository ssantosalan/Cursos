//NOTE: For the purposes of verifying this hands-on challenge, don't specify the @isTest annotation for either the class or the method, even though it's usually required.
public class RandomContactFactory{
    public static List<Contact> generateRandomContacts(Integer numberContacts, String lastName){
        List<Contact> contactList = new List<Contact>();
        for (Integer i = 1; i <= numberContacts; i++){
            Contact contact = new Contact();
            contact.FirstName = 'Test ' + i;
            contact.LastName = lastName;

            contactList.add(contact) ;
        }

        return contactList;
    }

}