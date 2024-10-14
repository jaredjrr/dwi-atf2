<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/componentes/head.jsp" /> 

<body>
    <section class="registro-section">
        <jsp:include page="/componentes/header.jsp" />
        <div class="contenedor">
            <div class="fondo-registro">
                <img src="${pageContext.request.contextPath}/imagenes/fondocontacto.avif" alt="">
            </div>
            <div class="formulario">
                <form action="${pageContext.request.contextPath}/RegistroServlet" method="post">
                    <div class="input-contenedor">
                        <h2>Registro de Usuario</h2>
                    </div>
                    <div class="input-contenedor">
                        <i class="fa-solid fa-user"></i>
                        <input type="text" id="nombre" name="nombre" placeholder="Nombre" required>
                    </div>
                    <div class="input-contenedor">
                        <i class="fa-solid fa-user"></i>
                        <input type="text" id="apellido" name="apellido" placeholder="Apellido" required>
                    </div>
                    <div class="input-contenedor">
                        <i class="fa-solid fa-envelope"></i>
                        <input type="email" id="correo" name="correo" placeholder="Correo Electrónico" required>
                    </div>
                    <div class="input-contenedor">
                        <i class="fa-solid fa-user-lock"></i>
                        <input type="password" id="contrasena" name="contrasena" placeholder="Contraseña" required>
                    </div>
                    <br>
                    <button type="submit" class="continue-button">Registrar</button>
                    <br>
                    <br>
                    <button type="button" class="continue-button">
                        <a href="${pageContext.request.contextPath}/index.jsp">Regresar</a>
                    </button>
                </form>
            </div>
        </div>
    </section>
    <jsp:include page="/componentes/footer.jsp" />
</body>
</html>