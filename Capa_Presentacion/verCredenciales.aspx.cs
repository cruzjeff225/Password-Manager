using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Negocio;

namespace Capa_Presentacion
{
	public partial class verCredenciales : System.Web.UI.Page
	{
		negocioCredenciales NegocioCredenciales = new negocioCredenciales();
        protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				cargarCredenciales();
			}

		}

		protected void cargarCredenciales()
        {
            gvCredenciales.DataSource = NegocioCredenciales.obtenerCredenciales();
            gvCredenciales.DataBind();
        }

		protected void gvCredenciales_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
		{
			gvCredenciales.EditIndex = e.NewEditIndex;
			cargarCredenciales();
		}

        protected void gvCredenciales_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            int idCredencial = Convert.ToInt32(gvCredenciales.DataKeys[e.RowIndex].Value);
            GridViewRow row = gvCredenciales.Rows[e.RowIndex];


            string Plataforma = (row.Cells[1].Controls[0] as System.Web.UI.WebControls.TextBox).Text;
            string Usuario = (row.Cells[2].Controls[0] as System.Web.UI.WebControls.TextBox).Text;
            string Contraseña = (row.Cells[3].Controls[0] as System.Web.UI.WebControls.TextBox).Text;

            if (NegocioCredenciales.actualizarCredenciales(idCredencial,Plataforma, Usuario, Contraseña))
            {
                gvCredenciales.EditIndex = -1;
                Response.Write("<script>alert(Plataforma actualizada con éxito!');</script>");
                cargarCredenciales();
            }
            else
            {
                Response.Write("<script>alert(Error al actualizar plataforma!');</script>");
            }
        }

        protected void gvCredenciales_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            int idCredencial= Convert.ToInt32(gvCredenciales.DataKeys[e.RowIndex].Value);

            if (NegocioCredenciales.eliminarCredenciales(idCredencial))
            {
                Response.Write("<script>alert(Plataforma eliminada con éxito!');</script>");
                cargarCredenciales();
            }
            else
            {
                Response.Write("<script>alert(Error al eliminar plataforma!');</script>");
            }
        }


        protected void gvCredenciales_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            gvCredenciales.EditIndex = -1;
            cargarCredenciales();
        }
    }
}