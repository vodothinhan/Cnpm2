<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Danh mục sách</title>
</head>

<body>
    <jsp:include page="_header.jsp"></jsp:include>

    <section class="section-content">
        <div class="container">
            <header class="section-heading py-4">
                <h3 class="section-title">Danh mục sách</h3>
            </header> <!-- section-heading.// -->
            <div class="row item-grid">
                <c:forEach items="${books}" var="book">
                    <div class="col-md-3">
                        <div class="card p-3 mb-4">
                            <a href="bookDetail?id=${book.id}" class="img-wrap text-center">
                                <c:choose>
                                    <c:when test="${book.imageName == null}">
                                        <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/200px.png">
                                    </c:when>
                                    <c:otherwise>
                                        <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/bookImage/${book.imageName}">
                                    </c:otherwise>
                                </c:choose>
                            </a>
                            <figcaption class="info-wrap mt-2">
                                <a href="bookDetail?id=${book.id}" class="title">${book.title}</a>
                            </figcaption>
                        </div>
                    </div> <!-- col.// -->
                </c:forEach>
            </div> <!-- row.// -->
            <nav class="mt-3 mb-5">
                <ul class="pagination justify-content-center">
                    <li class="page-item ${currentPage == 1 ? 'disabled' : ''}">
                        <a class="page-link" href="bookList?currentPage=${currentPage - 1}">Trang trước</a>
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
                                    <a class="page-link" href="bookList?currentPage=${i}">${i}</a>
                                </li>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>

                    <li class="page-item ${currentPage == numOfPages ? 'disabled' : ''}">
                        <a class="page-link" href="bookList?currentPage=${currentPage + 1}">Trang sau</a>
                    </li>
                </ul>
            </nav>
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>