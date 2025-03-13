using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using Capa_Datos;

namespace Capa_Negocio
{
    public class negocioNotas
    {
        Notas notasN = new Notas();

        public DataTable obtenerNotas()
        {
            return notasN.obtenerNotas();
        }

        public bool insertarNota(string Titulo, string Descripcion, DateTime fechaCreacion)
        {
            return notasN.insertarNota(Titulo, Descripcion, fechaCreacion);
        }


        public bool actualizarNota(int idNota, string Titulo, string Descripcion, DateTime fechaCreacion)
        {
            return notasN.actualizarNota(idNota, Titulo, Descripcion, fechaCreacion);
        }

        public bool eliminarNota(int idNota)
        {
            return notasN.eliminarNota(idNota);
        }
    }
}
