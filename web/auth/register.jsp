<%-- 
    Document   : register
    Created on : Nov 30, 2024, 6:25:49 PM
    Author     : leduy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <div class="container my-5">
            <h2 class="text-center">Register</h2>
            <c:if test="${not empty errors}">
                <div class="alert alert-danger" role="alert">
                    <ul class="mb-0">
                        <c:forEach items="${errors}" var="error">
                            <li>${error}</li>
                            </c:forEach>
                    </ul>
                </div>
            </c:if>

            <c:if test="${not empty error}">
                <div class="alert alert-danger" role="alert">
                    ${error}
                </div>
            </c:if>
            <form action="${pageContext.request.contextPath}/register" method="post">
                <div class="mb-3">
                    <label for="firstName" class="form-label">First Name</label>
                    <input type="text" class="form-control" id="firstName" name="firstName" value="${param.firstName}" placeholder="Enter your first name" required>
                </div>
                <div class="mb-3">
                    <label for="lastName" class="form-label">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="lastName" value="${param.lastName}" placeholder="Enter your last name" required>
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="${param.email}" placeholder="Enter your email" required>
                </div>              
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>
                <div class="mb-3">
                    <label for="confirmPassword" class="form-label">Confirm Password</label>
                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" placeholder="Re-enter your password" required>
                </div>
                <div class="mb-3">
                    <label for="gender" class="form-label">Gender</label>
                    <select class="form-select" id="gender" name="gender" required>
                        <option value="" disabled selected>Select your gender</option>
                        <option value="1" ${param.gender == '1' ? 'selected' : ''}>Male</option>
                        <option value="0" ${param.gender == '0' ? 'selected' : ''}>Female</option>
                    </select>
                </div>
                <div class="mb-3">
                    <label for="birthdate" class="form-label">Birthdate</label>
                    <input type="date" class="form-control" id="birthdate" name="birthdate" required>
                </div>
                <button type="submit" class="btn btn-primary w-100">Register</button>
            </form>
                    <div>
                        <a href="${pageContext.request.contextPath}/login">Already have account</a>
                    </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
