package Servlets;

import Logica.Usuario;
import Persistencia.UsuarioDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.mindrot.jbcrypt.BCrypt;

@WebServlet("/UsuarioServlet")
public class UsuarioServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String correo = request.getParameter("email");
        String contrasena = request.getParameter("password");

        if (correo == null || contrasena == null) {
            request.setAttribute("error", "Por favor ingresa el correo y la contraseña.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
            return;
        }

        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usuario = usuarioDAO.buscarPorCorreo(correo);

        if (usuario != null && BCrypt.checkpw(contrasena, usuario.getContrasena())) {
            HttpSession session = request.getSession();
            session.setAttribute("usuario", usuario);

            if ("admin".equals(usuario.getRol())) {
                response.sendRedirect("admin.jsp");
            } else {
                response.sendRedirect("user.jsp");
            }
        } else {
            if (usuario == null) {
                request.setAttribute("error", "El usuario no existe.");
            } else {
                request.setAttribute("error", "Contraseña incorrecta.");
            }
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        response.sendRedirect("login.jsp");
    }
}