public with sharing class EntrevistasCandidatoController{
    public EntrevistasCandidatoController(){
    }

    public class entrevistaTO{
        @AuraEnabled
        public String nome{ get; set; }

        @AuraEnabled
        public String status{ get; set; }

        @AuraEnabled
        public Date data{ get; set; }

        @AuraEnabled
        public String detalhes{ get; set; }

    }

}