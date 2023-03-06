import { LightningElement, track } from 'lwc';
import obterUltimosImoveisVendidosCls from '@salesforce/apex/TabelaImovelVendidoController.obterUltimosImoveisVendidosCls';

export default class TabelaImovelVendido extends LightningElement {
    @track imoveis = [];

    connectedCallback() {
        this.obterUltimosImoveisVendidos();
    }

    obterUltimosImoveisVendidos() {
        obterUltimosImoveisVendidosCls({})
            .then(result => {
                this.imoveis = result;
            })
            .catch(error => {
                console.log(error);
            });
    }

}