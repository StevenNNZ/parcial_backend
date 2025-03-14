package servlets;

import entity.Reserva;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet para eliminar una reserva específica de la lista almacenada en la sesión.
 */
@WebServlet(name = "EliminarReservaServlet", urlPatterns = {"/EliminarReservaServlet"})
public class EliminarReservaServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Obtener la sesión actual
        HttpSession session = request.getSession();
        
        // Obtener la lista de reservas almacenadas en la sesión
        List<Reserva> reservas = (List<Reserva>) session.getAttribute("reservas");
        
        // Obtener el índice de la reserva a eliminar
        String indexStr = request.getParameter("reservaIndex");

        // Validar que el índice no sea nulo y que la lista de reservas exista
        if (indexStr != null && reservas != null) {
            try {
                int index = Integer.parseInt(indexStr); // Convertir el índice a un número entero
                
                // Verificar que el índice sea válido dentro del rango de la lista
                if (index >= 0 && index < reservas.size()) {
                    reservas.remove(index); // Eliminar la reserva
                    session.setAttribute("reservas", reservas); // Actualizar la lista en la sesión
                }
            } catch (NumberFormatException e) {
                e.printStackTrace(); // Manejo de error en caso de un índice no válido
            }
        }

        // Redirigir con mensaje de éxito
        response.getWriter().write(
            "<script>"
                + "alert('Reserva eliminada exitosamente'); "
                + "window.location='listado-reservas.jsp';"
            + "</script>"
        );
    }

    @Override
    public String getServletInfo() {
        return "Servlet para eliminar reservas almacenadas en la sesión";
    }
}
