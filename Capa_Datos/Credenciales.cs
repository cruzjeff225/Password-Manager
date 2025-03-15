using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Globalization;

namespace Capa_Datos
{
    public class Credenciales
    {
        private string conexionString = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public DataTable obtenerCredenciales()
        {
            DataTable dt = new DataTable();
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM Credenciales", con))
                {
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        da.Fill(dt);
                    }
                }
            }
            return dt;
        }

        public bool insertarCredenciales(string Plataforma, string Usuario, string Contraseña) 
        {
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();

                using (SqlCommand cmd = new SqlCommand("INSERT INTO Credenciales (Plataforma, Usuario, Contraseña) VALUES (@Plataforma, @Usuario, @Contraseña)", con))
                {
                    cmd.Parameters.AddWithValue("@Plataforma", Plataforma);
                    cmd.Parameters.AddWithValue("@Usuario", Usuario);
                    cmd.Parameters.AddWithValue("@Contraseña", Contraseña);

                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }

        public bool actualizarCredenciales (string Plataforma, string Usuario, string Contraseña)
        {
            using (SqlConnection con = new SqlConnection(conexionString)) 
            { 
                con.Open();

                using (SqlCommand cmd = new SqlCommand("UPDATE Credenciales SET Plataforma = @Plataforma, Usuario = @Usuario, Contraseña = @Contraseña WHERE Usuario = @Usuario", con))
                {
                    cmd.Parameters.AddWithValue("@Plataforma", Plataforma);
                    cmd.Parameters.AddWithValue("@Usuario", Usuario);
                    cmd.Parameters.AddWithValue("@Contraseña", Contraseña);

                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }

        public bool eliminarCredenciales(int idCredencial)
        {
            using (SqlConnection con = new SqlConnection(conexionString))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("DELETE FROM Credenciales WHERE idCredencial = @idCredencial", con))
                {
                    cmd.Parameters.AddWithValue("@idCredencial", idCredencial);
                    int filasAfectadas = cmd.ExecuteNonQuery();
                    return filasAfectadas > 0;
                }
            }
        }
    }
}
