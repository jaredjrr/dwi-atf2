<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Logica.Usuario" %>
<%
    HttpSession usersession = request.getSession(false);
    Usuario usuario = (Usuario) usersession.getAttribute("usuario");

    if (usuario == null) {
        response.sendRedirect("login.jsp");
        return; 
    }
%>
<!DOCTYPE html>
<html>
    <jsp:include page="/componentes/head.jsp" /> 
    <body>
        <section class="cita-section">
            <jsp:include page="/componentes/header.jsp" />

            <% if (request.getParameter("error") != null) { %>
            <p style="color: red;">Error al agendar la cita. Por favor, inténtalo de nuevo.</p>
            <% } %>
            <% if (request.getParameter("errorMascota") != null) { %>
            <p style="color: red;">Error al agregar la mascota. Asegúrate de que todos los datos sean correctos.</p>
            <% } %>
            <% if (request.getParameter("agendada") != null) { %>
            <p style="color: green;">Cita agendada exitosamente.</p>
            <% } %>

            <div class="fondo-cita">
                <img src="${pageContext.request.contextPath}/imagenes/fondocontacto.avif" alt="">
            </div>
            <div class="contenedor">
                <div class="formulario cita">
                    <h2>Agendar Cita</h2>
                    <form action="AgendarCitaServlet" method="post">
                        <label for="nombreCliente">Nombre del Cliente:</label>
                        <input type="text" id="nombreCliente" name="nombreCliente" value="<%= usuario.getNombre() %>" readonly> <!-- Nombre del cliente logueado -->

                        <label for="nombreMascota">Nombre de la Mascota:</label>
                        <input type="text" id="nombreMascota" name="nombreMascota" required>

                        <label for="especie">Especie:</label>
                        <input type="text" id="especie" name="especie" required>

                        <label for="raza">Raza:</label>
                        <input type="text" id="raza" name="raza" required>

                        <label for="edad">Edad:</label>
                        <input type="number" id="edad" name="edad" required>

                        <label for="servicio">Servicio:</label>
                        <select id="servicio" name="servicio" required>
                            <option value="baño">Baño</option>
                            <option value="corte">Corte de Pelo</option>
                            <option value="consulta">Consulta</option>
                        </select>

                        <label for="fechaHora">Fecha y Hora:</label>
                        <input type="datetime-local" id="fechaHora" name="fechaHora" required>

                        <label for="descripcion">Descripción:</label>
                        <textarea id="descripcion" name="descripcion" required></textarea>

                        <button type="submit">Agendar Cita</button>
                    </form>
                </div>
            </div>
        </section>

        <jsp:include page="/componentes/footer.jsp" />
    </body>
</html>