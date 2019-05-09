package bd;

import java.sql.*;
import model.*;

public class Data {

    private Conexion c;
    private String query;
    private String query1;
    private ResultSet rs;

    public Data() throws SQLException, ClassNotFoundException {
        c = new Conexion("localhost", "derbildx", "root", "n0m3l0");
    }
    /*metodo saber si existe usuario*/
    
    public Usuario getUsuario(String NomUsuario, String Pass) throws SQLException {
        query = "select * from Usuario where NomUsuario = '" + NomUsuario + "' and Pass = '" + Pass + "';";
        rs = c.ejecutarSelect(query);
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario();
            
            u.setRol(rs.getInt(1));
            u.setIdUser(rs.getInt(2));
            u.setNomUsuario(rs.getString(3));
            u.setPass(rs.getString(4));
        }
        c.desconectar();
        return u;
    }

     public Fotografos getFotografos(String NomUsu, String Contra) throws SQLException {
        query = "select * from Fotografos where NomUsu = '" + NomUsu + "' and Contra = '" + Contra + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f=new Fotografos();
            
            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
            f.setNomUsu(rs.getString(19));
            f.setContra(rs.getString(20));
        }
        c.desconectar();
        return f;
    }
  /*  
    
    public Rol getRol(int IdRol) throws SQLException {
        query = "select * from Rol where IdRol = '" + IdRol + "';";
        rs = c.ejecutarSelect(query);
        Rol r = null;
        if (rs.next()) {
            r = new Rol();

            r.setIdRol(IdRol);
            r.setDescRol(rs.getString(2));
        }
        c.desconectar();
        return r;
    }
*/
    public Usuario getUsu(int IdUs) throws SQLException {
        query = "select * from Usuario where IdUser = '" + IdUs + "';";
        rs = c.ejecutarSelect(query);
        Usuario u = null;
        if (rs.next()) {
            u = new Usuario();

            u.setRol(rs.getInt(1));
            u.setIdUser(rs.getInt(2));
            u.setNomUsuario(rs.getString(3));
            u.setPass(rs.getString(4));
        }
        c.desconectar();
        return u;
    }

    public ReporteEventos getReporteEventos(int IdRE) throws SQLException {
        query = "select * from ReporteEventos where IdRE = '" + IdRE + "';";
        rs = c.ejecutarSelect(query);
        ReporteEventos RE = null;
        if (rs.next()) {
            RE = new ReporteEventos();
            RE.setIdRE(IdRE);
            RE.setIUser(rs.getInt(2));
            RE.setFechaRE(rs.getString(3));
            RE.setDescRE(rs.getString(4));
            RE.setTipoE(rs.getString(5));
            RE.setRespE(rs.getString(6));
            RE.setStatusRE(rs.getString(7));
        }
        c.desconectar();
        return RE;
    }

    public void setUsu(int Rol, String NomUsuario, String Pass) throws SQLException {
        query = "Insert into Usuario values ('" + Rol + "',null,'" + NomUsuario + "','" + Pass + "');";
        c.ejecutar(query);

        c.desconectar();
    }

    public void setFotografos(String Foto, String ApP, String ApM, String Nom, int Edad, String Sexo, String Exp,
            String TipoF, String Des, String Deleg, String Col, int CP, String Calle, String NumEI,
            String Correo, int Tel, String Costo, String NomUsu, String Contra) throws SQLException {
        query = "Insert into Fotografos values ('" + Foto + "',null,'" + ApP + "','" + ApM + "','" + Nom + "',"
                + "'" + Edad + "','" + Sexo + "','" + Exp + "','" + TipoF + "','" + Des + "',"
                + "'" + Deleg + "','" + Col + "','" + CP + "','" + Calle + "','" + NumEI + "',"
                + "'" + Correo + "','" + Tel + "','"+Costo+"','"+NomUsu+"','"+Contra+"');";
        c.ejecutar(query);

        c.desconectar();
        
    }
    
     
    
    public Fotografos getFotografoDeleg(String Deleg) throws SQLException{
        query = "select * from Fotografos where Deleg = '" + Deleg + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
        }
        c.desconectar();
        return f;
    } 
    
    public Fotografos getFotografoSexo(String Sexo) throws SQLException{
        query = "select * from Fotografos where Sexo = '" + Sexo + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
        }
        c.desconectar();
        return f;
    }    
    
        public Fotografos getFotografoTipoF(String TipoF) throws SQLException{
        query = "select * from Fotografos where TipoF = '" + TipoF + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
        }
        c.desconectar();
        return f;
    }
    
    public Fotografos getFotografoCosto(String Costo) throws SQLException{
        query = "select * from Fotografos where Costo = '" + Costo + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
        }
        c.desconectar();
        return f;
    }
    
        public Fotografos getFotografoExp(String Exp) throws SQLException{
        query = "select * from Fotografos where Exp = '" + Exp + "';";
        rs = c.ejecutarSelect(query);
        Fotografos f = null;
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
        }
        c.desconectar();
        return f;
    }
    
    public Fotografos setFotografos2(int IdUserF2, String ApP2, String ApM2, String Nom2, int Edad2, String Sexo2, String Exp2,
            String TipoF2, String Des2, String Deleg2, String Col2, int CP2, String Calle2, String NumEI2,
            String Correo2, int Tel2, String Costo) throws SQLException {
        query = "select * from Fotografos where IdUser2 = '" + IdUserF2 + "' ;";
        query1 = "Insert into Fotografos values ('"+IdUserF2+"',null,'" + ApP2 + "','" + ApM2 + "','" + Nom2 + "',"
                + "'" + Edad2 + "','" + Sexo2 + "','" + Exp2 + "','" + TipoF2 + "','" + Des2 + "',"
                + "'" + Deleg2 + "','" + Col2 + "','" + CP2 + "','" + Calle2 + "','" + NumEI2 + "',"
                + "'" + Correo2 + "','" + Tel2 + "','"+Costo+"');";
        Fotografos f = null;
        c.ejecutar(query1);
        rs= c.ejecutarSelect(query);
        if (rs.next()) {
            f = new Fotografos();

            f.setFoto(rs.getString(1));
            f.setIdFotog(rs.getInt(2));
            f.setApP(rs.getString(3));
            f.setApM(rs.getString(4));
            f.setNom(rs.getString(5));
            f.setEdad(rs.getInt(6));
            f.setSexo(rs.getString(7));
            f.setExp(rs.getString(8));
            f.setTipoF(rs.getString(9));
            f.setDes(rs.getString(10));
            f.setDeleg(rs.getString(11));
            f.setCol(rs.getString(12));
            f.setCP(rs.getInt(13));
            f.setCalle(rs.getString(14));
            f.setNumEI(rs.getString(15));
            f.setCorreo(rs.getString(16));
            f.setTel(rs.getInt(17));
            f.setCosto(rs.getString(18));
        }
        c.desconectar();
        return f;
    }
    
    public ReporteEventos setReporteEventos(int IdUs, String Fe, String Des) throws SQLException {
        query = "select * from ReporteEventos where IUser = '" + IdUs + "' and FechaRE = '" + Fe + "' and DescRE = '" + Des + "' and StatusRE = 'Sin Asignar';";
        query1 = "Insert into ReporteEventos values (null,'" + IdUs + "','" + Fe + "','" + Des + "','Reporte de Eventos', 'Sin Respuesta','Sin Asignar');";
        c.ejecutar(query1);
        rs = c.ejecutarSelect(query);
        ReporteEventos RE = null;
        if (rs.next()) {
            RE = new ReporteEventos();

            RE.setIdRE(rs.getInt(1));
            RE.setIUser(rs.getInt(2));
            RE.setFechaRE(rs.getString(3));
            RE.setDescRE(rs.getString(4));
            RE.setTipoE(rs.getString(5));
            RE.setRespE(rs.getString(6));
            RE.setStatusRE(rs.getString(7));
        }
        c.desconectar();
        return RE;
    }

    public void ModEvento(String Fe, String Des, String Sol, int idEve) throws SQLException {
        query1 = "Update ReporteEventos set FechaRE='" + Fe + "', DescRE='" + Des + "', RespE='" + Sol + "' where IdRE='" + idEve + "' and StatusRE = 'Solucionado';";
        c.ejecutar(query1);
        c.desconectar();
    }

    public void Asignar(int IdUs, int IdEve) throws SQLException {
        query1 = "Insert into Usu_has_RepEve values (null,'" + IdUs + "','" + IdEve + "');";
        c.ejecutar(query1);
        c.desconectar();
    }
    
    public void AsignarF(int IdUserF2, int IdFotog2) throws SQLException {
        query1 = "Insert into Usu_has_Fotog values (null,'" + IdUserF2 + "','" + IdFotog2 + "');";
        c.ejecutar(query1);
        c.desconectar();
    }

    public void CambiarEstado(int IdEve, String Sta) throws SQLException {
        query1 = "Update ReporteEventos set StatusRe='" + Sta + "' where IdRE='" + IdEve + "';";
        c.ejecutar(query1);

        c.desconectar();
    }
}
