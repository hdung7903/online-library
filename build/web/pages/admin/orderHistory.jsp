<%-- 
    Document   : orderHistory
    Created on : Dec 2, 2024, 1:34:54 AM
    Author     : leduy
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Order History</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="d-flex">
            <%@include  file="../../layout/admin/sidebar.jsp"%>
            <div class="content">
                <div>
                    <%@include  file="../../layout/header.jsp"%>
                </div>
                <h1>Orders Here</h1>
                <c:if test="${empty transactions}">
                    No transaction found.
                </c:if>
                <c:if test="${not empty transactions}">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>Id</th>
                                <th>User</th>
                                <th>Book</th>
                                <th>Status</th>
                                <th>Start Date</th>
                                <th>Due Date</th>
                                <th>Return Date</th>
                                <th>Fine</th>
                            </tr>
                        </thead>
                        <tbody>                      
                            <c:forEach items="${transactions}" var="transaction">
                                <tr>
                                    <td>${transaction.id}</td>
                                    <td>${transaction.type}}</td>
                                    <td>${transaction.status}</td>
                                    <td>${transaction.startDate}</td>
                                    <td>${transaction.dueDate}</td>
                                    <td>${transaction.returnedDate}</td>
                                    <td>${transaction.fine}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </c:if>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
