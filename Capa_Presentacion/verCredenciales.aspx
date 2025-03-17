<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verCredenciales.aspx.cs" Inherits="Capa_Presentacion.verCredenciales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Mis Credenciales</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link href="Content/stylesGlobals.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <h4>Password Manager</h4>
            <a href="RegistroCredenciales.aspx"><i class="fas fa-plus-circle"></i>Agregar cuenta</a>
            <a href="#" class="active"><i class="fas fa-user"></i>Mis cuentas</a>
            <a href="newNote.aspx"><i class="fas fa-sticky-note"></i>Notas</a>
            <a href="#"><i class="fas fa-credit-card"></i>Tarjetas de crédito - débito</a>
            <a href="#"><i class="fas fa-cog"></i>Configuración</a>
        </div>
        <div class="content">
            <h2>Mis Credenciales</h2>
            <asp:GridView ID="gvCredenciales" runat="server" AutoGenerateColumns="false" CssClass="table table-hover"
               DataKeyNames="idCredencial"
                OnRowEditing="gvCredenciales_RowEditing"
                OnRowUpdating="gvCredenciales_RowUpdating"
                OnRowCancelingEdit="gvCredenciales_RowCancelingEdit"
                OnRowDeleting="gvCredenciales_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="idCredencial" HeaderText="# Plataforma" />
                    <asp:BoundField DataField="Plataforma" HeaderText="Plataforma" />
                    <asp:BoundField DataField="Usuario" HeaderText="Usuario" />
                    <asp:BoundField DataField="Contraseña" HeaderText="Contraseña" />
                    <asp:CommandField ShowEditButton="true" EditText="<i class='fas fa-edit'></i>" />
                    <asp:CommandField ShowDeleteButton="true" DeleteText="<i class='fas fa-trash'></i>" />
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
