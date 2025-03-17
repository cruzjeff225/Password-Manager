<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Credenciales.aspx.cs" Inherits="Capa_Presentacion.Credenciales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar Plataforma</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link href="Content/stylesGlobals.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="sidebar">
        <h4>Password Manager</h4>
        <a href="#" class="active"><i class="fas fa-plus-circle"></i>Agregar cuenta</a>
        <a href="#"><i class="fas fa-user"></i>Mis cuentas</a>
        <a href="#"><i class="fas fa-sticky-note"></i>Notas</a>
        <a href="#"><i class="fas fa-credit-card"></i>Tarjetas de crédito - débito</a>
        <hr>
        <a href="#"><i class="fas fa-cog"></i>Configuración</a>
    </div>
    <div class="content">
        <div class="title">
            <h3 class="mb-4">Agregar Plataforma</h3>
        </div>
        <div class="mb-3-row">
            <label for="txtPlataforma" class="col-sm-2 col-form-label">Plataforma</label>
            <div class="col-sm-6">
                <asp:TextBox ID="txtPlataforma" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="mb-3-row">
            <label for="txtUsuario" class="col-sm-2 col-form-label">Usuario</label>
            <div class="col-sm-6">
                <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control" placeholder="Usuario"></asp:TextBox>
            </div>
        </div>
        <div class="mb-3-row">
            <label for="txtContraseña" class="col-sm-2 col-form-label">Contraseña</label>
            <div class="col-sm-6">
                <asp:TextBox ID="txtContraseña" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </div>
        <div class="mb-3-row row">
            <div class="col-sm-8">
                <asp:Button ID="btnAgregar" runat="server" CssClass="btn btn-primary btn-add" Text="Agregar" OnClick="btnAgregar_Click" />
            </div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2025 Password Manager. Todos los derechos reservados.</p>
    </div>
 </form>
</body>
</html>
