import { LightningElement, track } from 'lwc';

export default class OlaMundo extends LightningElement {
    @track titulo = 'Olá Mundo';
    @track ativo = true;
    @track mundoList = ['M1', 'M2', 'M3', 'M4', 'M5'];
}