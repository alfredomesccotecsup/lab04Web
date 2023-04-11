package Modelos;

import java.sql.*;
import java.util.*;

public class cBaseDatos {
    String driver  = "com.mysql.cj.jdbc.Driver";
    String url="jdbc:mysql://localhost:3306/test?useSSL=false&serverTimezone=UTC";
    String usuario = "root";
    String clave   = "123456";

    private Connection Conectar() {
        try {
            Class.forName(driver);
            Connection xcon = DriverManager.getConnection(url,usuario,clave);
            return xcon;
        }
        catch(Exception e) {
            System.out.println(e.toString());
        }
        return null;
    }
    public boolean validarUsuario(String xnom, String xcla) {
        try {
            Connection xcon = this.Conectar();
            String sql = "select count(*) from t_usuarios where nombre=? AND clave=?";
            PreparedStatement ps=xcon.prepareStatement(sql);
            ps.setString(1, xnom );
            ps.setString(2, xcla );
            ResultSet rs = ps.executeQuery();
 	     rs.next();
            String cantidad = rs.getString(1);
            int xcant = Integer.parseInt( cantidad );
            if ( xcant > 0 )
                return true;
            xcon.close();
            return false;
        } catch (Exception ex ) {
            System.out.println(ex.toString());
        }
        return false;
    }
}

