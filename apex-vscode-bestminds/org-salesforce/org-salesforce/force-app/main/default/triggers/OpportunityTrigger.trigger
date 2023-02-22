trigger OpportunityTrigger on Opportunity (before insert, before delete, after insert, after undelete, after update){
    if (Trigger.isAfter){
        if (Trigger.isInsert){
            OpportunityBO.getInstance().getIdContas(Trigger.new );
            OpportunityBO.getInstance().atualizarUltimaOportunidadeFinal(Trigger.new );
        }
        if (Trigger.isUpdate){
            // OpportunityBO.getInstance().criarContratoParaOportunidade(Trigger.new);
        }
    }
    if (Trigger.isBefore){
        if (Trigger.isUpdate){
            OpportunityBO.getInstance().criarContratoParaOportunidade(Trigger.new );
        }
    }
}