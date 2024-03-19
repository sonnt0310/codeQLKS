/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package java_hotel_system;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Admin
 */
public class MY_CONNECTION {
    public Connection createConnection()
    {
        Connection connection = null;
        MysqlDataSource mds = new MysqlDataSource();
        mds.setServerName("localhost");
        mds.setPort(3306);
        mds.setUser("root");
        mds.setPassword("");
        mds.setDatabaseName("java_hotel_db");
        try {
            connection = mds.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger(MY_CONNECTION.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
    public static void main(String[] args) {
        
    }
}
