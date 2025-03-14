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
            background-color: #f4f6f9;
            color: #495057;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .sidebar {
            width: 280px;
            height: 100vh;
            background-color: #2c3e50;
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
            background-color: #34495e;
            color: #fff;
            transform: translateX(10px);
        }
        .sidebar a.active {
            background-color: #16a085;
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
        .container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }
        .card {
            width: 180px;
            height: 220px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
            padding: 10px;
            border-radius: 10px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            background-color: white;
        }
        .card img {
            width: 100px;
            height: auto;
            object-fit: contain;
            margin-bottom: 10px;
        }
        .footer {
            text-align: center;
            font-size: 14px;
            color: #7f8c8d;
            margin-top: 20px;
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
        <div class="container">
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a8/Airbnb_Logo_B%C3%A9lo.svg" alt="Airbnb"><h5>Airbnb</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a9/Amazon_logo.svg" alt="Amazon"><h5>Amazon</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/5/53/Best_Buy_Logo.svg" alt="Best Buy"><h5>Best Buy</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/5/51/Booking.com_logo.svg" alt="Booking"><h5>Booking</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/7/75/Netflix_icon.svg" alt="Netflix"><h5>Netflix</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b5/PayPal.svg" alt="PayPal"><h5>PayPal</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/2/26/Spotify_logo_with_text.svg" alt="Spotify"><h5>Spotify</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/b/b8/YouTube_logo.svg" alt="YouTube"><h5>YouTube</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Facebook_Logo_%282019%29.png" alt="Facebook"><h5>Facebook</h5></div>
            <div class="card"><img src="https://upload.wikimedia.org/wikipedia/commons/a/a5/Instagram_icon.png" alt="Instagram"><h5>Instagram</h5></div>
        </div>
    </div>
    <div class="footer">
        <p>&copy; 2025 Password Manager. Todos los derechos reservados.</p>
    </div>
</body>
</html>
