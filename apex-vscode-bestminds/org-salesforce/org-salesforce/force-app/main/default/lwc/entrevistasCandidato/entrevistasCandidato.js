import { LightningElement, track, api } from 'lwc';

export default class EntrevistasCandidato extends LightningElement {
    // @track nome = '';
    // @track status = '';
    // @track data = '';
    // @track detalhes = '';
    @api recordId;
    entrevistas = [];

    connectedCallback() {
        this.fetchInterviews();
    }

    fetchInterviews() {
        getInterviews({ candidatoId: this.recordId })
            .then(result => {
                this.entrevistas = result;
            })
            .catch(error => {
                console.error(error);
            });
    }

}