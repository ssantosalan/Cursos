import { LightningElement, track } from 'lwc';
import criarCarroCls from '@salesforce/apex/CriarCarro.criarCarro';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class Carro extends LightningElement {
    @track nome = '';
    @track cor = '';
    @track placa = '';
    @track velocidade = 0;

    handleInputChange(event) {
        if (event.target.name === 'cor') {
            this.cor = event.target.value;
        } else if (event.target.name === 'placa') {
            this.placa = event.target.value;
        } else if (event.target.name === 'velocidade') {
            this.velocidade = event.target.value;
        } else if (event.target.name === 'nome') {
            this.nome = event.target.value;
        }
    }

    criarCarro(event) {
        const carroTO = {
            nome: this.nome,
            cor: this.cor,
            velocidade: this.velocidade,
            placa: this.placa
        };
        criarCarroCls({
            carroTO
        })
            .then(result => {
                this.showToast('success', 'Sucesso', result.Name + 'criado com sucesso !', 'dismissable');
                console.log('Mundo criado', result);
            })
            .catch(error => {
                this.showToast('error', 'Erro', 'Deu ruim...', 'dismissable');
                console.log(error);
            });
    }

}