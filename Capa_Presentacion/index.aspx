<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Capa_Presentacion.index" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Manager</title>
    <link rel="stylesheet" href="Content/styleHome.css" />
</head>

<body>
    <main class="container">
        <header>
            <nav class="nav container">
                <h2 class="nav_logo"><a href="#">Password Manager</a></h2>

                <ul class="menu_items">
                    <li><a href="#" class="nav_link">Inicio</a></li>
                    <li><a href="#" class="nav_link">Contactanos</a></li>
                </ul>
            </nav>
        </header>
        <section class="hero">
            <div class="row">
                <div class="column">
                    <h2>La mejor forma de guardar y proteger tus contraseñas y notas <br> ¡Pruébalo gratis, ahora! </h2>
                    <p>Accede a todas tus contraseñas y notas desde cualquier lugar con total seguridad. Nuestra
                        plataforma garantiza que tú tengas el control.</p>
                    <div class="button"> 
                        <button class="btn" onclick="window.location.href='https://localhost:44369/RegistroCredenciales.aspx';">Comenzar ahora!</button>
                    </div>
                </div>
                <div class="column">
                    <img src="https://cdn3d.iconscout.com/3d/premium/thumb/password-3d-icon-download-in-png-blend-fbx-gltf-file-formats--security-lock-protection-secure-safety-internet-pack-data-icons-5114950.png" class="hero_img" />
                </div>
            </div>
        </section>
    </main>
</body>

</html>
