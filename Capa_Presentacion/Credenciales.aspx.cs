using Capa_Negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Capa_Presentacion
{
	public partial class Credenciales : System.Web.UI.Page
	{
		negocioCredenciales NegocioCredenciales = new negocioCredenciales();
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				string Plataforma = Request.QueryString["plataforma"];
				txtPlataforma.Text = Plataforma;
			}
		}

		protected void btnAgregar_Click(object sender, EventArgs e)
		{
			string Plataforma = txtPlataforma.Text;
			string Usuario = txtUsuario.Text;
			string Contraseña = txtContraseña.Text;

			bool exito = NegocioCredenciales.insertarCredenciales(Plataforma, Usuario, Contraseña);
			if (exito)
			{
				Response.Write("<script>alert('Credenciales agregadas con éxito');</script>");
				LimpiarFormulario();
			}
			else
			{
				Response.Write("<script>alert('Error al agregar credenciales');</script>");
			}
		}

        private void LimpiarFormulario() 
		{
			txtPlataforma.Text = string.Empty;
			txtUsuario.Text = string.Empty;
			txtContraseña.Text = string.Empty;
		}

    }
}