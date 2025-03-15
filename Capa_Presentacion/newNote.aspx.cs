using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_Presentacion
{
	public partial class newNote : System.Web.UI.Page
	{
		negocioNotas NegocioNotas = new negocioNotas();
		protected void Page_Load(object sender, EventArgs e)
		{

		}

        protected void btnNew_Click(object sender, EventArgs e)
        {
			string Titulo = txtTitulo.Text;
			string Descripcion = txtDescripcion.Text;
			DateTime fechaCreacion = DateTime.Now;


			bool exito = NegocioNotas.insertarNota(Titulo, Descripcion, fechaCreacion);
			if (exito) 
			{
				Response.Write("<script>alert('Nota agregada con éxito!';</script>)");
			}
            else
            {
                 Response.Write("<script>alert('Error al agregar nota';</script>)");
            }
        }
    }
}