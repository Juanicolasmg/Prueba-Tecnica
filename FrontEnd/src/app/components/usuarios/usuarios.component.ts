import { Component } from '@angular/core';
import { MatTableDataSource } from '@angular/material/table';
import { Usuarios } from 'src/app/interfaces/usuarios';
import { UsuariosService } from 'src/services/usuarios.service';


@Component({
  selector: 'app-usuarios',
  templateUrl: './usuarios.component.html',
  styleUrls: ['./usuarios.component.scss']
})
export class UsuariosComponent {
  displayedColumns: string[] = ['usuID', 'nombre', 'apellido'];
  dataSource = new MatTableDataSource<Usuarios>();

  listadousuarios:any
  listausuarios:any;

  constructor(private service:UsuariosService) { }

  ngOnInit(): void {
    this.mostrarUsuarios();
  }

  async mostrarUsuarios(){

    try
    {
      this.listadousuarios = await this.service.listarUsuarios();
    }
    catch(err)
    {
      console.error('Error al obtener usuarios:', err);
    }
  }

  accionBotonMostrarUsuarios() {
    try {
      this.listausuarios = this.listadousuarios.valores;
      this.dataSource = this.listausuarios;
    } catch (error) {
      console.error('Error en accionBotonMostrarUsuarios:', error);
    }
  }
}
