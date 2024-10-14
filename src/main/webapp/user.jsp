<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Logica.Usuario"%>
<%@page import="jakarta.servlet.http.HttpSession"%>
<%
   
    HttpSession userSession = request.getSession(false); 
    Usuario usuario = (userSession != null) ? (Usuario) userSession.getAttribute("usuario") : null;

   
    if (usuario == null) {
        response.sendRedirect("login.jsp");
        return; 
    }
%>

<!DOCTYPE html>
<html>
    <jsp:include page="/componentes/head.jsp" /> 

    <body>
        <jsp:include page="/componentes/header.jsp" /> 

        <!-- Sección de usuario y acciones rápidas -->
        <section class="user-section">
            <h2>Hola, <%= usuario.getNombre() %></h2> <!-- Mostrar el nombre del usuario -->
            <div class="actions">
                <button class="action-button">
                    <a href="${pageContext.request.contextPath}/cita.jsp">Agendar cita</a>
                </button>
                <button class="action-button">
                    <a href="${pageContext.request.contextPath}/contacto.jsp">Llamar clínica</a>
                </button>
            </div>
        </section>

        <!-- Sección de Mascotas -->
        <section class="pets-section">
            <div class="section-header">
                <h3>Tus mascotas</h3>
                <a href="#">Ver todas</a>
            </div>
            <div class="pets-container">
                <div class="new-pet-card">
                    <p>+ Nueva mascota</p>
                </div>
            </div>
        </section>

        <!-- Sección de Citas -->
        <section class="appointments-section">
            <div class="section-header">
                <h3>Tus citas</h3>
                <a href="#">Ver todas</a>
            </div>
            <div class="appointment-card">
                <p><strong>DOMINGO 13 DE OCT</strong> 12:45</p>
                <p>Consulta médica para Peluchin</p>
            </div>
        </section>

        <jsp:include page="/componentes/footer.jsp" /> 
    </body>
</html>