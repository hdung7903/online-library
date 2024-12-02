<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="row">
            <div class="col-md-2">
                <h5>Bộ lọc tìm kiếm</h5>
                <div class="mb-3">
                    <h6>Danh mục sản phẩm</h6>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="arts">
                        <label class="form-check-label" for="arts">Arts</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="business">
                        <label class="form-check-label" for="business">Business</label>
                    </div>
                   <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="commics">
                        <label class="form-check-label" for="business">Business</label>
                    </div>
                </div>
                <div class="mb-3">
                    <h6>Khoảng giá</h6>
                    <div class="d-flex">
                        <input type="number" class="form-control me-2" placeholder="Từ">
                        <input type="number" class="form-control" placeholder="Đến">
                    </div>
                    <button class="btn btn-primary mt-2">Áp dụng</button>
                </div>
            </div>
            <div class="col-md-9">
                <ul class="nav nav-tabs mb-3">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Phổ biến</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Hàng mới</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Giá thấp đến cao</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Giá cao đến thấp</a>
                    </li>
                </ul>
                <div class="row g-3">
                    <div class="col-md-4">
                        <div class="card">
                            <a href="${pageContext.request.contextPath}/book/detail">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Book">
                            <div class="card-body">
                                <h6 class="card-title">Đại Việt Sử Ký Toàn Thư</h6>                               
                                <small class="text-muted">Available</small>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Book">
                            <div class="card-body">
                                <h6 class="card-title">Salt, Fat, Acid, Heat</h6>
                                <small class="text-muted">Available</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card">
                            <img src="https://via.placeholder.com/150" class="card-img-top" alt="Book">
                            <div class="card-body">
                                <h6 class="card-title">Tư Duy Ngược</h6>
                                <small class="text-muted text-danger">Not Available</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
