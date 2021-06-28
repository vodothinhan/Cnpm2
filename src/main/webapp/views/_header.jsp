<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<header class="section-header">
    <section class="header-main border-bottom">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-3 py-4">
                    <a class="text-body" href="${pageContext.request.contextPath}/">
                        <h3>Thư viện</h3>
                    </a>
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container.// -->
    </section> <!-- header-main.// -->
</header> <!-- section-header.// -->

<nav class="navbar navbar-main navbar-expand-lg navbar-light border-bottom">
    <div class="container">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/bookList">Danh mục sách</a>
                </li>
            </ul>
            <a class="btn btn-light me-2" href="${pageContext.request.contextPath}/admin" role="button">Admin</a>
            <a class="btn btn-primary" href="${pageContext.request.contextPath}/login" role="button">Đăng nhập</a>
        </div>
    </div> <!-- container .// -->
</nav> <!-- navbar-main.// -->