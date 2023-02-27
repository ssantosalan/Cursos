import { LightningElement, track, api } from 'lwc';

export default class MundoTable extends LightningElement {
    @api mundoLista;
    @api mostrarCor;
    @track mostrarTamanho;

    @api
    mostrarColunaTamanho(showTamanho) {
        this.mostrarTamanho = showTamanho;
    }

    // connectedCallback() {
    //     this.mostrarColunaTamanho();
    // }

}