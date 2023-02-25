import { LightningElement, track } from 'lwc';

export default class InformacoesPessoais extends LightningElement {

    @track nome = '';
    @track email = '';
    @track exibirInformacoesPessoa = false;

    handleInputChange(event) {
        const { name, value } = event.target;
        this[name] = value;
    }

    handleMostrarInformacoesPessoa(event) {
        event.preventDefault();
        this.exibirInformacoesPessoa = true;
    }

}