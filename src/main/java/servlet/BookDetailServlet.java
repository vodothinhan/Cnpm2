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

@WebServlet(name = "BookDetailServlet", urlPatterns = {"/bookDetail"})
public class BookDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = ConnectionUtils.getStoredConnection(request);

        String id = request.getParameter("id");

        Book book = null;
        String errorString = null;

        try {
            book = DAOFactory.getBookDAO().get(conn, id);
        } catch (SQLException e) {
            e.printStackTrace();
            errorString = e.getMessage();
        }

        if (book == null) {
            response.sendRedirect(request.getContextPath() + "/bookList");
            return;
        }

        request.setAttribute("book", book);
        request.setAttribute("errorString", errorString);
        request.getRequestDispatcher("/views/bookDetailView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}