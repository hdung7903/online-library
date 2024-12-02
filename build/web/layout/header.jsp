<%-- 
    Document   : header.jsp
    Created on : Nov 30, 2024, 4:47:08 PM
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
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    Library Management
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon">

                    </span> 
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                Home
                            </a> 
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                Books
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                ${sessionScope.user.firstName} ${sessionScope.user.lastName}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">
                                Transactions
                            </a>
                        </li>
                    </ul>
                </div> 
            </div>
        </nav>
    </body>
</html>
