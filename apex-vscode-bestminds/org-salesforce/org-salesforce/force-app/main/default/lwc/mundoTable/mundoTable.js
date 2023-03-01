import { LightningElement, track, api } from 'lwc';

export default class MundoTable extends LightningElement {
    @api mundoLista = [];
    @api mostrarCor;
    @api mostrarTamanho;
    @api mostrarQntLua;
    // @api selecionarTudo;
    @track checkboxValue = false;
    @track mundoListaClone = [];

    connectedCallback() {
        this.mundoListaClone.forEach(item => {
            let itemClonado = { ...item };
            this.mundoListaClone.push(itemClonado);
        });
    }

    // @api
    // selecionarTudo(boolean) {
    //     this.mundoListaClone.forEach(item => {
    //         item.selecionado = boolean;
    //     });
    // }

    // selecionarTudo(checked) {
    //     this.mundoListaClone = this.mundoListaClone.map(mundo => {
    //         return { ...mundo, selecionado: checked };
    //     });
    // }

    handleInputChange(event) {
        this.checkboxValue = event.target.checked;
        const mundoSelecionado = this.buscarMundoPorId(event.target.dataset.id);
        if (mundoSelecionado) {
            alert(mundoSelecionado.nome);
        }
    }

    buscarMundoPorId(id) {
        return this.mundoLista.find(mundo => mundo.id === id);
    }

}