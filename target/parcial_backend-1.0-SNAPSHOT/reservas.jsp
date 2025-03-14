<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Reservas | Coworking</title>
    <link rel="icon" type="image/x-icon" href="./img/icon.svg" />
    <link rel="stylesheet" href="./css/main.css" />
    <link rel="stylesheet" href="./css/form.css" />
  </head>
  <body>
    <header>
      <div class="marca">
        <img class="icon" src="./img/icon.svg" />
        <label>CoWo</label>
      </div>
      <nav>
        <ul>
          <li><a href="index.jsp">Inicio</a></li>
          <li><a href="servicios.jsp">Servicios</a></li>
          <li class="active"><a href="#">Reservas</a></li>          
          <li><a href="listado-reservas.jsp">Listado reservas</a></li>
          <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="reservation-form">
        <h1>Reserva Tu Espacio de Coworking</h1>
        <form action="ReservaServlet" method="POST">
          <label for="name">Nombre completo:</label>
          <input type="text" id="name" name="name" required />

          <label for="email">Correo electrónico:</label>
          <input type="email" id="email" name="email" required />

          <label for="date">Fecha de reserva:</label>
          <input type="date" id="date" name="date" required />

          <label for="space">Tipo de espacio:</label>
          <select id="space" name="space" required>
            <option value="Escritorio">Escritorio</option>
            <option value="Sala de reuniones">Sala de reuniones</option>
            <option value="Oficina privada">Oficina privada</option>
          </select>

          <label for="duration">Duración (horas):</label>
          <input
            type="number"
            id="duration"
            name="duration"
            min="1"
            max="24"
            required
          />

          <button type="submit">Reservar</button>
        </form>
      </section>
    </main>

    <footer>
      <div class="footer-content">
        <p>&copy; 2024 CoWo reservas online. Todos los derechos reservados.</p>
        <p class="social-text">Conoce nuestras redes</p>

        <div class="social-links">
          <a href="https://facebook.com/" target="_blank" aria-label="Facebook">
            <img src="./img/icons/facebook.svg" alt="Facebook" />
          </a>
          <a href="https://twitter.com/" target="_blank" aria-label="Twitter">
            <img src="./img/icons/twitter.svg" alt="Twitter" />
          </a>

          <a href="https://linkedin.com/" target="_blank" aria-label="LinkedIn">
            <img src="./img/icons/linkedin.svg" alt="LinkedIn" />
          </a>
        </div>
      </div>
    </footer>
  </body>
</html>
