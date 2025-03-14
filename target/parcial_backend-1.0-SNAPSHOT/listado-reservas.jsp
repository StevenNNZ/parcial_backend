<%@page import="java.util.List"%>
<%@page import="entity.Reserva"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de Reservas | Coworking</title>
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
                <li><a href="servicios.jsp">Servicios</a></li>
                <li><a href="reservas.jsp">Reservas</a></li>
                <li class="active"><a href="listado-reservas.jsp">Listado reservas</a></li>
                <li><a href="contacto.jsp">Contacto</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="reservation-list">
            <h1>Listado de Reservas</h1>
            <table>
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Fecha</th>
                        <th>Espacio</th>
                        <th>Duración</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                       // Obtener la lista de reservas almacenadas en la sesión
                        List<Reserva> reservas = (List<Reserva>) request.getSession().getAttribute("reservas");
                        
                        // Verificar si hay reservas disponibles
                        if (reservas != null && !reservas.isEmpty()) {
                            for (int i = 0; i < reservas.size(); i++) {
                                Reserva reserva = reservas.get(i);
                    %>
                                <tr>
                                    <td><%= reserva.getNombres()%></td>
                                    <td><%= reserva.getCorreo() %></td>
                                    <td><%= reserva.getFechaReserva()%></td>
                                    <td><%= reserva.getTipoEspacio()%></td>
                                    <td><%= reserva.getDuracion() %> horas</td>
                                    <td>
                                        <form action="EliminarReservaServlet" method="post">
                                            <input type="hidden" name="reservaIndex" value="<%= i %>">
                                            <button class="delete-btn" type="submit">Eliminar</button>
                                        </form>
                                    </td>
                                </tr>
                    <%
                            }
                        } else {
                    %>
                        <tr>
                            <td colspan="6">No hay reservas registradas.</td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
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
