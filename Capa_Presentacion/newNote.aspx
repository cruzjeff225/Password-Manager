﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newNote.aspx.cs" Inherits="Capa_Presentacion.newNote" %>

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
    <div class="sidebar">
        <h4>Password Manager</h4>
        <a href="#" class="active"><i class="fas fa-plus-circle"></i> Agregar cuenta</a>
        <a href="#"><i class="fas fa-user"></i> Mis cuentas</a>
        <a href="#"><i class="fas fa-sticky-note"></i> Notas</a>
        <a href="#"><i class="fas fa-credit-card"></i> Tarjetas de crédito - débito</a>
        <a href="#"><i class="fas fa-cog"></i> Configuración</a>
    </div>
    <div class="content">
        <div class="form-container">
            <h2>📝 Agregar Nueva Nota </h2>
            <form>
                <label for="noteTitle">Título</label>
                <input type="text" id="noteTitle" placeholder="Título" />

                <label for="noteDescription">Descripción</label>
                <textarea id="noteDescription" rows="5" placeholder="Descripción..."></textarea>

                <button type="submit">Agregar Nueva Nota</button>
            </form>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2025 Password Manager. Todos los derechos reservados.</p>
    </div>
</body>
</html>