package conn;

import javax.servlet.ServletRequest;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionUtils {
    private static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";

    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        return MySQLConnUtils.getMySQLConnection();
    }

    public static void closeQuietly(Connection conn) {
        try {
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void rollbackQuietly(Connection conn) {
        try {
            conn.rollback();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void storeConnection(ServletRequest request, Connection conn) {
        request.setAttribute(ATT_NAME_CONNECTION, conn);
    }

    public static Connection getStoredConnection(ServletRequest request) {
        return (Connection) request.getAttribute(ATT_NAME_CONNECTION);
    }
}