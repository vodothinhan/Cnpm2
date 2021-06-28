package servlet;

import beans.Book;
import conn.ConnectionUtils;
import dao.DAOFactory;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "BookManagerServlet", urlPatterns = {"/admin/bookManager"})
public class BookManagerServlet extends HttpServlet {
    private static final int RECORDS_PER_PAGE = 10;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String successString = (String) request.getSession().getAttribute("successString");
        if (successString != null) {
            request.setAttribute("successString", successString);
            request.getSession().removeAttribute("successString");
        }

        String errorString = (String) request.getSession().getAttribute("errorString");
        if (errorString != null) {
            request.setAttribute("errorString", errorString);
            request.getSession().removeAttribute("errorString");
        }

        Connection conn = ConnectionUtils.getStoredConnection(request);

        int currentPage = 1;
        try {
            currentPage = Integer.parseInt(request.getParameter("currentPage"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        List<Book> list = null;
        int numOfPages = 0;

        try {
            list = DAOFactory.getBookDAO().getPart(conn, currentPage, RECORDS_PER_PAGE);
            int rowNumber = DAOFactory.getBookDAO().getRowNumber(conn);
            numOfPages = rowNumber / RECORDS_PER_PAGE;
            if (rowNumber % RECORDS_PER_PAGE > 0) {
                numOfPages++;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        request.setAttribute("books", list);
        request.setAttribute("numOfPages", numOfPages);
        request.setAttribute("currentPage", currentPage);
        request.getRequestDispatcher("/views/bookManagerView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}