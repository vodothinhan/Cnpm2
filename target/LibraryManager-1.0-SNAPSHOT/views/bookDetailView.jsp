<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Thông tin sách</title>
</head>

<body>
    <jsp:include page="_header.jsp"></jsp:include>

    <section class="section-content">
        <div class="container">
            <header class="section-heading py-4">
                <h3 class="section-title">Thông tin sách</h3>
            </header> <!-- section-heading.// -->
            <div class="card mb-5">
                <div class="card-body">
                    <div class="row">
                        <aside class="col-md-3 mb-lg-0 mb-3" style="width: fit-content; max-width: 200px;">
                            <c:choose>
                                <c:when test="${book.imageName == null}">
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/assets/img/200px.png">
                                </c:when>
                                <c:otherwise>
                                    <img class="img-fluid" src="${pageContext.request.contextPath}/image/${book.imageName}">
                                </c:otherwise>
                            </c:choose>
                        </aside>
                        <main class="col-md-9">
                            <article class="book-detail">
                                <h2 class="mb-3">${book.title}</h2>
                                <dl class="row">
                                    <dt class="col-sm-3">ID</dt>
                                    <dd class="col-sm-9">${book.id}</dd>

                                    <dt class="col-sm-3">Tác giả</dt>
                                    <dd class="col-sm-9">${book.author}</dd>

                                    <dt class="col-sm-3">Số trang</dt>
                                    <dd class="col-sm-9">${book.pages}</dd>

                                    <dt class="col-sm-3">Nhà xuất bản</dt>
                                    <dd class="col-sm-9">${book.publisher}</dd>

                                    <dt class="col-sm-3">Thể loại</dt>
                                    <dd class="col-sm-9">${book.category}</dd>

                                    <dt class="col-sm-3">Năm phát hành</dt>
                                    <dd class="col-sm-9">${book.yearPublishing}</dd>

                                    <dt class="col-sm-3">Số bản sao</dt>
                                    <dd class="col-sm-9">${book.numCopies}</dd>

                                    <dt class="col-sm-3">Tình trạng</dt>
                                    <dd class="col-sm-9">${book.status}</dd>

                                    <dt class="col-sm-3">Mô tả</dt>
                                    <dd class="col-sm-9">${book.description}</dd>
                                </dl>
                                <a class="btn btn-primary" href="#" role="button">Mượn sách</a>
                            </article>
                        </main>
                    </div>
                </div>
            </div> <!-- card.// -->
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>