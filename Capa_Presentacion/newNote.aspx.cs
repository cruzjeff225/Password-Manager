using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.Data;
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
			if (!IsPostBack)
			{
				CargarNotas();
			}
		}

		private void CargarNotas()
		{
			DataTable dt = NegocioNotas.obtenerNotas();

			repeaterNotas.DataSource = dt;
			repeaterNotas.DataBind();
        }

        protected void btnAddNote_Click(object sender, EventArgs e)
        {
			string Titulo = txtTitulo.Text;
            string Descripcion = txtDescripcion.Text;
            DateTime fechaCreacion = DateTime.Now;

			bool exito = NegocioNotas.insertarNota(Titulo, Descripcion, fechaCreacion);
			if(exito)
			{
				Response.Write("<script>alert('Nota agregada correctamente')</script>");
            }
			else
			{
                Response.Write("<script>alert('Error al agregar la nota')</script>");
            }
        }
    }
}