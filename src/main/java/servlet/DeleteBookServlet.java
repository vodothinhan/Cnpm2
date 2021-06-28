package servlet;

import beans.Book;
import conn.ConnectionUtils;
import dao.DAOFactory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteBookServlet", urlPatterns = {"/admin/bookManager/deleteBook"})
public class DeleteBookServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = ConnectionUtils.getStoredConnection(request);

        String id = request.getParameter("id");

        String errorString = null;
        String successString = "Xóa sách thành công!";

        try {
            DAOFactory.getBookDAO().delete(conn, id);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        if (errorString != null) {
            request.getSession().setAttribute("errorString", errorString);
        } else {
            request.getSession().setAttribute("successString", successString);
        }
        response.sendRedirect(request.getContextPath() + "/admin/bookManager");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}