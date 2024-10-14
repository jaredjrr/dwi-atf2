/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Persistencia;

import Logica.Cita;
import config.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CitaDAO {
    public boolean agendarCita(Cita cita) {
        String sql = "INSERT INTO citas (id_cliente, id_mascota, fecha_hora, descripcion, estado, servicio) VALUES (?, ?, ?, ?, ?, ?)";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setInt(1, cita.getIdCliente());
            ps.setInt(2, cita.getIdMascota());
            ps.setTimestamp(3, java.sql.Timestamp.valueOf(cita.getFechaHora()));
            ps.setString(4, cita.getDescripcion());
            ps.setString(5, cita.getEstado());
            ps.setString(6, cita.getServicio());
            
            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            System.out.println("Error al agendar la cita: " + e.getMessage());
            return false;
        }
    }
}