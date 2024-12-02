<%-- 
    Document   : books
    Created on : Dec 2, 2024, 1:32:14 AM
    Author     : leduy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book List</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="d-flex">
            <%@include  file="../../layout/admin/sidebar.jsp"%>
            <div class="content">
                <div>
                    <%@include  file="../../layout/header.jsp"%>
                </div>
                <div class="d-flex justify-content-between align-items-center mt-3 mb-4">
                    <h1 class="h4">Book List</h1>
                    <div>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#insertBookModal">
                            Add a new book
                        </button>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#insertBooksModal">
                            Import Books Data
                        </button>
                        <button class="btn">
                            Export Book Data
                        </button>
                    </div>
                </div>
                <c:if test="${empty books}">
                    No books found.
                </c:if>
                <c:if test="${not empty books}">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>First Name</th>
                                <th>Last Name</th>
                                <th>Email</th>
                                <th>Gender</th>
                                <th>Birthdate</th>
                                <th>Role</th>
                            </tr>
                        </thead>
                        <tbody>                      
                            <c:forEach items="${books}" var="book">
                                <tr>
                                    <td>${book.id}</td>
                                    <td>${book.title}</td>
                                    <td>${book.publishedYear}</td>
                                    <td>${book.totalQuantity}</td>
                                    <td>${book.availableQuantity}</td>
                                    <td>${book.isbn}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
            </div>
        </div>
        <%@include file="../../layout/admin/insertBookModal.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
