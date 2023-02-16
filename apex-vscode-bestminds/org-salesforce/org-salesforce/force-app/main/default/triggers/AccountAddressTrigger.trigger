trigger AccountAddressTrigger on Account(before insert, before update ){
	// if (Trigger.isInsert || Trigger.isUpdate){
	// 	AccountBO.getInstance().copiarCEP(Trigger.new, Trigger.oldMap);
	// }
}
// if (Trigger.isInsert){
//     for (Account conta : Trigger.new ){
//         if (conta.Match_Billing_Teste__c){
//             conta.ShippingPostalCode = conta.BillingPostalCode;
//         }
//     }
// }
// if (Trigger.isUpdate){
//     for (Account conta : Trigger.new ){
//         if (conta.Match_Billing_Teste__c){
//             conta.ShippingPostalCode = conta.BillingPostalCode;
//         }
//     }
// }
//-----------
// ContaTriggerTest contaTrigger = new ContaTriggerTest();
// if (Trigger.isInsert){
//     contaTrigger.filtrarConta(Trigger.new, Trigger.oldMap);
// }
// if (Trigger.isUpdate){
//     contaTrigger.filtrarConta(Trigger.new, Trigger.oldMap);
// }
//----------