public with sharing class ContaTriggerTest{
    public void filtrarConta(List<Account> contas, Map<Id, Account> contasAntigas){
        List<Account> contasProcessar = new List<Account>();
        //validar contas a atualizar
        if (contasAntigas != null){
            System.debug('chegou aqui');
            for (Account conta : contas){
                Account contaAntiga = contasAntigas.get(conta.Id);
                if (conta.Match_Billing_Address__c && ((conta.ShippingPostalCode != contaAntiga.ShippingPostalCode) || conta.BillingPostalCode == null)){
                    contasProcessar.add(conta);
                }
            }
        } else{
            system.debug('aqui 2');
            for (Account conta : contas){
                if (conta.Match_Billing_Address__c && conta.ShippingPostalCode != null && conta.BillingPostalCode == null){
                    contasProcessar.add(conta);
                }
            }
        }
        if (!contasProcessar.isEmpty()){
            System.debug('aqui 3');
            for (Account conta : contasProcessar){
                conta.BillingPostalCode = conta.ShippingPostalCode;
            }
        }
    }

}

// List<Account> novaLista = new List<Account>();
// for (Account conta : contas){
//     if (conta.ShippingPostalCode != null){
//         novaLista.add(conta);
//     }
// }
// ----
// if (contasAntigas != null){
//     for (Account conta : contas){
//         if (conta.Match_Billing_Address__c && contasAntigas.get(conta.Id).ShippingPostalCode != conta.ShippingPostalCode){
//             conta.BillingPostalCode = conta.ShippingPostalCode;
//         }
//     }
// }
// List<Account> novaLista = new List<Account>();
// for(Account conta: contas) {
//     if (conta.ShippingPostalCode != null) {
//         novaLista.add(conta);
//     }
// }
// for (Account conta : novaLista){
//     if (conta.Match_Billing_Teste__c && contasAntigas.get(conta.Id).ShippingPostalCode != conta.ShippingPostalCode){
//         conta.ShippingPostalCode = conta.BillingPostalCode;
//     }
// }
//---
// for (Account conta : contas){
//     if (conta.Match_Billing_Teste__c && contasAntigas.get(conta.Id).ShippingPostalCode != conta.ShippingPostalCode){
//         conta.ShippingPostalCode = conta.BillingPostalCode;
//         novaLista.add(conta);
//     }
// }
// for (Account conta : contas){
//     if (conta.Match_Billing_Teste__c){
//         for (ID idKey : contasAntigas.keySet()){
//             // if (contasAntigas.get(conta.Id).ShippingPostalCode != conta.ShippingPostalCode){
//             if (contasAntigas.get(conta.Id).ShippingPostalCode != conta.ShippingPostalCode){
//                 conta.ShippingPostalCode = conta.BillingPostalCode;
//                 // novaLista.add(conta);
//             }
//         }
//     }