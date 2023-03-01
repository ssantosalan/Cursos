public with sharing class cadastroClienteController {
    public static Cliente__c criarCliente(ClienteTO clienteTO) {
        Cliente__c cliente = new Cliente__c();
        cliente.Name = clienteTO.nome;
        cliente.Cpf__c = clienteTO.cpf;
        
        insert cliente;
        return cliente;
    } 

    public class clienteTO{
        @AuraEnabled
        public String nome {get; set;}
        @AuraEnabled
        public String cpf {get; set;}
        
    }
}