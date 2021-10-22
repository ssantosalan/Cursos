import { Component, OnInit } from '@angular/core';
import { CursosModule } from './cursos.module';
import { CursosService} from './cursos.service';

@Component({
  selector: 'app-cursos',
  templateUrl: './cursos.component.html',
  styleUrls: ['./cursos.component.css']
})
export class CursosComponent implements OnInit {

  nomeSite: string;

  cursos: string[];

  constructor(private cursosService: CursosService) { 
    this.nomeSite = 'http://bluesnova.com.br';

    //var servico = new CursosService();

    this.cursos = this.cursosService.getCursos();
    
  }
    
  ngOnInit(): void {
  }

}
