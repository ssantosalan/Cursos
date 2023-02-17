trigger OpportunityTrigger on Opportunity (before insert, before delete, after insert, after undelete, after update ){
    if (Trigger.isAfter){
        if (Trigger.isInsert){
            OpportunityBO.getInstance().getIdContas(Trigger.new);
            OpportunityBO.getInstance().atualizarUltimaOportunidadeFinal(Trigger.new );
        }
    }
}