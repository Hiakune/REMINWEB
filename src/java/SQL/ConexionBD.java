
package SQL;

import java.sql.*;

public class ConexionBD {
    private static String url = "jdbc:mysql://localhost/reminweb?useServerPrepStmts=true"; //127.0.0.1 = localhost
    private static String usuario = "root";
    private static String contrasena = "Nuncaterindas_9";
    
    public static Connection conectar() {
        Connection conexion = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conexion = DriverManager.getConnection(url, usuario, contrasena);
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error: "+e);
        }
        return conexion;
    }
}
