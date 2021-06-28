package dao;

import beans.Book;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BookDAO implements DAO<Book> {
    public BookDAO() {
    }

    @Override
    public void insert(Connection conn, Book book) throws SQLException {
        String sql = "insert into book values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, book.getId());
        pstm.setString(2, book.getTitle());
        pstm.setString(3, book.getAuthor());
        pstm.setInt(4, book.getPages());
        pstm.setString(5, book.getPublisher());
        pstm.setString(6, book.getCategory());
        pstm.setInt(7, book.getYearPublishing());
        pstm.setInt(8, book.getNumCopies());
        pstm.setString(9, book.getStatus());
        pstm.setString(10, book.getDescription());
        pstm.setString(11, book.getImageName());
        pstm.executeUpdate();
    }

    @Override
    public void update(Connection conn, Book book) throws SQLException {
        String sql = "update book set title = ?, author = ?, pages = ?, publisher = ?, category = ?, " +
                "year_publishing = ?, num_copies = ?, status = ?, description = ?, image_name = ? where book_id = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, book.getTitle());
        pstm.setString(2, book.getAuthor());
        pstm.setInt(3, book.getPages());
        pstm.setString(4, book.getPublisher());
        pstm.setString(5, book.getCategory());
        pstm.setInt(6, book.getYearPublishing());
        pstm.setInt(7, book.getNumCopies());
        pstm.setString(8, book.getStatus());
        pstm.setString(9, book.getDescription());
        pstm.setString(10, book.getImageName());
        pstm.setString(11, book.getId());
        pstm.executeUpdate();
    }

    @Override
    public void delete(Connection conn, String id) throws SQLException {
        String sql = "delete from book where book_id = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
        pstm.executeUpdate();
    }

    @Override
    public Book get(Connection conn, String id) throws SQLException {
        String sql = "select * from book where book_id = ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
        ResultSet rs = pstm.executeQuery();

        if (rs.next()) {
            Book book = new Book();
            book.setId(rs.getString("book_id"));
            book.setTitle(rs.getString("title"));
            book.setAuthor(rs.getString("author"));
            book.setPages(rs.getInt("pages"));
            book.setPublisher(rs.getString("publisher"));
            book.setCategory(rs.getString("category"));
            book.setYearPublishing(rs.getInt("year_publishing"));
            book.setNumCopies(rs.getInt("num_copies"));
            book.setStatus(rs.getString("status"));
            book.setDescription(rs.getString("description"));
            book.setImageName(rs.getString("image_name"));
            return book;
        }

        return null;
    }

    @Override
    public List<Book> getAll(Connection conn) throws SQLException {
        String sql = "select * from book";

        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();

        List<Book> list = new ArrayList<>();

        while (rs.next()) {
            Book book = new Book();
            book.setId(rs.getString("book_id"));
            book.setTitle(rs.getString("title"));
            book.setAuthor(rs.getString("author"));
            book.setPages(rs.getInt("pages"));
            book.setPublisher(rs.getString("publisher"));
            book.setCategory(rs.getString("category"));
            book.setYearPublishing(rs.getInt("year_publishing"));
            book.setNumCopies(rs.getInt("num_copies"));
            book.setStatus(rs.getString("status"));
            book.setDescription(rs.getString("description"));
            book.setImageName(rs.getString("image_name"));
            list.add(book);
        }

        return list;
    }

    public List<Book> getPart(Connection conn, int currentPage, int recordsPerPage) throws SQLException {
        int start = currentPage * recordsPerPage - recordsPerPage;
        String sql = "select * from book limit ? offset ?";

        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setInt(1, recordsPerPage);
        pstm.setInt(2, start);
        ResultSet rs = pstm.executeQuery();

        List<Book> list = new ArrayList<>();

        while (rs.next()) {
            Book book = new Book();
            book.setId(rs.getString("book_id"));
            book.setTitle(rs.getString("title"));
            book.setAuthor(rs.getString("author"));
            book.setPages(rs.getInt("pages"));
            book.setPublisher(rs.getString("publisher"));
            book.setCategory(rs.getString("category"));
            book.setYearPublishing(rs.getInt("year_publishing"));
            book.setNumCopies(rs.getInt("num_copies"));
            book.setStatus(rs.getString("status"));
            book.setDescription(rs.getString("description"));
            book.setImageName(rs.getString("image_name"));
            list.add(book);
        }

        return list;
    }

    public int getRowNumber(Connection conn) throws SQLException {
        String sql = "select count(book_id) from book";

        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();

        int rowNumber = 0;

        if (rs.next()) {
            rowNumber = rs.getInt(1);
        }

        return rowNumber;
    }
}