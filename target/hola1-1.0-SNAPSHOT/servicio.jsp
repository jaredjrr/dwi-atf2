<%-- 
    Document   : servicio
    Created on : 11 oct. 2024, 01:45:31
    Author     : Andy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="/componentes/head.jsp" /> 

    <body>
        <jsp:include page="/componentes/header.jsp" /> 

        <main>
            <!-- Sección de Servicios -->
            <section class="services py-5">
                <div class="container">
                    <h1 class="display-4 text-center mb-5">Nuestros Servicios</h1>
                    <div class="row">
                        <!-- Servicio Baño -->
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm">
                                <img src="${pageContext.request.contextPath}/imagenes/baño.jpg" class="card-img-top img-fluid" alt="Baño para Mascotas">
                                <div class="card-body">
                                    <h5 class="card-title">Baño para Mascotas</h5>
                                    <p class="card-text">Ofrecemos servicios de baño especializados para mantener la higiene y bienestar de tu mascota.</p>
                                    <a href="${pageContext.request.contextPath}/cita.jsp" class="btn btn-outline-primary">Agendar Cita</a>
                                </div>
                            </div>
                        </div>

                        <!-- Servicio Corte de Pelo -->
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm">
                                <img src="${pageContext.request.contextPath}/imagenes/corte.jpg" class="card-img-top img-fluid" alt="Corte de Pelo">
                                <div class="card-body">
                                    <h5 class="card-title">Corte de Pelo</h5>
                                    <p class="card-text">Cortes de pelo personalizados para cada raza y tamaño de mascota.</p>
                                    <a href="${pageContext.request.contextPath}/cita.jsp" class="btn btn-outline-primary">Agendar Cita</a>
                                </div>
                            </div>
                        </div>

                        <!-- Servicio Consulta Veterinaria -->
                        <div class="col-md-4 mb-4">
                            <div class="card shadow-sm">
                                <img src="${pageContext.request.contextPath}/imagenes/consulta.jpg" class="card-img-top img-fluid" alt="Consulta Veterinaria">
                                <div class="card-body">
                                    <h5 class="card-title">Consulta Veterinaria</h5>
                                    <p class="card-text">Consulta completa para el diagnóstico y tratamiento de cualquier problema de salud de tu mascota.</p>
                                    <a href="${pageContext.request.contextPath}/cita.jsp" class="btn btn-outline-primary">Agendar Cita</a>
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
