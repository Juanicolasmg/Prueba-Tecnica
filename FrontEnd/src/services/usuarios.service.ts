import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Usuarios } from 'src/app/interfaces/usuarios';

@Injectable({
  providedIn: 'root'
})
export class UsuariosService {

  constructor(private http:HttpClient) { }

  listarUsuarios(): Promise<Usuarios[]>{
    return new Promise<Usuarios[]>((resolve, reject) => {
      this.http.get<Usuarios[]>(`https://localhost:44361/api/usuario`).subscribe({
        next: (response: any) => {
          if(response) {
            resolve(response);
          } else {
            resolve([]);
          }
        },
        error: (err) => reject(err)
      })
    });
  }
}
