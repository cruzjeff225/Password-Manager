using Capa_Datos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Negocio
{
    public class negocioCredenciales
    {
        Credenciales credencialesN = new Credenciales();

        public DataTable obtenerCredenciales()
        {
            return credencialesN.obtenerCredenciales();
        }

        public bool insertarCredenciales(string Plataforma, string Usuario, string Contraseña, int idUsuario)
        {
            return credencialesN.insertarCredenciales(Plataforma, Usuario, Contraseña, idUsuario);
        }

        public bool actualizarCredenciales(int idCredencial, string Plataforma, string Usuario, string Contraseña) 
        {
            return credencialesN.actualizarCredenciales(idCredencial, Plataforma, Usuario, Contraseña);
        }

        public bool eliminarCredenciales(int idCredencial)
        {
            return credencialesN.eliminarCredenciales(idCredencial);
        }
    }
}
