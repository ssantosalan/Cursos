public class AccountBO{
    private static AccountBO instance = new AccountBO();
    public static AccountBO getInstance(){
        return instance;
    }

    // public void copiarCEP(List<Account> contas, Map<Id, Account> mapOldContas){
    //     List<Account> contasProcessar = new List<Account>();
    //     if (mapOldContas != null){
    //         for (Account conta : contas){
    //             Account contaAntiga = mapOldContas.get(conta.Id);
    //             Boolean alterouShippingPostalCode = conta.ShippingPostalCode != contaAntiga.ShippingPostalCode;
    //             Boolean diferenteShippingBillingPostalCode = conta.BillingPostalCode != conta.ShippingPostalCode;
    //             Boolean regrasUpdate = conta.BillingPostalCode == null || diferenteShippingBillingPostalCode || alterouShippingPostalCode;
    //             if (conta.Match_Billing_Address__c && regrasUpdate){
    //                 contasProcessar.add(conta);
    //             }
    //         }
    //     } else{
    //         for (Account conta : contas){
    //             if (conta.Match_Billing_Address__c){
    //                 contasProcessar.add(conta);
    //             }
    //         }
    //     }
    //     if (!contasProcessar.isEmpty()){
    //         for (Account conta : contasProcessar){
    //             conta.BillingPostalCode = conta.ShippingPostalCode;
    //         }
    //     }
    // }
    // public void atualizarOportunidadesConta(List<Account> contas, Map<Id, Account> contasAntigas){
    //     List<Account> contasProcessar = new List<Account>();
    //     List<Opportunity> oportunidadeExistentes = new List<Opportunity>();
    //     Set<Id> setIdConta = new Set<Id>();
    //     for (Account conta : contas){
    //         if (conta.Type != 'Prospect'){
    //             setIdConta.add(conta.Id);
    //         }
    //     }
    //     if (!setIdConta.isEmpty()){
    //         oportunidadeExistentes = [SELECT Name, StageName, AccountId
    //                                   FROM Opportunity
    //                                   WHERE AccountId IN:setIdConta];
    //     }
    //     if (!oportunidadeExistentes.isEmpty()){
    //         for (Opportunity oportunidade : oportunidadeExistentes){
    //             oportunidade.StageName = 'Closed Won';
    //         }
    //         update oportunidadeExistentes;
    //     }
    //     for (Account conta : contas){
    //         if (contasAntigas.get(conta.id).Type != 'Prospecting'){
    //             Opportunity oportunidade = new Opportunity();
    //             oportunidade.StageName = 'Closed Won';
    //         }
    //     }
    // }
    //---------------------
    // public void preencherTipo(List<Account> contas){
    //     for (Account conta : contas){
    //         conta.Type = 'Prospect';
    //     }
    // }
    // public void criarOportunidade(List<Account> contas){
    //     List<Opportunity> oportunidades = new List<Opportunity>();
    //     for (Account conta : contas){
    //         Opportunity oportunidade = new Opportunity();
    //         oportunidade.AccountId = conta.Id;
    //         oportunidade.StageName = 'Prospecting';
    //         oportunidade.CloseDate = System.today();
    //         oportunidade.Name = conta.Name;
    //         oportunidades.add(oportunidade);
    //     }
    //     System.debug(oportunidades.size());
    //     if (!oportunidades.isEmpty()){
    //         insert oportunidades;
    //     }
    // }
    // public void tratarOportunidade(List<Account> contas){
    //     List<Opportunity> oportunidadesExistentes = new List<Opportunity>();
    //     Set<Id> setIdConta = new Set<Id>();
    //     for (Account conta : contas){
    //         if (conta.Type != 'Prospect'){
    //             setIdConta.add(conta.Id);
    //         }
    //     }
    //     if (!setIdConta.isEmpty()){
    //         oportunidadesExistentes = [SELECT Id, StageName
    //                                    FROM Opportunity
    //                                    WHERE AccountId IN:setIdConta];
    //         if (!oportunidadesExistentes.isEmpty()){
    //             for (Opportunity oportunidade : oportunidadesExistentes){
    //                 oportunidade.StageName = 'Closed Won';
    //             }
    //             update oportunidadesExistentes;
    //         }
    //     }
    // }
    //----------------
    public void preencherTipo(List<Account> contas){
        for (Account conta : contas){
            conta.Type = 'Prospect';
        }
    }

    // public void criarOportunidade(List<Account> contas){
    //     List<Opportunity> oportunidades = new List<Opportunity>();
    //     for (Account conta : contas){
    //         Opportunity oportunidade = new Opportunity();
    //         oportunidade.Name = conta.Name;
    //         oportunidade.StageName = 'Prospecting';
    //         oportunidade.AccountId = conta.Id;
    //         oportunidade.CloseDate = System.today();
    //         oportunidades.add(oportunidade);
    //     }
    //     if (!oportunidades.isEmpty()){
    //         insert oportunidades;
    //     }
    // }
    public void tratarOportunidade(List<Account> contas){
        List<Opportunity> oportunidadesExistentes = new List<Opportunity>();
        Set<Id> setIdConta = new Set<Id>();

        for (Account conta : contas){
            if (conta.Type != 'Prospect'){
                setIdConta.add(conta.id);
            }
        }

        if (!setIdConta.isEmpty()){
            oportunidadesExistentes = [SELECT Id, StageName
                                       FROM Opportunity
                                       WHERE AccountId IN:setIdConta];
            if (!oportunidadesExistentes.isEmpty()){
                for (Opportunity oportunidade : oportunidadesExistentes){
                    oportunidade.StageName = 'Closed Won';
                }
                update oportunidadesExistentes;
            }
        }
    }

    public void criarContatoOportunidadeDeContaNova(List<Account> contas){
        List<Contact> contatoProcessar = new List<Contact>();
        List<Opportunity> oportunidadeProcessar = new List<Opportunity>();

        for (Account conta : contas){
            Contact contato = new Contact();
            contato.AccountId = conta.Id;
            contato.LastName = conta.Name;
            contatoProcessar.add(contato);
            Opportunity oportunidade = new Opportunity();
            oportunidade.AccountId = conta.Id;
            oportunidade.Name = conta.Name;
            oportunidade.CloseDate = System.today();
            oportunidade.StageName = 'Qualification';
            oportunidadeProcessar.add(oportunidade);
        }

        if (!contatoProcessar.isEmpty() && !oportunidadeProcessar.isEmpty()){
            insert oportunidadeProcessar;
            insert contatoProcessar;
        }
    }

    public void criarFicharioDeContaNova(List<Account> contas){
        List<Fichario__c> ficharioProcessar = new List<Fichario__c>();

        for (Account conta : contas){
            Fichario__c fichario = new Fichario__c();
            fichario.Name = conta.Name;
            fichario.AccountId__c = conta.Id;
            ficharioProcessar.add(fichario);
        }

        if (!ficharioProcessar.isEmpty()){
            insert ficharioProcessar;
        }
    }

    public void deletarFicharioDeContaDeletada(List<Account> contas){
        List<Fichario__c> ficharioProcessar = new List<Fichario__c>();
        Set<Id> setIdContas = new Set<Id>();

        for (Account conta : contas){
            setIdContas.add(conta.Id);
        }

        if (!setIdContas.isEmpty()){
            ficharioProcessar = [SELECT Id, Name
                                 FROM Fichario__c
                                 WHERE AccountId__c IN:setIdContas];
        }
        if (!ficharioProcessar.isEmpty()){
            delete ficharioProcessar;
        }
    }

    public void criarCasoAoDeletarConta(List<Account> contas){
        List<Case> casosProcessar = new List<Case>();

        for (Account conta : contas){
            Case caso = new Case();
            caso.Description = conta.Name;
            caso.Subject = conta.Name;
            caso.Origin = 'Phone';
            caso.Status = 'New';
            casosProcessar.add(caso);
        }

        if (!casosProcessar.isEmpty()){
            insert casosProcessar;
        }
    }

    public void recuperarContaECriarCaso(List<Account> contas){
        List<Case> casosProcessar = new List<Case>();

        for (Account conta : contas){
            Case caso = new Case();
            caso.AccountId = conta.Id;
            caso.Description = conta.Name + ' recuperado';
            caso.Subject = conta.Name + ' recuperado';
            caso.Origin = 'Phone';
            caso.Status = 'New';
            casosProcessar.add(caso);
        }

        if (!casosProcessar.isEmpty()){
            insert casosProcessar;
        }
    }

    // public void apagarFichario(List<Account> contas){
    //     List<Fichario__c> lstApagarFicharios = new List<Fichario__c>();
    //     Set<Id> idContas = new Set<Id>(contas);
    //     for (Account conta : contas){
    //         idContas.add(conta.Id);
    //     }
    //     lstApagarFicharios = fichariosDAO.getInstance().buscarFichariosPorConta(idContas);
    //     delete lstApagarFicharios;
    // }
    // public void pegarMaiorFaturamento(List<Account> contas) {
    //     Set<id> contasIds = new Set<Id>();
    //     for (Account conta : contas) {
    //         if(conta.Id == )
    //     }
    // }
    // public void pegarMaiorFaturamento(List<Account> contas){
    //     Set<id> setContasIds = new Set<Id>();
    //     List<Account> contasFilhas = new List<Account>();
    //     if (!contas.isEmpty()){
    //         for (Account conta : contas){
    //             contasIds.add(conta);
    //         }
    //     }
    //     contasFilhas = [SELECT Id, Faturamento__c
    //                     FROM Account
    //                     WHERE ParentId IN:setContasIds];
    //     for (Account conta : contasFilhas){
    //         if (conta.Faturamento__c > 1000000){
    //         }
    //     }
    // }
    // public void associarSocioFaturamento(List<Account> Contas) {
    //     Set<Id> setIdParent = new Set
    // }
    // for (Account conta : setContasIds){
    //     for (Account contaFilha : conta.ParentId){
    //         contasFilhas.add(contaFilha);
    //     }
    // }
    // public void atualizarQuantidadeFilialMatriz(List<Account> contas){
    //     List<Account> contasProcessar = new List<Account>();
    //     List<Account> contasFiliaisExistentes = new List<Account>();
    //     Set<Id> setIdConta = new Set<Id>();
    //     Set<Account> setContas = new set<Account>();
    //     if (!contas.isEmpty()){
    //         for (Account conta : contas){
    //             setIdConta.add(conta.Id);
    //             setContas.add(conta);
    //         }
    //     }
    //     if (!setIdConta.isEmpty()){
    //         contasFiliaisExistentes = [SELECT Id, Name, QuantidadeContas__c
    //                                    FROM Account
    //                                    WHERE ParentId IN:setIdConta];
    //     }
    //     for (Account contaMatriz : setContas){
    //         Integer qnt = 0;
    //         for (Account contaFilial : contasFiliaisExistentes){
    //             qnt++;
    //         }
    //         contaMatriz.QuantidadeContas__c = qnt;
    //     }
    //     update contas;
    // }
    // public void atualizarQuantidadeFilialMatriz(List<Account> contas){
    //     List<Account> contasProcessar = new List<Account>();
    //     List<Account> contasFiliais = new List<Account>();
    //     Set<Id> setIdContas = new Set<Id>();
    //     if (!contas.isEmpty()){
    //         for (Account conta : contas){
    //             setIdContas.add(conta.Id);
    //         }
    //     }
    //     contasFiliais = [SELECT Id, ParentId
    //                      FROM Account
    //                      WHERE ParentId IN:setIdContas];
    // }
    // trigger.new, trigger.oldMap
    public void atualizarDescricaoContaCriar(List<Account> contas){
        Set<Account> contasProcessar = new Set<account>();

        if (contas.isEmpty()){
            return;
        }

        for (Account conta : contas){
            if (conta.Description == null){
                conta.Description = 'Descrição Teste Função atualizarDescricaoContaCriar';
            }
        }
    }

    // - Criar um método que deverá preencher o campo última oportunidade na conta.
    // - Você deverá atualizar o método futuro criado para atender tanto o primeiro método criado quanto o segundo agora gerado.
    // Observação: Será necessário criar o campo Última Oportunidade no objeto Account para resolver esse problema. No final teremos dois métodos utilizando um único método @future
    // public void atualizarUltimaOportunidadeConta(List<Account> contasLista){
    //     List<Account> contasProcessar = new List<Account>();
    //     Set<Id> idContaSet = new Set<Id>();
    //     List<Opportunity> oportunidadeLista = new List<Opportunity>();
    //     List<Opportunity> oportunidadeLista2 = new List<Opportunity>();
    //     if (contasLista.isEmpty()){
    //         return;
    //     }
    //     for (Account conta : contasLista){
    //         idContaSet.add(conta.Id);
    //     }
    //     oportunidadeLista = [SELECT id, AccountId, Name
    //                          FROM Opportunity
    //                          WHERE AccountID IN:idContaSet
    //                          ORDER BY CreatedDate desc
    //                          limit 1];
    //     System.debug('AQUII >>>>>>> ' + oportunidadeLista);
    //     // para cada conta, eu quero associar a opportunity que tem o mesmo Accound ID
    //     for (Opportunity oportunidade : oportunidadeLista){
    //         conta.UltimaOportunidade__c =
    //     }
    // }
    public void atualizarUltimaOportunidade(List<Account> contas){
        List<Opportunity> oportunidades = [SELECT AccountId, CloseDate
                                           FROM Opportunity
                                           WHERE AccountId IN:contas
                                           ORDER BY CloseDate DESC];
        Map<Id, Id> ultimasOportunidades = new Map<Id, Id>();
        for (Opportunity oportunidade : oportunidades){
            ultimasOportunidades.put(oportunidade.AccountId, oportunidade.AccountId);
        }
        for (Account conta : contas){
            if (ultimasOportunidades.containsKey(conta.Id)){
                conta.UltimaOportunidade__c = ultimasOportunidades.get(conta.Id);
            }
        }
        System.debug('CHEGOU AQUI AccountBO >> atualizarUltimaOportunidade >>ultimasOportunidades' + ultimasOportunidades);
        update contas;
    }

    public void atualizarEnderecosDeContaEContato(List<Account> contas){
        List<Account> contasParaAtualizar = new List<Account>();
        List<Contact> contatosParaAtualizar = new List<Contact>();

        //Pega IDs exclusivos das contas
        Set<Id> contaIdSet = new Set<Id>();
        for (Account conta : contas){
            contaIdSet.add(conta.Id);
        }
        //Pega os contatos da contatos
        List<Contact> contatosLista = [SELECT Id, AccountId
                                       FROM Contact
                                       WHERE AccountId IN:contaIdSet];

        //Processa os contatos que serão atualizados
        for (Account conta : contas){
            for (Contact contact : contatosLista){
                // Atualiza os endereços do contato com os da conta
                if (conta.Id == contact.AccountId){
                    Contact contato = new Contact(Id = contact.Id, AccountId = contact.AccountId);
                    contato.MailingStreet = conta.BillingStreet;
                    contato.MailingCity = conta.BillingCity;
                    contato.MailingState = conta.BillingState;
                    contato.MailingPostalCode = conta.BillingPostalCode;
                    contato.MailingCountry = conta.BillingCountry;
                    contatosParaAtualizar.add(contato);
                }
            }
        }
        // Atualiza os contatos
        update contatosParaAtualizar;
    }

}