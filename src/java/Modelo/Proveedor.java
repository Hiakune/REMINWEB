
package Modelo;

public class Proveedor {
    int id_proveedor;
    String id_usuario;
    String nombre_proveedor;

    public Proveedor() {
    }
    public Proveedor(String id_usuario, String nombre_proveedor) {
        this.id_usuario = id_usuario;
        this.nombre_proveedor = nombre_proveedor;
    }
    public int getId_proveedor() {
        return id_proveedor;
    }
    public void setId_proveedor(int id_proveedor) {
        this.id_proveedor = id_proveedor;
    }
    public String getId_usuario() {
        return id_usuario;
    }
    public void setId_usuario(String id_usuario) {
        this.id_usuario = id_usuario;
    }
    public String getNombre_proveedor() {
        return nombre_proveedor;
    }
    public void setNombre_proveedor(String nombre_proveedor) {
        this.nombre_proveedor = nombre_proveedor;
    }
}
