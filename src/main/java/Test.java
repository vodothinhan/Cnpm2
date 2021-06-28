import beans.Book;
import conn.ConnectionUtils;
import dao.BookDAO;
import dao.DAO;
import dao.DAOFactory;

import java.sql.Connection;
import java.sql.SQLException;

public class Test {

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        Connection conn = ConnectionUtils.getConnection();
    }

}