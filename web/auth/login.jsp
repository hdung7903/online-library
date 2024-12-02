<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .password-container {
                position: relative;
            }
            .password-container input[type="password"],
            .password-container input[type="text"] {
                width: 100%;
                padding-right: 40px;
            }
            .password-container .toggle-password {
                position: absolute;
                right: 10px;
                top: 50%;
                transform: translateY(-50%);
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-md-4">
                    <h2 class="text-center">
                        Login
                    </h2>
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
                    <form action="${pageContext.request.contextPath}/login" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">
                                Email address
                            </label>
                            <input type="email" class="form-control" id="email" name="email" required>
                        </div>
                        <div class="mb-3 password-container">
                            <label for="password" class="form-label">
                                Password
                            </label>
                            <input type="password" class="form-control" id="password" name="password" required>
                            <span class="toggle-password" onclick="togglePassword()">
                                <svg xmlns="http://www.w3.org/2000/svg"
                                     width="16"
                                     height="16"
                                     fill="currentColor"
                                     class="bi bi-eye-slash"
                                     viewBox="0 0 16 16">
                                </svg>
                            </span>
                        </div>
                        <div>
                            <input type="checkbox" name="remember" />
                            <label>Remember Me</label>
                        </div>
                        <button type="submit" class="btn btn-primary w-100">
                            Login
                        </button>
                    </form> 
                </div>
                <div>
                    <a href="${pageContext.request.contextPath}/register">Register a new account</a>
                </div>
            </div> 
        </div> 
    </body>
</html>
