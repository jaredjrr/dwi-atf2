<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="/componentes/head.jsp" /> 
    <body>
        <jsp:include page="/componentes/header.jsp" /> 

        <section class="contacto-section">
            <h2>Encuéntranos muy cerca de ti</h2>
            <p>Agenda tu cita ahora en cualquiera de nuestras sucursales y déjanos cuidar de tus mascotas con el amor y la atención que se merecen.</p>

            <!-- Sucursales -->
            <div class="sucursales">
                <div class="sucursal">
                    <h3>San Isidro</h3>
                    <p>Av. Javier Prado Oeste 145, San Isidro, Lima</p>
                    <p><strong>Whatsapp:</strong> +51 923 456 789</p>
                    
                </div>
                <div class="sucursal">
                    <h3>Miraflores</h3>
                    <p>Av. Pardo y Aliaga 222, Miraflores, Lima</p>
                    <p><strong>Whatsapp:</strong> +51 912 345 678</p>
                    
                </div>
                <div class="sucursal destacada">
                    <h3>Surco</h3>
                    <p>Av. Caminos del Inca 445, Santiago de Surco, Lima</p>
                    <p><strong>Whatsapp:</strong> +51 987 654 321</p>
                    
                </div>
                <div class="sucursal">
                    <h3>La Molina</h3>
                    <p>Av. La Molina 1002, La Molina, Lima</p>
                    <p><strong>Whatsapp:</strong> +51 965 432 187</p>
                   
                </div>
            </div>

            <!-- Google Maps -->
            <div class="mapa">
                <iframe src="https://www.google.com/maps/embed?pb=..." width="600" height="450" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </section>

        <!-- Sección de Libro de Reclamaciones -->
        <section class="libro-reclamaciones">
            <h3>Libro de Reclamaciones</h3>
            <p>
                Si tienes una queja o deseas registrar un reclamo, por favor completa el siguiente formulario. 
                Nuestro equipo revisará tu reclamo y se pondrá en contacto contigo lo antes posible.
            </p>
            <form action="ContactoServlet" method="post" class="formulario-reclamaciones"> 
                <div class="input-box">
                    <input type="text" class="input-field" name="nombre" placeholder="Escribe tu nombre" autocomplete="off" required>
                </div>

                <div class="input-box">
                    <input type="text" class="input-field" name="apellido" placeholder="Escribe tu Apellido" autocomplete="off" required>
                </div>

                <div class="input-box">
                    <input type="email" class="input-field" name="email" placeholder="Escribe tu Email" autocomplete="off" required>
                </div>

                <div class="input-box">
                    <input type="tel" class="input-field" name="telefono" placeholder="Escribe tu teléfono" autocomplete="off" required>
                </div>

                <div class="input-box">
                    <textarea name="reclamo" rows="3" placeholder="Escribe tu reclamo aquí..." required></textarea>
                </div>

                <button type="submit">Enviar Reclamo</button>
            </form>
        </section>

        <jsp:include page="/componentes/footer.jsp" /> 
    </body>
</html>
