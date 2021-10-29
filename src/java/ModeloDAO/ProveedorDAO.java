package ModeloDAO;

import Intefaces.CRUD;
import Modelo.Proveedor;
import SQL.ConexionBD;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProveedorDAO implements CRUD {
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor p = new Proveedor();
    @Override
    public List listar() {
        ArrayList<Proveedor> list = new ArrayList<>();
        String sql = "select * from PROVEEDOR";
        try {
            con = ConexionBD.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Proveedor prov = new Proveedor();
                prov.setId_proveedor(rs.getInt("ID_proveedor"));
                prov.setId_usuario(rs.getString("Usuario"));
                prov.setNombre_proveedor(rs.getString("Nombre_proveedor"));
                list.add(prov);
            }
        } catch (Exception e) {
        }
        return list;
    }
    @Override
    public Proveedor list(int id_proveedor) {
        String sql = "select * from PROVEEDOR where Id=" + id_proveedor;
        try {
            con = ConexionBD.conectar();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                p.setId_proveedor(rs.getInt("ID_proveedor"));
                p.setId_usuario(rs.getString("Usuario"));
                p.setNombre_proveedor(rs.getString("Nombre_proveedor"));

            }
        } catch (Exception e) {
        }
        return p;
    }
    @Override
    public boolean add(Proveedor prov) {
        String sql = "insert into PROVEEDOR (Usuario, Nombre_proveedor) values("
                + prov.getId_usuario() + ",'" + prov.getNombre_proveedor() + "')";
        try {
            con = ConexionBD.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean edit(Proveedor prov) {
        String sql = "update PROVEEDOR set Usuario=" + prov.getId_usuario() + 
                ",Nombre_proveedor='" + prov.getNombre_proveedor() + 
                "'where ID_proveedor=" + prov.getId_proveedor();
        try {
            con = ConexionBD.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    @Override
    public boolean eliminar(int id_proveedor) {
        String sql = "delete from PROVEEDOR where ID_proveedor=" + id_proveedor;
        try {
            con = ConexionBD.conectar();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
}



















