<%-- 
    Document   : detail
    Created on : Nov 30, 2024, 5:44:55 PM
    Author     : leduy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container my-4">
            <nav aria-label="breadcrumb" class="mb-3">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="#">Trang Chủ</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Xem chi tiết sách</li>
                </ol>
            </nav>
            <div class="row">
                <div class="col-md-5">
                    <div class="text-center mb-3">
                        <img src="https://via.placeholder.com/300x400" alt="Book Cover" class="img-fluid mb-3">
                        <img src="https://via.placeholder.com/50" alt="Thumbnail" class="img-thumbnail">
                    </div>
                </div>
                <div class="col-md-7">
                    <h3 class="mb-2">Tự Học Nhạc Lý Cơ Bản</h3>
                    <p class="text-muted">Tác giả: <span class="text-primary">TS. Phạm Phương Hoa, Trương Ngọc Bích, Cù Minh Nhật</span></p>
                    <div class="mb-2">
                        <span class="text-warning">&#9733;&#9733;&#9733;&#9733;&#9733;</span>
                        <span class="text-muted">(Đã bán 31)</span>
                    </div>
                    <h4 class="text-danger">60.000 ₫</h4>
                    <p class="text-muted mb-2">Vận Chuyển: <span class="text-success">Miễn phí vận chuyển</span></p>

                    <!-- Quantity -->
                    <div class="d-flex align-items-center mb-4">
                        <label for="quantity" class="me-2">Số Lượng:</label>
                        <div class="input-group" style="width: 120px;">
                            <button class="btn btn-outline-secondary" id="decrement">-</button>
                            <input type="number" class="form-control text-center" id="quantity" value="1" min="1">
                            <button class="btn btn-outline-secondary" id="increment">+</button>
                        </div>
                    </div>
                    <div class="d-flex">
                        <button class="btn btn-outline-danger me-2">
                            <i class="bi bi-cart"></i> Thêm vào giỏ hàng
                        </button>
                        <button class="btn btn-danger">Mua ngay</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
