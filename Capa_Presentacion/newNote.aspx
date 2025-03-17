<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newNote.aspx.cs" Inherits="Capa_Presentacion.newNote" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Nueva Nota</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" />
    <link href="Content/stylesGlobals.css" rel="stylesheet" />
    <link href="Content/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="sidebar">
            <h4>Password Manager</h4>
            <a href="#" class="active"><i class="fas fa-plus-circle"></i>Agregar cuenta</a>
            <a href="#"><i class="fas fa-user"></i>Mis cuentas</a>
            <a href="#"><i class="fas fa-sticky-note"></i>Agregar nota</a>
            <a href=""><i class="fas fa-sticky-note"></i>Mis notas</a>
            <a href="#"><i class="fas fa-credit-card"></i>Tarjetas de crédito - débito</a>
            <a href="#"><i class="fas fa-cog"></i>Configuración</a>
        </div>
        <div class="content">
            <div class="form-container">
                <h2>📝 Agregar Nueva Nota </h2>
                <form>
                    <label for="noteTitle">Título</label>
                    <asp:TextBox ID="txtTitulo" runat="server" CssClass="input"></asp:TextBox>

                    <label for="noteDescription">Descripción</label>
                    <asp:TextBox ID="txtDescripcion" runat="server" CssClass="input"></asp:TextBox>

                    <asp:Button ID="btnAddNote" runat="server" CssClass="btn btn-primary submit" Text="Agregar" OnClick="btnAddNote_Click" />
                </form>
                <br />

                <asp:Repeater ID="repeaterNotas" runat="server">
                    <ItemTemplate>
                        <div class="sticky-note">
                            <h3><%# Eval("Titulo") %></h3>
                            <p><%# Eval("Descripcion") %></p>
                            <small><%# Eval("fechaCreacion", "{0:dd/MM/yyyy}") %></small>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <div class="footer">
            <p>&copy; 2025 Password Manager. Todos los derechos reservados.</p>
        </div>
    </form>
</body>
</html>
