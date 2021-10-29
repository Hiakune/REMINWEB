
package SQL;

import java.sql.*;

public class MetodosSQL {
    private Connection conexion;
    private PreparedStatement ps;
    private ResultSet rs;
    
    public boolean registrarUsuario(String usuario, String contrasena, String nombres, String apellido_pat, String apellido_mat, String Genero, String Email, String Celular, String Fecha_nac) {
        boolean registro = false;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "INSERT INTO usuario (ID_usuario,Nombre_usuario,Contrasena,Nombres,Apellido_paterno,Apellido_materno,Genero,Email,Celular,Fecha_nac,Rol) VALUES (null,?,?,?,?,?,?,?,?,?,2)";
            ps = conexion.prepareStatement(consulta);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            ps.setString(3, nombres);
            ps.setString(4, apellido_pat);
            ps.setString(5, apellido_mat);
            ps.setString(6, Genero);
            ps.setString(7, Email);
            ps.setString(8, Celular);
            ps.setString(9, Fecha_nac);
            
            
            int resultinserc = ps.executeUpdate();
            
            if(resultinserc > 0) {
                registro = true; // El usuario se ha registrado
                System.out.println("Se registró el usuario");
            } else {
                registro = false;// El usuario no se ha registrado
                System.out.println("No se registró el usuario");
            }
            
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: "+e);
            }
        }
        System.out.println("Valor de registro:"+registro);
        
        return registro;
    }
    
    public boolean buscarUsuarioInicioSesion(String usuario, String contrasena){
        boolean iniciarSesion = false;
        
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT Nombre_usuario,Contrasena FROM usuario WHERE Nombre_usuario = ? AND Contrasena = ?";
            ps = conexion.prepareStatement(consulta);
            ps.setString(1, usuario);
            ps.setString(2, contrasena);
            rs = ps.executeQuery();
            if(rs.next()) {
                iniciarSesion = true; // El usuario puede iniciar sesión por que está registrado eb la BD
            }else {
                iniciarSesion = false; // El usuario no puede iniciar sesión por que no está registrado eb la BD
            }
            conexion.close();
        }catch (SQLException e) {
            System.out.println("Error: "+e);
        }finally {
            try {
                conexion.close();
            }catch (SQLException e) {
                System.out.println("Error: "+e);
            }
        }
        
        System.out.println("El valor de inicarSesion en el método es: "+iniciarSesion);
        return iniciarSesion;
    }
    
    public String buscarNombre(String usuario) {
        String nombre = null;
        try {
            conexion = ConexionBD.conectar();
            String consulta = "SELECT * FROM usuarios WHERE usuario_generado_automaticamente = ?";
            ps = conexion.prepareStatement(consulta);
            ps.setString(1, usuario);
            rs = ps.executeQuery();
            
            if (rs.next()) {//El usuario fue encontrado y obtenemos el nombre
                nombre = rs.getString("nombre");
            }else {
                nombre = null; //El usuario no fue encontrado y NO obtenemos el nombre
            }
            conexion.close();
        } catch (SQLException e) {
            System.out.println("Error: "+e);
        } finally {
            try {
                conexion.close();
            } catch (SQLException e) {
                System.out.println("Error: "+e);
            }
        }
        System.out.println("El valor del nombre en los Métodos SQL es: "+nombre);
        return nombre;
    }
    
}
