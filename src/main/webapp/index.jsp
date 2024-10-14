
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="/componentes/head.jsp" /> 

    <body>

        <section class="index-section">
            <jsp:include page="/componentes/header.jsp" /> 
            <div class="fondo-index">
                <img src="${pageContext.request.contextPath}/imagenes/fondocontacto.avif" alt="">
            </div>
            <!-- Sección de Bienvenida -->
            <div class="container">
                <div class="formulario">
                    <h1 >Bienvenido a PetLife</h1>
                    <p>"Tu veterinaria de confianza para el cuidado integral de tus mascotas".</p>
                    <a href="${pageContext.request.contextPath}/productos.jsp" class="button">Explorar Productos</a>
                </div>
            </div>
        </section>
        <br>
        <br>
        <!-- Sección de Servicios -->
        <section class="index-section">
            <!-- Servicio Consulta Veterinaria -->
            <div class="container">
                <div class="formulario ">
                    <h1>Consulta Veterinaria</h1>
                    <img src="${pageContext.request.contextPath}/imagenes/consulta.jpg"  alt="">

                    <p >Ofrecemos consultas completas para el diagnóstico y tratamiento de tus mascotas.</p>
                    <a href="${pageContext.request.contextPath}/servicio.jsp" >Leer Más</a>
                </div>
            </div>

            <!-- Servicio Tienda de Mascotas -->
            <div class="index-section">
                <div class="container">
                    <div class="formulario">
                        <h1>Tienda de Mascotas</h1>
                        <img src="${pageContext.request.contextPath}/imagenes/tienda.jpg"  alt="">
                        <p >Encuentra una amplia gama de productos para el bienestar de tus mascotas.</p>
                        <a href="${pageContext.request.contextPath}/productos.jsp">Leer Más</a>                     
                    </div>
                </div>

                <!-- Servicio Agendar Cita -->
                <div class="index-section">
                    <div class="container">
                        <div class="formulario">
                            <h1>Agendar Cita</h1>
                            <img src="${pageContext.request.contextPath}/imagenes/cita.jpg" class="card-img-top img-fluid" alt="Agendar Cita">
                            <p >Agenda una cita con nuestros veterinarios de manera rápida y sencilla.</p>
                            <a href="${pageContext.request.contextPath}/cita.jsp">Leer Más</a>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>

<jsp:include page="/componentes/footer.jsp" /> 
</body>
</html>
