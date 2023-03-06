public with sharing class PropostaCompraBO{
    public static void preencherDataEntregaChaves(List<PropostaCompra__c> propostaCompraLista, Map<Id, PropostaCompra__c> propostaCompraOldMapList){
        if (propostaCompraLista == null || propostaCompraOldMapList.isEmpty()){
            return;
        }

        Set<Id> propostasSetIdLista = new Set<Id>();
        for (PropostaCompra__c proposta : propostaCompraLista){
            propostasSetIdLista.add(proposta.Id);
        }

        List<PropostaCompra__c> propostasRecordIdNameLista = [SELECT Id, Imovel__r.RecordType.Name, DataEntregaChaves__c, Status__c
                                                              FROM PropostaCompra__c
                                                              WHERE Id IN:propostasSetIdLista];


        List<ConfiguracaoPropostaCompra__mdt> configuracoesLista = [SELECT Tipo__c, DiasEntregaChaves__c
                                                                    FROM ConfiguracaoPropostaCompra__mdt];


        // Identifica as propostas que estão sendo finalizadas
        List<PropostaCompra__c> propostasFinalizadasLista = new List<PropostaCompra__c>();

        for (PropostaCompra__c proposta : propostasRecordIdNameLista){
            PropostaCompra__c oldProposta = propostaCompraOldMapList.get(proposta.Id);
            if (proposta.Status__c == 'Finalizada' && oldProposta.Status__c != 'Finalizada'){
                propostasFinalizadasLista.add(proposta);
            }
        }

        // Atualiza a data de entrega das chaves das propostas finalizadas
        List<PropostaCompra__c> propostasAtualizarLista = new List<PropostaCompra__c>();

        for (PropostaCompra__c proposta : propostasFinalizadasLista){
            for (ConfiguracaoPropostaCompra__mdt configuracao : configuracoesLista){
                if (proposta.Imovel__r.RecordType.Name == configuracao.Tipo__c){
                    PropostaCompra__c propostaAtualizar = new PropostaCompra__c();
                    propostaAtualizar.Id = proposta.Id;
                    propostaAtualizar.DataEntregaChaves__c = System.today() + (Integer) configuracao.DiasEntregaChaves__c;
                    propostasAtualizarLista.add(propostaAtualizar);
                    // proposta.DataEntregaChaves__c = System.today() + (Integer) configuracao.DiasEntregaChaves__c;
                    break;
                }
            }
        }
        System.debug('PropostaCompraBO >>> preencherDataEntregaChaves >>> debug propostasFinalizadasLista >>>' + propostasFinalizadasLista);
        System.debug('PropostaCompraBO >>> preencherDataEntregaChaves >>> debug propostasAtualizarLista >>>' + propostasAtualizarLista);

        update propostasAtualizarLista;
    }

}