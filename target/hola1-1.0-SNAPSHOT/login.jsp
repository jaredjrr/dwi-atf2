<%-- 
    Document   : login
    Created on : 10 oct 2024, 23:36:24
    Author     : KAREN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <jsp:include page="/componentes/head.jsp" /> 

    <body>

        <% if (request.getParameter("registroExitoso") != null) { %>
            <p class="success">Registro exitoso. Ahora puedes iniciar sesión.</p>
        <% } %>
        
        <section class="login-section">

            <jsp:include page="/componentes/header.jsp" />
            
            <div class="contenedor">
                
                <div class="fondo">
                    <img src="${pageContext.request.contextPath}/imagenes/fondologin.jpeg" alt="">
                </div>

                <div class="formulario login">

                    <form action="UsuarioServlet" method="post">

                        <div class="input-contenedor">

                            <h2>Iniciar Sesión</h2> 

                            <img src="${pageContext.request.contextPath}/imagenes/login.svg" alt="Logo de la Empresa">

                            <br>
                            <br>
                            <br>
                            <i class="fa-solid fa-envelope"></i>

                            <input type="email" id="email" name="email" placeholder="Correo Electrónico" required>
                            <label for="email">Correo Electrónico</label>
                        </div>

                        <div class="input-contenedor">
                            <i class="fa-solid fa-user-lock"></i>
                            <label for="password">Contraseña</label>
                            <br>
                            <br> 
                            <input type="password" id="password" name="password" placeholder="Contraseña" required>

                        </div>
                        <br>

                        <div class="olvidar">
                            <label>
                                <input type="checkbox" name="remember"> Recordar
                                <a href="#">¿Olvidaste la contraseña?</a>
                            </label>
                        </div>
                        <br>

                        <button type="submit">Acceder</button>

                        <br>
                        <div class="registrar">
                            <br>
                            <p>No tengo una cuenta <a href="registro.jsp">Crear una cuenta</a></p>
                        </div>

                    </form>

                </div>
            </div>
        </section>

        <jsp:include page="/componentes/footer.jsp" />
    </body>

</html>