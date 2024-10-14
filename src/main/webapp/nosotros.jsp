<%-- 
    Document   : nosotros
    Created on : 10 oct 2024, 23:37:20
    Author     : KAREN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">

    <jsp:include page="/componentes/head.jsp" /> 

    <body>
        <!-- Sección de Nosotros -->
        <section class="nosotros-section">
            <jsp:include page="/componentes/header.jsp" /> 
            <div class="fondo-nosotros">
                <img src="${pageContext.request.contextPath}/imagenes/fondocontacto.avif" alt="">
            </div>

            <div class="container">
                <div class="formulario ">
                    <h1>"Nosotros  somos Pet Life , una empresa líder"</h1>
                    <p>Cuidamos el bienestar de cada mascota como si fuera nuestra propia vida.</p>
                    <img src="${pageContext.request.contextPath}/imagenes/fondocita.webp" alt="Imagen Pet Life">
                </div>
            </div>

            <!-- Información de Nosotros -->
            <div class="container">
                <div class="formulario">

                    <h1>Nosotros Somos</h1>
                    <p>Empezamos como una pequeña veterinaria hace 15 años, donde solo se realizaban baños y consultas. Hoy en día hemos expandido nuestros servicios para ofrecer cirugías, desparasitación y más. Cuidamos el bienestar de cada mascota y nos mejoramos continuamente.</p>
                    <p>Actualmente somos una clínica veterinaria multidisciplinaria con un equipo de 3 médicos veterinarios, ofreciendo servicios médicos de alta calidad utilizando equipos de última generación.</p>
                    <img src="${pageContext.request.contextPath}/imagenes/huellas.jpg" alt="Imagen Pet Life">
                </div>
            </div>

            <!-- Sección Nuestro Modelo -->
            <div class="container">
                <div class="formulario">
                    <a  href="${pageContext.request.contextPath}/index.jsp"></a>
                    <h1>Nuestro Modelo</h1>
                    <p>En Pet Life valoramos la vida de cada mascota, como si fuera nuestra propia vida.</p>
                    <img src="${pageContext.request.contextPath}/imagenes/petlifeN.jpg" alt="PetLife">
                </div>
            </div>

            <!-- Sección Misión y Visión -->
            <div class="container ">
                <div class="formulario">
                    <h1>Misión y Visión</h1>
                    <h2>Nuestra Visión</h2>
                    <p>"Proporcionar un cuidado excepcional para los animales mediante la integración de tecnología avanzada en nuestros procesos de gestión. Ofrecemos soluciones efectivas para la administración de citas, compras, inventarios y reportes, asegurando un servicio eficiente, seguro y de alta calidad para nuestros clientes y sus mascotas."</p>
                    <h2>Nuestra Misión</h2>
                    <p>"Convertirnos en la veterinaria líder en innovación tecnológica en el cuidado de mascotas, estableciendo un estándar de excelencia en la gestión y servicio. Aspiramos a mejorar continuamente nuestros sistemas y procesos para ofrecer una experiencia inigualable a nuestros clientes y contribuir al bienestar de los animales con la máxima eficiencia y profesionalismo."</p>
                </div>
            </div>

        </section>
        <!-- Sección Valores -->
        <section class="nosotros-section">

            <div class="container">

                <div class="formulario">
                    <h1>Valores</h1>
                    <img src="${pageContext.request.contextPath}/imagenes/bonitos.jpg" alt="Lideramos con Pasión">

                    <h2>Lideramos con Pasión</h2>
                    <p>Somos líderes apasionados en todo lo que hacemos. Somos emprendedores con espíritu ganador, lo que nos moviliza a innovar y mejorar continuamente.</p>
                </div>
            </div>
            <div class="container">
                <div class="formulario">


                    <h2>Estamos Conectados</h2>
                    <p>Nos sentimos conectados con los objetivos de nuestra organización y los cumplimos con excelencia, generando bienestar para tus compañeros fieles.</p>
                    <img src="${pageContext.request.contextPath}/imagenes/huellas.jpg" alt="Estamos Conectados">
                </div>
            </div>
            <div class="container">
                <div class="formulario">


                    <h2>Somos Ágiles y Flexibles</h2>
                    <p>Somos un equipo ágil y flexible. Sabemos tomar riesgos, aprendemos de nuestros errores y celebramos nuestros éxitos con humildad.</p>
                    <img src="${pageContext.request.contextPath}/imagenes/vete.jpg" alt="">
                </div>
            </div>
        </section>

        <!-- Pie de Página -->
        <jsp:include page="/componentes/footer.jsp" />

    </body>

</html>
