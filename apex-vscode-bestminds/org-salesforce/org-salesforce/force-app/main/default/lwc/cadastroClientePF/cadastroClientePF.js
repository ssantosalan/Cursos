import { LightningElement, api } from 'lwc';
import cadastroClienteCls from '@salesforce/apex/cadastroClienteController.criarCliente';

export default class CadastroClientePF extends LightningElement {
    @api nome = '';
    @api cpf = '';

    handleInputOnchange(event) {
        if (event.target.name === nome) {
            this.nome = event.target.value;
        } else if (event.target.name === cpf) {
            this.cpf = event.target.value;
        }
    }

    criarClientePF(event) {
        cadastroClienteCls({})
    }


}