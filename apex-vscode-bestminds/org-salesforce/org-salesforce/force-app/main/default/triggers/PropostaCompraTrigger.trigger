trigger PropostaCompraTrigger on PropostaCompra__c(after update ){
    if (Trigger.isAfter){
        if (Trigger.isUpdate){
            PropostaCompraBO.preencherDataEntregaChaves(Trigger.new, Trigger.oldMap);
        }
    }
}