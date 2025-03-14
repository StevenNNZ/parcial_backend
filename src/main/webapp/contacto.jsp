<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contacto | Coworking</title>
    <link rel="icon" type="image/x-icon" href="./img/icon.svg" />
    <link rel="stylesheet" href="./css/main.css" />
    <link rel="stylesheet" href="./css/contact.css" />
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
          <li><a href="reservas.jsp">Reservas</a></li>
          <li><a href="listado-reservas.jsp">Listado reservas</a></li>
          <li class="active"><a href="#">Contacto</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <section class="contact">
        <div class="contact-form">
          <h2>Envíanos un Mensaje</h2>
          <form>
            <label for="name">Nombre:</label>
            <input type="text" id="name" name="name" required />

            <label for="email">Correo electrónico:</label>
            <input type="email" id="email" name="email" required />

            <label for="message">Mensaje:</label>
            <textarea id="message" name="message" rows="5" required></textarea>

            <button type="submit">Enviar</button>
          </form>
        </div>
        <div class="contact-info">
          <div>
            <h2>Información de Contacto</h2>
            <p>
              Si tienes alguna pregunta o necesitas más información, no dudes en
              ponerte en contacto con nosotros. Estamos aquí para ayudarte.
            </p>
          </div>

          <div class="content-info">
            <div class="info">
              <img src="/img/icons/location.svg" alt="" />
              <p>Avenida Siempreviva 742, Springfield</p>
            </div>
            <div class="info">
              <img src="/img/icons/phone.svg" alt="" />
              <p>+57 321 456 7890</p>
            </div>
            <div class="info">
              <img src="/img/icons/email.svg" alt="" />
              <p>contacto@coworking.com</p>
            </div>
          </div>
        </div>
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
