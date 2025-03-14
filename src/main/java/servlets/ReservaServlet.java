package servlets;

import entity.Reserva;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet para gestionar las reservas en el sistema.
 * Permite recibir los datos de la reserva, validarlos y almacenarlos en la sesión.
 */
@WebServlet(urlPatterns = {"/ReservaServlet"})
public class ReservaServlet extends HttpServlet {

    /**
     * Método auxiliar para manejar solicitudes genéricas.
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
    }

    /**
     * Método que maneja las solicitudes GET.
     * En este caso, simplemente llama a processRequest().
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Método que maneja las solicitudes POST.
     * Recibe los datos del formulario, valida la información y guarda la reserva en la sesión.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener parámetros del formulario
        String nombres = request.getParameter("name");        
        String correo = request.getParameter("email");
        String fechaReserva = request.getParameter("date");
        String tipoEspacio = request.getParameter("space");
        String duracion = request.getParameter("duration");
        
        // Variable para almacenar mensajes de error en la validación
        String errorMessage = "";

        // Validaciones de los datos ingresados
        if (nombres == null || nombres.trim().isEmpty()) {
            errorMessage = "El nombre es obligatorio. ";
        }
        if (correo == null || !Pattern.matches("^[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+$", correo)) {
            errorMessage += "Correo electrónico inválido. ";
        }
        if (fechaReserva == null || fechaReserva.trim().isEmpty()) {
            errorMessage += "La fecha de reserva es obligatoria. ";
        }
        if (tipoEspacio == null || tipoEspacio.trim().isEmpty()) {
            errorMessage += "El tipo de espacio es obligatorio. ";
        }
        if (duracion == null || !duracion.matches("\\d+")) {
            errorMessage += "La duración debe ser un número. ";
        }
        
        // Si hay errores, se muestra un mensaje de alerta y se regresa a la página anterior
        if (!errorMessage.isEmpty()) {
            response.getWriter().write("<script>alert('" + errorMessage + "'); window.history.back();</script>");
            return;
        }
        
        // Crear un objeto Reserva con los datos ingresados
        Reserva reserva = new Reserva(nombres, correo, fechaReserva, tipoEspacio, Integer.parseInt(duracion));
        
        // Obtener la sesión actual y recuperar la lista de reservas almacenadas
        HttpSession session = request.getSession();
        List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");

        // Si no existe una lista en la sesión, se inicializa
        if (reservas == null) {
            reservas = new ArrayList<>();
        }

        // Agregar la nueva reserva a la lista y actualizar la sesión
        reservas.add(reserva);
        session.setAttribute("reservas", reservas);
        
        // Mostrar mensaje de éxito y redirigir al usuario a la página de reservas
        response.getWriter().write(
            "<script>"
                + "alert('Reserva guardada exitosamente.\\n"
                + "-------------------------------------\\n"
                + "Nombres Completos: " + nombres + "\\n"
                + "Correo: " + correo + "\\n"
                + "Fecha de reserva: " + fechaReserva + "\\n"
                + "Tipo de espacio: " + tipoEspacio + "\\n"
                + "Duración: " + duracion + " horas \\n"
                + "-------------------------------------\\n"                       
                + "'); window.location='reservas.jsp';"
                + "</script>"
        );
    }

    /**
     * Método que devuelve una breve descripción del servlet.
     */
    @Override
    public String getServletInfo() {
        return "Servlet para gestionar reservas en la sesión.";
    }
}
