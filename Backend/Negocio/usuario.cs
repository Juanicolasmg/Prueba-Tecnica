using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using Entidades;

namespace Negocio
{
    public class usuario
    {
        public async Task<List<objUsuario>> listarUsuarios()
        {
            dbUsuario DbUsuario = new dbUsuario();
            List<objUsuario> listaUsuarios = new List<objUsuario>();
            listaUsuarios = DbUsuario.listarUsuarios();

            return listaUsuarios;
        }
    }
}
