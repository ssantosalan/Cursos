public with sharing class ContactTO{
    public Set<Id> accids {get; set;}

    public ContactTO() {
        accids = new Set<Id>();
    }

}