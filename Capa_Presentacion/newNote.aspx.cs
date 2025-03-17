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
			dt.Columns.Add("Editando", typeof(bool));
			foreach (DataRow row in dt.Rows)
			{
				row["Editando"] = false;
			}

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
                CargarNotas();
            }
			else
			{
                Response.Write("<script>alert('Error al agregar la nota')</script>");
            }
        }

		protected void repeaterNotas_ItemCommand(object source, RepeaterCommandEventArgs e)
		{
			int idNota = Convert.ToInt32(e.CommandArgument);

			switch (e.CommandName)
			{
				case "Editar":
					HabilitarEdicion(idNota);
					break;
                case "Guardar":
                    GuardarEdicion(idNota, e);
                    break;
                case "Cancelar":
                    CancelarEdicion(idNota);
                    break;
                case "Eliminar":
                    EliminarNota(idNota);
                    break;
            }
		}

        private void HabilitarEdicion(int idNota)
        {
            DataTable dt = NegocioNotas.obtenerNotas();
            dt.Columns.Add("Editando", typeof(bool));

            foreach (DataRow row in dt.Rows)
            {
                if ((int)row["idNota"] == idNota)
                {
                    row["Editando"] = true;
                }
                else
                {
                    row["Editando"] = false;
                }
            }
            repeaterNotas.DataSource = dt;
            repeaterNotas.DataBind();
        }
        private void GuardarEdicion(int idNota, RepeaterCommandEventArgs e)
        {
            string Titulo = ((TextBox)e.Item.FindControl("txtTitulo")).Text;
            string Descripcion = ((TextBox)e.Item.FindControl("txtDescripcion")).Text;

            if (NegocioNotas.actualizarNota(idNota, Titulo, Descripcion, DateTime.Now))
            {
                Response.Write("<script>alert('Nota actualizada con exito')</script>");
                CargarNotas();
            }
            else
            {
                Response.Write("<script>alert('Error al actualizar la nota')</script>");
            }
        }

        private void CancelarEdicion(int idNota)
        {
            DataTable dt = NegocioNotas.obtenerNotas();
            dt.Columns.Add("Editando", typeof(bool));

            foreach (DataRow row in dt.Rows)
            {
                if ((int)row["idNota"] == idNota)
                {
                    row["Editando"] = false;
                }
            }
            repeaterNotas.DataSource = dt;
            repeaterNotas.DataBind();
        }

        private void EliminarNota(int idNota)
        {
            if (NegocioNotas.eliminarNota(idNota))
            {
                CargarNotas();
            }
            else
            {
                Response.Write("<script>alert('Error al eliminar la nota')</script>");
            }
        }

        protected void txtTitulo_TextChanged(object sender, EventArgs e)
        {

        }
    }
}