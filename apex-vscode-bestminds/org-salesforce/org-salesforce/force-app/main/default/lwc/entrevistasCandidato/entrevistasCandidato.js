import { LightningElement, track, api } from 'lwc';
import obterEntrevistaCls from '@salesforce/apex/EntrevistasCandidatoController.obterEntrevista';

export default class EntrevistasCandidato extends LightningElement {
    @api recordId;
    @track entrevistas = [];

    connectedCallback() {
        this.buscarEntrevistas();
    }

    buscarEntrevistas() {
        obterEntrevistaCls({ candidatoId: this.recordId })
            .then(result => {
                this.entrevistas = result;
            })
            .catch(error => {
                console.log(error);
            });
    }

}