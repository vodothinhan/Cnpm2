package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

public interface DAO<T> {
    void insert(Connection conn, T t) throws SQLException;

    void update(Connection conn, T t) throws SQLException;

    void delete(Connection conn, String id) throws SQLException;

    T get(Connection conn, String id) throws SQLException;

    List<T> getAll(Connection conn) throws SQLException;
}