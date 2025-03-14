<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Servicios | Coworking</title>
    <link rel="icon" type="image/x-icon" href="./img/icon.svg" />
    <link rel="stylesheet" href="./css/main.css" />
    <link rel="stylesheet" href="./css/reservas.css" />
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
          <li class="active"><a href="#">Servicios</a></li>
          <li><a href="reservas.jsp">Reservas</a></li>
          <li><a href="#">Listado reservas</a></li>
          <li><a href="contacto.jsp">Contacto</a></li>
        </ul>
      </nav>
    </header>

    <main>
      <h1>Servicios Ofrecidos</h1>
      <section class="services">
        <div class="service-card">
          <img src="./img/icons/workspaces.svg" />
          <h2>Espacios de Trabajo Compartidos</h2>
          <p>
            Disfruta de un ambiente colaborativo y flexible con nuestros
            espacios de trabajo compartidos. Ideal para freelancers y pequeños
            equipos.
          </p>
        </div>
        <div class="service-card">
          <img src="./img/icons/offices.svg" />
          <h2>Oficinas Privadas</h2>
          <p>
            Ofrecemos oficinas privadas para aquellos que necesitan más
            privacidad y un entorno de trabajo tranquilo.
          </p>
        </div>
        <div class="service-card">
          <img src="./img/icons/meeting.svg" />
          <h2>Salas de Reuniones</h2>
          <p>
            Nuestras salas de reuniones están equipadas con tecnología moderna
            para facilitar tus presentaciones y reuniones de equipo.
          </p>
        </div>
        <div class="service-card">
          <img src="./img/icons/networking.svg" />
          <h2>Eventos de Networking</h2>
          <p>
            Organizamos eventos de networking para que puedas conectar con otros
            profesionales y expandir tus oportunidades de negocio.
          </p>
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
