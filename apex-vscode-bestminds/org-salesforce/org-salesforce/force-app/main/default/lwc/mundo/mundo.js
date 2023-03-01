import { LightningElement, track } from 'lwc';
import criarMundoCls from '@salesforce/apex/MundoController.criarMundo';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';
import obterMundoCls from '@salesforce/apex/MundoController.obterMundo';

export default class Mundo extends LightningElement {

    @track nome = '';
    @track cor = '';
    @track distanciaSol = 0;
    @track quantidadeLuas = 0;
    @track tamanho = 0;
    @track mundoTOLista = [];
    @track possuiAgua = false;
    @track mostrarQntLua = false;
    @track mostrarCor = false;
    @track selecionarTudo = false;

    handleInputChange(event) {
        const { name, value, checked } = event.target;

        switch (name) {
            case 'possuiAgua':
            case 'mostrarQntLua':
            case 'mostrarCor':
            case 'selecionarTudo':
                this[name] = checked;
                break;
            default:
                this[name] = value;
                break;
        }
    }


    handleCriarMundo(event) {
        const mundoTO = {
            nome: this.nome,
            cor: this.cor,
            distanciaSol: this.distanciaSol,
            tamanho: this.tamanho,
            quantidadeLuas: this.quantidadeLuas,
            possuiAgua: this.possuiAgua
        };
        criarMundoCls({
            mundoTO
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

    obterMundoTO() {
        obterMundoCls({})
            .then(result => {
                this.mundoTOLista = result;
            })
            .catch(error => {
                this.showToast('error', 'Erro', 'Deu ruim...', 'dismissable');
                console.log(error);
            });
    }

    connectedCallback() {
        this.obterMundoTO();
    }

    showToast(type, title, message, mode) {
        const event = new ShowToastEvent({
            variant: type,
            title: title,
            message: message,
            mode: mode
        });
        this.dispatchEvent(event);
    }
}