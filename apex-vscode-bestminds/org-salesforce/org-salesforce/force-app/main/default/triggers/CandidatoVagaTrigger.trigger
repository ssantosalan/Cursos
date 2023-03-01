trigger CandidatoVagaTrigger on CandidatoVaga__c(before update, after update ){
    if (Trigger.isBefore){
        if (Trigger.isUpdate){
            CandidatoVagaBO.getInstance().atualizaNumeroReprovacoes(Trigger.new );
        }
    }

    if (Trigger.isAfter){
        if (Trigger.isUpdate){
            CandidatoVagaBO.getInstance().atualizarCandidatoQuandoAprovado(Trigger.new );
            CandidatoVagaBO.getInstance().reprovarCandidatoPermanentemente(Trigger.new );
        }
    }
}