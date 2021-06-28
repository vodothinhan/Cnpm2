<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Trang chủ</title>
</head>

<body>
    <jsp:include page="_header.jsp"></jsp:include>

    <section class="section-content padding-y">
        <div class="container">
            <div class="card bg-light">
                <div class="card-body p-5">
                    <h1 class="display-3 mb-4">Phần mềm Quản lý Thư viện</h1>
                    <p class="fs-4 lh-lg">Quản lý thư viện thủ công là một công việc vất vả khi thư viện có số lượng đầu sách lớn, số lượt mượn/trả sách cao và khó thống kê chính xác các hoạt động của thư viện. Vì vậy, phần mềm Quản lý thư viện được phát triển nhằm cung cấp giải pháp kỹ thuật để tối ưu hóa công việc này.</p>
                </div>
                <img src="${pageContext.request.contextPath}/assets/img/back.jpg" class="card-img-bottom" alt="Thư viện">
            </div> <!-- card.// -->
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>