package servlet;

import beans.Book;
import conn.ConnectionUtils;
import dao.DAOFactory;
import utils.UploadImageUtils;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditBookServlet", urlPatterns = {"/admin/bookManager/editBook"})
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
    maxFileSize = 1024 * 1024 * 50, // 50 MB
    maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class EditBookServlet extends HttpServlet {
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
            response.sendRedirect(request.getContextPath() + "/admin/bookManager");
            return;
        }

        request.setAttribute("book", book);
        request.setAttribute("errorString", errorString);
        request.getRequestDispatcher("/views/editBookView.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection conn = ConnectionUtils.getStoredConnection(request);

        String id = request.getParameter("id");
        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String publisher = request.getParameter("publisher");
        String category = request.getParameter("category");
        String status = request.getParameter("status");
        String description = request.getParameter("description");
        int pages = 0;
        int yearPublishing = 0;
        int numCopies = 0;
        try {
            pages = Integer.parseInt(request.getParameter("pages"));
            yearPublishing = Integer.parseInt(request.getParameter("yearPublishing"));
            numCopies = Integer.parseInt(request.getParameter("numCopies"));
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
        String imageName = request.getParameter("imageName");
        if ("".equals(imageName)) {
            imageName = null;
        }

        Book book = new Book(id, title, author, pages, publisher, category, yearPublishing, numCopies,
                status, description, imageName);
        String errorString = null;
        String successString = "Sửa sách thành công!";

        // VALIDATE FORM
        // (1) id phải là chuỗi 5 chữ số
        String idRegex = "\\d{5}";
        if (id == null || !id.matches(idRegex)) {
            errorString = "ID của sách phải là chuỗi 5 chữ số!";
        }

        // VALIDATE DATABASE
        if (errorString == null) {
            try {
                DAOFactory.getBookDAO().update(conn, book);
                request.getSession().setAttribute("successString", successString);
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = "Lỗi SQL: " + e.getMessage();
            }
        }

        // Khi không còn lỗi ở form hay database
        // thì chạy hàm upload()
        if (errorString == null) {
            try {
                imageName = UploadImageUtils.upload(request);
                if (imageName != null) {
                    book.setImageName(imageName);
                    DAOFactory.getBookDAO().update(conn, book);
                }
            } catch (SQLException e) {
                e.printStackTrace();
                errorString = "Lỗi SQL: " + e.getMessage();
            }
        }

        request.setAttribute("book", book);
        request.setAttribute("errorString", errorString);

        if (errorString != null) {
            request.getRequestDispatcher("/views/editBookView.jsp").forward(request, response);
        } else {
            response.sendRedirect(request.getContextPath() + "/admin/bookManager");
        }
    }
}