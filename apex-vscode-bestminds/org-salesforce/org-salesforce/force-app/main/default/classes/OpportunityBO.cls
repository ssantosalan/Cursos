public with sharing class OpportunityBO{
    private static OpportunityBO instance = new OpportunityBO();
    public static OpportunityBO getInstance(){
        return instance;
    }

    // - Criar uma trigger no objeto Opportunity.
    // - Criar método deverá buscar as informações de contato referente a conta selecionada na oportunidade no momento da criação e criar todos os contatos encontrados no objeto OpportunityContactRole.
    // - A criação dos registros no objeto OpportunityContactRole deverá ser feito em um método futuro.
    public void getIdContas(List<Opportunity> oportunidadesLista){
        Set<Id> contasIdSet = new Set<Id>();

        for (Opportunity oportunidade : oportunidadesLista){
            contasIdSet.add(oportunidade.AccountId);
        }

        passarContatoContaParaOportunidade(contasIdSet);
    }

    @Future
    public static void passarContatoContaParaOportunidade(Set<Id> contasIdSet){
        List<Contact> contatosContaFiltrada = [SELECT Id, Name
                                               FROM Contact
                                               WHERE AccountId IN:contasIdSet];
                                               
        List<Opportunity> oportunidadeContaFiltrada = [SELECT Id, Name
                                                       FROM Opportunity
                                                       WHERE AccountId IN:contasIdSet];

        //Processar contatos
        List<OpportunityContactRole> contatosProcessar = new List<OpportunityContactRole>();
        for (Opportunity oportunidade : oportunidadeContaFiltrada){
            for (Contact contato : contatosContaFiltrada){
                OpportunityContactRole opportunityContactRole = new OpportunityContactRole(ContactId = contato.Id, OpportunityId = oportunidade.Id);
                contatosProcessar.add(opportunityContactRole) ;
            }

        }

        insert contatosProcessar;
    }

    public void atualizarUltimaOportunidadeFinal(List<Opportunity> oportunidadesLista){
        if (oportunidadesLista.isEmpty()){
            return;
        }

        // Obter IDs exclusivos das contas das oportunidades
        Set<Id> contaIdsSet = new Set<Id>();
        for (Opportunity oportunidade : oportunidadesLista){
            contaIdsSet.add(oportunidade.AccountId);
        }

        List<Opportunity> ultimaOportunidadeCriadaLista = [SELECT AccountId
                                                           FROM Opportunity
                                                           WHERE AccountId IN:contaIdsSet
                                                           ORDER BY CreatedDate DESC];

        // Obter as últimas oportunidades de cada conta
        Map<Id, Id> ultimasOportunidadesMap = new Map<Id, Id>();
        for (Opportunity oportunidade : ultimaOportunidadeCriadaLista){
            if (!ultimasOportunidadesMap.containsKey(oportunidade.AccountId)){
                ultimasOportunidadesMap.put(oportunidade.AccountId, oportunidade.Id);
            }
        }

        // Atualizar as contas que contêm as últimas oportunidades
        List<Account> contasProcessar = new List<Account>();
        for (Opportunity oportunidade : oportunidadesLista){
            Id ultimaOportunidadeId = ultimasOportunidadesMap.get(oportunidade.AccountId);
            if (ultimaOportunidadeId != null){
                Account conta = new Account(Id = oportunidade.AccountId, UltimaOportunidade__c = ultimaOportunidadeId);
                contasProcessar.add(conta);
            }
        }

        if (!contasProcessar.isEmpty()){
            update contasProcessar;
        }
    }

    // Set<Id> accountIdOportunidadeSet = new Set<Id>();
    // public void atualizarUltimaOportunidade(List<Opportunity> oportunidades){
    //     List<Id> contaIds = new List<Id>();
    //     for (Opportunity oportunidade : oportunidades){
    //         contaIds.add(oportunidade.AccountId);
    //     }
    //     Map<Id, Date> ultimasOportunidades = new Map<Id, Date>();
    //     for (Opportunity oportunidade : [SELECT AccountId, CloseDate
    //                                      FROM Opportunity
    //                                      WHERE AccountId IN:contaIds AND IsClosed = TRUE AND CloseDate != null
    //                                      ORDER BY CloseDate DESC]){
    //         if (!ultimasOportunidades.containsKey(oportunidade.AccountId)){
    //             ultimasOportunidades.put(oportunidade.AccountId, oportunidade.CloseDate);
    //         }
    //     }
    //     List<Account> contas = new List<Account>();
    //     for (Opportunity oportunidade : oportunidades){
    //         if (ultimasOportunidades.containsKey(oportunidade.AccountId)){
    //             Date dataUltimaOportunidade = ultimasOportunidades.get(oportunidade.AccountId);
    //             Account conta = new Account(Id = oportunidade.AccountId, UltimaOportunidade__c = dataUltimaOportunidade);
    //             contas.add(conta);
    //         }
    //     }
    //     update contas;
    // }
    //não funcionou
    // public void atualizarUltimaOportunidade(List<Account> contas){
    //     List<Opportunity> oportunidades = [SELECT AccountId, CloseDate
    //                                        FROM Opportunity
    //                                        WHERE AccountId IN:contas
    //                                        ORDER BY CloseDate DESC];
    //     Map<Id, Date> ultimasOportunidades = new Map<Id, Date>();
    //     for (Opportunity oportunidade : oportunidades){
    //         ultimasOportunidades.put(oportunidade.AccountId, oportunidade.CloseDate);
    //     }
    //     for (Account conta : contas){
    //         if (ultimasOportunidades.containsKey(conta.Id)){
    //             // conta.Ultima_Oportunidade__c = ultimasOportunidades.get(conta.Id);
    //            conta.UltimaOportunidade__c = ultimasOportunidades.get(conta.Id);
    //         }
    //     }
    //     update contas;
    // }
    //não tá pegando
    // private void criarOportunidade(List<Opportunity> oportunidadesLista){
    //     List<Opportunity> oportunidadeProcessar = new List<Opportunity>();
    //     List<Account> contasLista = new List<Opportunity>();
    //     Set<Id> accountIdOportunidadeSet = new Set<Id>();
    //     if (oportunidadesLista.isEmpty()){
    //         return;
    //     }
    //     for (Opportunity oportunidade : oportunidadesLista){
    //         accountIdOportunidadeSet.add(oportunidade.AccountId);
    //     }
    //     contasLista = [SELECT Id, Name
    //                    FROM Account
    //                    WHERE Id IN:accountIdOportunidadeSet];
    //     for (Account conta : contasLista) {
    //         conta.UltimaOportunidade__c =
    //     }
    // }
    // public void passarContatoContaParaOportunidade(List<Opportunity> oportunidadesLista){
    //     List<OpportunityContactRole> contatosProcessar = new List<OpportunityContactRole>();
    //     Set<Id> contasIdSet = new Set<Id>();
    //     for (Opportunity oportunidade : oportunidadesLista){
    //         contasIdSet.add(oportunidade.AccountId);
    //     }
    //     List<Contact> contatosContaFiltrada = new List<Contact>();
    //     List<Opportunity> oportunidadeContaFiltrada = new List<Opportunity>();
    //     contatosContaFiltrada = [SELECT Id, Name
    //                              FROM Contact
    //                              WHERE AccountId IN:contasIdSet];
    //     oportunidadeContaFiltrada = [SELECT Id, Name
    //                                  FROM Opportunity
    //                                  WHERE AccountId IN:contasIdSet];
    //     System.debug('passarContatoContaParaOportunidade >>> oportunidadeContaFiltrada >>> ' + oportunidadeContaFiltrada);
    //     for (Opportunity oportunidade : oportunidadesLista){
    //         for (Contact contato : contatosContaFiltrada){
    //             OpportunityContactRole opportunityContactRole = new OpportunityContactRole(ContactId = contato.Id, OpportunityId = oportunidade.Id);
    //             contatosProcessar.add(opportunityContactRole) ;
    //         }
    //     }
    //     insert contatosProcessar;
    // }
}