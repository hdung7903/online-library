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
        <title>User List</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="d-flex">
            <%@include  file="../../layout/admin/sidebar.jsp"%>
            <div class="content-fluid">
                <div>
                    <%@include  file="../../layout/header.jsp"%>
                </div>
                <div class="d-flex justify-content-between align-items-center mt-3 mb-4">
                    <h1 class="h4">User List</h1>
                    <div>
                        <a href="${pageContext.request.contextPath}/admin/users/add" class="btn btn-primary me-2">Add New User</a>
                        <a href="${pageContext.request.contextPath}/admin/users/export" class="btn btn-outline-secondary">Export Data</a>
                    </div>
                </div>
                <c:if test="${empty users}">
                    <div class="alert alert-warning" role="alert">
                        No users found.
                    </div>
                </c:if>

                <c:if test="${not empty users}">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered">
                            <thead class="table-dark">
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
                                <c:forEach items="${users}" var="user">
                                    <tr>
                                        <td>${user.id}</td>
                                        <td>${user.firstName}</td>
                                        <td>${user.lastName}</td>
                                        <td>${user.email}</td>
                                        <td>${user.gender ? 'Male' : 'Female'}</td>
                                        <td>${user.dob}</td>
                                        <td>${user.role}</td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </c:if>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
