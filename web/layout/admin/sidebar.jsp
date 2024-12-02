<%-- 
    Document   : sidebar
    Created on : Dec 2, 2024, 7:37:53 AM
    Author     : leduy
--%>

<nav class="sidebar d-flex flex-column p-3">
    <div class="logo mb-4">Admin</div>
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link active" href="${pageContext.request.contextPath}/admin/dashboard">Dashboard</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/users">Manage Users</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/books">Manage Books</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="${pageContext.request.contextPath}/admin/order-history">Manage Orders</a>
        </li>
    </ul>
</nav>

