
package Intefaces;

import Modelo.Proveedor;
import java.util.List;

public interface CRUD {
    public List listar();
    public Proveedor list(int id_proveedor);
    public boolean add(Proveedor prov);
    public boolean edit(Proveedor prov);
    public boolean eliminar(int id_proveedor);
}
