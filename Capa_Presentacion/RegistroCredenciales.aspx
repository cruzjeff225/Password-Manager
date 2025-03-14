<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroCredenciales.aspx.cs" Inherits="Capa_Presentacion.WebForm1" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Manager</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9; /* Fondo más claro */
            color: #495057; /* Texto más suave y moderno */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .sidebar {
            width: 280px;
            height: 100vh;
            background-color: #2c3e50; /* Color azul oscuro */
            padding: 30px 20px;
            position: fixed;
            top: 0;
            left: 0;
            box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
        }
        .sidebar h4 {
            color: #ecf0f1;
            font-weight: bold;
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
        }
        .sidebar a {
            color: #bdc3c7;
            text-decoration: none;
            display: flex;
            align-items: center;
            padding: 14px 18px;
            font-weight: 500;
            border-radius: 8px;
            transition: all 0.3s ease;
            margin-bottom: 15px;
            font-size: 18px;
        }
        .sidebar a:hover {
            background-color: #34495e; /* Azul más oscuro */
            color: #fff;
            transform: translateX(10px);
        }
        .sidebar a.active {
            background-color: #16a085; /* Verde brillante para indicar el enlace activo */
            color: #fff;
        }
        .sidebar i {
            margin-right: 15px;
            font-size: 20px;
        }
        .content {
            margin-left: 300px;
            padding: 40px;
            min-height: 100vh;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }
        .content h2 {
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 20px;
        }
        .content p {
            color: #7f8c8d;
            font-size: 18px;
        }
        hr {
            border-color: #ecf0f1;
            margin: 30px 0;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            color: #7f8c8d;
            position: fixed;
            bottom: 10px;
            left: 50%;
            transform: translateX(-50%);
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h4>Password Manager</h4>
        <a href="#" class="active"><i class="fas fa-plus-circle"></i> Agregar cuenta</a>
        <a href="#"><i class="fas fa-user"></i> Mis cuentas</a>
        <a href="#"><i class="fas fa-sticky-note"></i> Notas</a>
        <a href="#"><i class="fas fa-credit-card"></i> Tarjetas de crédito - débito</a>
        <hr>
        <a href="#"><i class="fas fa-cog"></i> Configuración</a>
    </div>
    <div class="content">
        <h2>Bienvenido a tu gestor de contraseñas</h2>
        <p>Selecciona una opción del menú para comenzar. ¡Tu seguridad es nuestra prioridad!</p>
    </div>
    <div class="footer">
        <p>&copy; 2025 Password Manager. Todos los derechos reservados.</p>
    </div>
</body>
</html>
