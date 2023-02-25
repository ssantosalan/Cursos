import { LightningElement, track } from 'lwc';

export default class InformacoesContato extends LightningElement {
    @track nome = '';
    @track endereco = '';
    @track cpf = '';
    @track email = '';
    @track exibirInformacoesContato = false;

    handleInputChange(event) {
        const { name, value } = event.target;
        this[name] = value;
    }

    // connectedCallback(){
    //     debugger;
    // }

    handleMostrarInformacoesContato(event) {
        event.preventDefault();
        this.exibirInformacoesContato = true;
    }
}
