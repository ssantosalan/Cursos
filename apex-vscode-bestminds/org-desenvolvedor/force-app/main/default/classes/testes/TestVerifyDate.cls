@isTest
public class TestVerifyDate{
    //if date2 is within the next 30 days of date1, use date2.
    @isTest
    static void TestDateWithin30Days(){
        Date date1 = Date.today();
        Date date2 = Date.today();

        System.assertEquals(date2, VerifyDate.checkDates(date1, date2));
    }

    //check that date2 is within (>=) 30 days of date1
    @isTest
    static void TestDateMoreThan30Days(){
        Date date1 = Date.today();
        Date date2 = date1.addDays(30);

        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
        Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);

        System.assertEquals(lastDay, VerifyDate.checkDates(date1, date2));
    }

    //check for date2 being in the past
    @isTest
    static void TestDate2InThePast(){
        Date date1 = Date.today();
        Date date2 = date1.addDays(-10);

        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
        Date lastDay = Date.newInstance(date1.year(), date1.month(), totalDays);

        System.assertEquals(lastDay, VerifyDate.checkDates(date1, date2));
    }

}