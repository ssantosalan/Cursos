import { LightningElement, track } from 'lwc';

export default class CadastroCliente extends LightningElement {
    @track value = '';
    @track exibirCadastroClientePF = false;

    get options() {
        return [
            { label: 'Cliente PF', value: 'option1' },
            { label: 'Cliente PJ', value: 'option2' },
        ];
    }

    handleRadioGroupChange(event) {
        if (event.target.value === 'option1') {
            this.value = 'PF';
            this.exibirCadastroClientePF = true;
        } else if (event.target.value === 'option2') {
            this.value = 'PJ';
            this.exibirCadastroClientePF = false;
        }
    }
}