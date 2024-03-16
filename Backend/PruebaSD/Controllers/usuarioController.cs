using Entidades;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PruebaSD.Controllers
{
    [Route("api/usuario")]
    [ApiController]
    public class usuarioController : ControllerBase
    {
        [HttpGet]
        public async Task<objRespuesta> listarDatosLamparas()
        {
            objRespuesta objRes = new objRespuesta();

            try
            {
                usuario negocioUsuario = new usuario();
                List<objUsuario> listaUsuarios = await negocioUsuario.listarUsuarios();
                if (listaUsuarios.Count > 0)
                {
                    objRes.descripcion = "Consulta deL listado correcta";
                    objRes.valores = listaUsuarios;
                }
                else
                {
                    objRes.descripcion = "No existen usuarios";
                }
            }
            catch (Exception ex)
            {
                objRes.descripcion = ex.Message;
            }

            return objRes;
        }
    }
}
