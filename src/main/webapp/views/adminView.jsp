<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">

<head>
    <jsp:include page="_library.jsp"></jsp:include>
    <title>Quản lý Thư viện</title>
</head>

<body>
    <jsp:include page="_headerAdmin.jsp"></jsp:include>

    <section class="section-content padding-y">
        <div class="container">
            <div class="card bg-light">
                <div class="card-body p-5">
                    <h1 class="display-3 mb-4">Quản lý Thư viện (Admin)</h1>
                </div>
                <img src="${pageContext.request.contextPath}/assets/img/back.jpg" class="card-img-bottom" alt="Thư viện">
            </div> <!-- card.// -->
        </div> <!-- container.// -->
    </section> <!-- section-content.// -->

    <jsp:include page="_footer.jsp"></jsp:include>
</body>

</html>