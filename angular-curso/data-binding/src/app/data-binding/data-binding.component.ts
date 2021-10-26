import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-data-binding',
  templateUrl: './data-binding.component.html',
  styleUrls: ['./data-binding.component.css'],
})
export class DataBindingComponent implements OnInit {
  url: string = 'http://bluesnova.com.br';

  cursoAngular: boolean = true;
  urlImagem = 'http://lorempixel.com.br/400/200/nature';

  getValor() {
    return 1;
  }

  getCurtiCurso() {
    return true;
  }

  botaoCliclado() {
    alert('Botão clicado!');
  }

  valorAtual: string = '';


  onKeyUp(evento: any) {
    console.log((<HTMLInputElement>evento.target).value)
    this.valorAtual = (<HTMLInputElement>evento.target).value;
    
  }

  valorSalvo(valor) {
    this.valorSalvo = valor;
  }

  constructor() {}

  ngOnInit(): void {}
}
