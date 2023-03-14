@isTest
public class TestRestrictContactByName{
    @isTest
    private static void testRestrictContactByName(){

        Contact contact = new Contact(FirstName = 'Alan', LastName = 'INVALIDNAME', email = 'test@test.com');

        Test.startTest();
        try{
            insert contact;
        } catch (Exception e){
            System.assert(e.getMessage().contains('The Last Name "INVALIDNAME" is not allowed for DML'));
        }
        Test.stopTest();
    }

}