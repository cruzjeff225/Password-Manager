using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Capa_Datos
{
    public class Notas
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public DataTable obtenerNotas()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Notas", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
                return dt;
            }
        }

        public bool insertarNota(string Titulo, string Descripcion, DateTime fechaCreacion)
        {
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Notas (Titulo, Descripcion, fechaCreacion) VALUES (@Titulo, @Descripcion, @fechaCreacion)", con))
                {
                    cmd.Parameters.AddWithValue("@Titulo", Titulo);
                    cmd.Parameters.AddWithValue("@Descripcion", Descripcion);
                    cmd.Parameters.AddWithValue("@fechaCreacion", fechaCreacion);

                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }

        public bool actualizarNota(int idNota, string Titulo, string Descripcion, DateTime fechaCreacion)
        {
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("UPDATE Notas SET Titulo = @Titulo, Descripcion = @Descripcion, fechaCreacion = @fechaCreacion WHERE idNota = @idNota", con))
                {
                    cmd.Parameters.AddWithValue("@idNota", idNota);
                    cmd.Parameters.AddWithValue("@Titulo", Titulo);
                    cmd.Parameters.AddWithValue("@Descripcion", Descripcion);
                    cmd.Parameters.AddWithValue("@fechaCreacion", fechaCreacion);

                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }

        public bool eliminarNota(int idNota)
        {
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Notas WHERE idNota = @idNota", con))
                {
                    cmd.Parameters.AddWithValue("@idNota", idNota);


                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }


    }
}
