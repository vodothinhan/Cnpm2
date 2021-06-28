<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Thêm sách</title>
</head>

<body>
    <jsp:include page="_headerAdmin.jsp"></jsp:include>

    <section class="section-content">
        <div class="container">
            <header class="section-heading py-4 d-flex justify-content-between">
                <h3 class="section-title">Thêm sách</h3>
            </header> <!-- section-heading.// -->
            <main class="add-book-form mb-5">
                <form class="w-50" method="POST" action="${pageContext.request.contextPath}/admin/bookManager/addBook"
                      enctype="multipart/form-data">
                    <c:if test="${errorString != null}">
                        <div class="alert alert-danger mb-3" role="alert">
                            ${errorString}
                        </div>
                    </c:if>
                    <div class="mb-3">
                        <label for="add-book-id" class="form-label">ID <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-id" name="id" value="${book.id}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-title" class="form-label">Tên sách <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-title" name="title" value="${book.title}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-author" class="form-label">Tác giả <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-author" name="author" value="${book.author}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-pages" class="form-label">Số trang <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" id="add-book-pages" name="pages" value="${book.pages}" min="1" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-publisher" class="form-label">Nhà xuất bản <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-publisher" name="publisher" value="${book.publisher}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-category" class="form-label">Thể loại <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-category" name="category" value="${book.category}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-yearPublishing" class="form-label">Năm phát hành <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" id="add-book-yearPublishing" name="yearPublishing" value="${book.yearPublishing}" min="1" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-numCopies" class="form-label">Số bản sao <span class="text-danger">*</span></label>
                        <input type="number" class="form-control" id="add-book-numCopies" name="numCopies" value="${book.numCopies}" min="1" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-status" class="form-label">Tình trạng <span class="text-danger">*</span></label>
                        <input type="text" class="form-control" id="add-book-status" name="status" value="${book.status}" required>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-description" class="form-label">Mô tả <span class="text-danger">*</span></label>
                        <textarea class="form-control" id="add-book-description" rows="5" name="description" required>${book.description}</textarea>
                    </div>
                    <div class="mb-3">
                        <label for="add-book-imageName" class="form-label">Hình</label>
                        <input type="file" class="form-control" id="add-book-imageName" name="image">
                    </div>
                    <button type="submit" class="btn btn-primary me-2 mb-3">Thêm sách</button>
                    <button type="reset" class="btn btn-warning me-2 mb-3"
                       onclick="if(!confirm('Bạn có muốn tẩy trống?')) { return false; }">Tẩy trống</button>
                    <a class="btn btn-danger mb-3" href="${pageContext.request.contextPath}/admin/bookManager"
                       role="button" onclick="if(!confirm('Bạn có muốn hủy?')) { return false; }">Hủy</a>
                </form>
            </main> <!-- add-book-form.// -->
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>