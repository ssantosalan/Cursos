public with sharing class CriacaoOportunidadeQueueable implements Queueable {
    List<Account> contaList {get;set;}
    public CriacaoOportunidadeQueueable(List<Account> contaList) {
        this.contaList = contaList;
    }
    public void execute(QueueableContext context) {
        OpportunityBO.criarOportunidadeComAtiva(contaList);
    }
}