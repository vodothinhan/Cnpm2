<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Quản lý sách</title>
</head>

<body>
    <jsp:include page="_headerAdmin.jsp"></jsp:include>

    <section class="section-content">
        <div class="container">
            <c:if test="${successString != null}">
                <div class="alert alert-success mt-3" role="alert">
                    ${successString}
                </div>
            </c:if>
            <c:if test="${errorString != null}">
                <div class="alert alert-danger mt-3" role="alert">
                    ${errorString}
                </div>
            </c:if>
            <header class="section-heading py-4 d-flex justify-content-between">
                <h3 class="section-title">Quản lý sách</h3>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/admin/bookManager/addBook"
                   role="button" style="height: fit-content;">Thêm sách</a>
            </header> <!-- section-heading.// -->
            <main class="book-manager-table table-responsive-xl mb-5">
                <table class="table table-bordered table-striped table-hover align-middle">
                    <thead>
                    <tr>
                        <th scope="col" style="min-width: 40px;">#</th>
                        <th scope="col" style="min-width: 60px;">ID</th>
                        <th scope="col" style="min-width: 40px;">Hình</th>
                        <th scope="col" style="min-width: 280px;">Tên sách</th>
                        <th scope="col" style="min-width: 120px;">Tác giả</th>
                        <th scope="col" style="min-width: 120px;">Nhà xuất bản</th>
                        <th scope="col" style="min-width: 150px;">Thể loại</th>
                        <th scope="col" style="min-width: 115px;">Số bản sao</th>
                        <th scope="col" style="min-width: 138px;">Thao tác</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${books}" var="book" varStatus="loop">
                        <tr>
                            <th scope="row">${loop.index + 1}</th>
                            <td>${book.id}</td>
                            <td class="text-center">
                                <c:choose>
                                    <c:when test="${book.imageName == null}">
                                        <img class="img-thumb" src="${pageContext.request.contextPath}/assets/img/200px.png">
                                    </c:when>
                                    <c:otherwise>
                                        <img class="img-thumb" src="${pageContext.request.contextPath}/image/${book.imageName}">
                                    </c:otherwise>
                                </c:choose>
                            </td>
                            <td><a href="${pageContext.request.contextPath}/bookDetail?id=${book.id}" target="_blank">${book.title}</a></td>
                            <td>${book.author}</td>
                            <td>${book.publisher}</td>
                            <td>${book.category}</td>
                            <td>${book.numCopies}</td>
                            <td class="text-center">
                                <a class="btn btn-primary me-2" href="${pageContext.request.contextPath}/admin/bookManager/editBook?id=${book.id}"
                                   role="button">Sửa</a>
                                <a class="btn btn-danger" href="${pageContext.request.contextPath}/admin/bookManager/deleteBook?id=${book.id}"
                                   role="button" onclick="if(!confirm('Bạn có muốn xóa?')) { return false; }">Xóa</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </main> <!-- book-manager-table.// -->
            <nav class="mt-3 mb-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                        <a class="page-link" href="${pageContext.request.contextPath}/admin/bookManager?currentPage=${currentPage - 1}">Trang trước</a>
                    </li>

                    <c:forEach begin="1" end="${numOfPages}" var="i">
                        <c:choose>
                            <c:when test="${currentPage == i}">
                                <li class="page-item active">
                                    <a class="page-link">${i}</a>
                                </li>
                            </c:when>
                            <c:otherwise>
                                <li class="page-item">
                                    <a class="page-link" href="${pageContext.request.contextPath}/admin/bookManager?currentPage=${i}">${i}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <li class="page-item ${currentPage == numOfPages ? 'disabled' : ''}">
                        <a class="page-link" href="${pageContext.request.contextPath}/admin/bookManager?currentPage=${currentPage + 1}">Trang sau</a>
                    </li>
                </ul>
            </nav>
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>