
package bd;
import java.sql.*; //importamos sql para la base

public class Conexion {
    private Connection c;//establece la conexion
    private Statement s;//ejecuta consultas
    private ResultSet rs;//recorre los resultados (tabla)
    
    public Conexion(String server, String bd, String user, String passw) throws ClassNotFoundException, SQLException{
        String protocolo = "jdbc:mysql://";
        String lineaUser = "user=" + user;
        String lineaPass = "password=" + passw;
        String url = protocolo
                + server + "/"
                + bd + "?"
                + lineaUser + "&"
                + lineaPass;
        
        System.out.println(url);
        /*cargamos driver*/
        Class.forName("com.mysql.jdbc.Driver");
        /*url de conexion con mysql*/
        c = DriverManager.getConnection(url);
    }

    /*este metodo sirve para insert,update,delete datos en bd*/
    public void ejecutar(String query) throws SQLException{
        s = c.createStatement();
        s.execute(query);
    }
    /*ejecutar select*/
    public ResultSet ejecutarSelect(String query) throws SQLException{
        s = c.createStatement();
        rs = s.executeQuery(query);
        return rs;
    }
    /*desconectar para despues de ejecutar select*/
    public void desconectar() throws SQLException{
        s.close();
    }
}
