public with sharing class ContactBO{
    private static ContactBO instance = new ContactBO();
    public static ContactBO getInstance(){
        return instance;
    }

    public List<Contact> buscarIdNovoContatoAlan(){
        List<Contact> novoContatoAlan = [SELECT Id, LastName
                                         FROM Contact
                                         WHERE LastName = 'Novo Contato Alan'];
        return novoContatoAlan;
    }

}

// public void contar(List<Contact> contatos){
//     Set<id> contasIds = new Set<Id>();
//     for (Contact contato : contatos){
//         if (cont.Sexualidade__c == 'Homossexual'){
//             contasIds.add(contato.AccountId);
//         }
//     }
//     List<Account> contas = ContactDAO.getInstance().buscaQntJogadoresHomo(contasIds);
//     for (Account conta : contas){
//         Integer qnt = 0;
//         for (Contact contato : conta.Contacts){
//             qnt++;
//         }
//         conta.QntHomossexuais = qnt;
//     }
// }