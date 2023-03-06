public with sharing class PropostaCompraBO{
    public static void criarComissaoSeAguardandoPagamento(List<PropostaCompra__c> propostaCompraLista, Map<Id, PropostaCompra__c> propostaCompraOldMapList){
        if (propostaCompraLista.isEmpty() || propostaCompraOldMapList.isEmpty()){
            return;
        }

        Set<Id> propostasAguardandoPagamento = new Set<Id>();
        for (PropostaCompra__c proposta : propostaCompraLista){
            PropostaCompra__c oldProposta = propostaCompraOldMapList.get(proposta.Id);
            if (proposta.Status__c == 'Aguardando pagamento' && oldProposta.Status__c != 'Aguardando pagamento'){
                propostasAguardandoPagamento.add(proposta.Id);
            }
        }

        if (propostasAguardandoPagamento.isEmpty()){
            return;
        }

        Map<String, ConfiguracaoPropostaCompra__mdt> configuracoesPorTipo = new Map<String, ConfiguracaoPropostaCompra__mdt>();
        for (ConfiguracaoPropostaCompra__mdt configuracao : [SELECT Tipo__c, PercentualComissao__c
                                                             FROM ConfiguracaoPropostaCompra__mdt]){
            configuracoesPorTipo.put(configuracao.Tipo__c, configuracao);
        }


        List<Comissao__c> comissaoCriarLista = new List<Comissao__c>();
        for (PropostaCompra__c proposta : [SELECT Id, Vendedor__c, Valor__c, Imovel__r.RecordType.Name
                                           FROM PropostaCompra__c
                                           WHERE Id IN:propostasAguardandoPagamento]){
            ConfiguracaoPropostaCompra__mdt configuracao = configuracoesPorTipo.get(proposta.Imovel__r.RecordType.Name);

            if (configuracao != null){
                Decimal porcentagemComissao = configuracao.PercentualComissao__c / 100;
                Decimal valorComissao = proposta.Valor__c * porcentagemComissao;

                Comissao__c comissao = new Comissao__c();
                comissao.OwnerId = proposta.Vendedor__c;
                comissao.PropostaCompra__c = proposta.Id;
                comissao.Valor__c = valorComissao;
                comissao.Status__c = 'Em pagamento';

                comissaoCriarLista.add(comissao);
            }
        }

        if (comissaoCriarLista.isEmpty()){
            return;
        }
        insert comissaoCriarLista;
    }

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
                    break;
                }
            }
        }

        if (propostasAtualizarLista.isEmpty()){
            return;
        }
        update propostasAtualizarLista;
    }

}