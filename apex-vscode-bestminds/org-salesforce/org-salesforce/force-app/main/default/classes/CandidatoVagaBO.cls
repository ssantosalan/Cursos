public with sharing class CandidatoVagaBO{
    private static CandidatoVagaBO instance = new CandidatoVagaBO();
    public static CandidatoVagaBO getInstance(){
        return instance;
    }

    /*
     Método para atualizar o status do candidato para "Contratado" quando a candidatura é aprovada
     */
    public void atualizarCandidatoQuandoAprovado(List<CandidatoVaga__c> candidatoVagaLista){
        if (candidatoVagaLista.isEmpty()){
            return;
        }

        Set<Id> candidatoVagaAprovadoIdSet = new Set<Id>();

        // Busca candidatos para encontrar os aprovados
        for (CandidatoVaga__c candidato : candidatoVagaLista){
            if (candidato.Status__c == 'Aprovado'){
                candidatoVagaAprovadoIdSet.add(candidato.Candidato__c);
            }
        }

        // Consulta a lista de candidatos aprovados com base nos Ids coletados acima
        List<Candidato__c> candidatoLista = [SELECT Id, Status__c
                                             FROM Candidato__c
                                             WHERE Id IN:candidatoVagaAprovadoIdSet];

        if (candidatoLista.isEmpty()){
            return;
        }

        // Atualiza o status de cada candidato aprovado para "Contratado"
        for (Candidato__c candidato : candidatoLista){
            candidato.Status__c = 'Contratado';
        }
        update candidatoLista;
    }

    public void atualizaNumeroReprovacoes(List<CandidatoVaga__c> candidatoVagaLista){
        if (candidatoVagaLista.isEmpty()){
            return;
        }

        for (CandidatoVaga__c candidato : candidatoVagaLista){
            if (candidato.Status__c == 'Reprovado'){
                if (candidato.NumeroReprovacoes__c == null){
                    candidato.NumeroReprovacoes__c = 1;
                } else{
                    candidato.NumeroReprovacoes__c = candidato.NumeroReprovacoes__c + 1;
                }
            }
        }
    }

    public void reprovarCandidatoPermanentemente(List<CandidatoVaga__c> candidatoVagaLista){
        if (candidatoVagaLista.isEmpty()){
            return;
        }

        // Número máximo de reprovações
        Integer MAX_REPROVACOES = 3;

        // Guarda os IDs dos candidatos reprovados pela terceira vez
        List<Id> candidatoIdsLista = new List<Id>();

        // Busca candidatos reprovados pela terceira vez
        for (CandidatoVaga__c candidatoVaga : candidatoVagaLista){
            if (candidatoVaga.Status__c == 'Reprovado' && candidatoVaga.NumeroReprovacoes__c >= MAX_REPROVACOES){
                candidatoIdsLista.add(candidatoVaga.Candidato__c);
            }
        }

        if (candidatoIdsLista.isEmpty()){
            return;
        }

        // Busca candidatos para atualizar seus status
        List<Candidato__c> candidatosAtualizarLista = [SELECT Id, Status__c
                                                       FROM Candidato__c
                                                       WHERE Id IN:candidatoIdsLista];

        // Atualiza o status dos candidatos reprovados permanentemente
        for (Candidato__c candidato : candidatosAtualizarLista){
            candidato.Status__c = 'Reprovado permanentemente';
        }
        update candidatosAtualizarLista;
    }

}