package dao;

public class DAOFactory {
    public static BookDAO getBookDAO() {
        return new BookDAO();
    }
}