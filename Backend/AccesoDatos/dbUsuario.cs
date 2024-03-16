using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;


namespace AccesoDatos
{
    public class dbUsuario
    {
        public List<objUsuario> listarUsuarios()
        {
            SqlConnection db = new SqlConnection(@"DATA SOURCE=FELIPE\CITADEL; INITIAL CATALOG=PruebaSD; USER=Nicolas; PASSWORD=Els2023*;");
            db.Open();
            string sql = @"SELECT usuID, nombre, apellido
                            FROM Usuario;";

            using var cmd = new SqlCommand(sql, db);
            SqlDataReader datos = cmd.ExecuteReader();
            List<objUsuario> listaUsuarios = new List<objUsuario>();
            objUsuario objusuario;

            if (datos != null)
            {
                while (datos.Read())
                {
                    objusuario = new objUsuario();
                    if (!datos.IsDBNull(0)) objusuario.usuID = datos.GetDecimal(0);
                    if (!datos.IsDBNull(1)) objusuario.nombre = datos.GetString(1);
                    if (!datos.IsDBNull(2)) objusuario.apellido = datos.GetString(2);
                    listaUsuarios.Add(objusuario);
                }
            }
            db.Close();
            return listaUsuarios;
        }
    }
}
