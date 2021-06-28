package conn;

import utils.ConstUtils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnUtils {
    public static Connection getMySQLConnection() throws SQLException, ClassNotFoundException {
        String url = "jdbc:mysql://" + ConstUtils.HOST_NAME + ":3306/" + ConstUtils.DB_NAME;
        String username = ConstUtils.DB_USERNAME;
        String password = ConstUtils.DB_PASSWORD;

        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, username, password);
    }
}