trigger AccountTrigger on Account (before insert, before delete, after insert, after undelete, after update){

    if (Trigger.isDelete){
        AccountBO.getInstance().criarCasoAoDeletarConta(Trigger.old);
        AccountBO.getInstance().deletarFicharioDeContaDeletada(Trigger.old);

    }

    if (Trigger.isUndelete){
        AccountBO.getInstance().recuperarContaECriarCaso(Trigger.new );
    }

    if (Trigger.isInsert && Trigger.isBefore){
        AccountBO.getInstance().preencherTipo(Trigger.new );
        AccountBO.getInstance().atualizarDescricaoContaCriar(Trigger.new );
        // AccountBO.getInstance().atualizarUltimaOportunidade(Trigger.new );
    }

    if (Trigger.isInsert && Trigger.isAfter){
        ExercicioSOQL.getInstance().criaTaskParaAccount(Trigger.new );
        AccountBO.getInstance().criarContatoOportunidadeDeContaNova(Trigger.new );
        AccountBO.getInstance().criarFicharioDeContaNova(Trigger.new );
        // AccountBO.getInstance().atualizarUltimaOportunidade(Trigger.new );
    }

    if (Trigger.isUpdate && Trigger.isAfter){
        AccountBO.getInstance().atualizarEnderecosDeContaEContato(Trigger.new);
        AccountBO.getInstance().tratarOportunidade(Trigger.new );
    }

    if (Trigger.isUpdate && Trigger.isBefore){
        // AccountBO.getInstance().atualizarUltimaOportunidade(Trigger.new );
    }

}