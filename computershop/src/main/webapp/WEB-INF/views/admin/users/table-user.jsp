            <%@page contentType="text/html" pageEncoding="UTF-8" %>
                <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                    <!DOCTYPE html>
                    <html lang="en">
            
                    <head>
                        <meta charset="utf-8" />
                        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                        <meta name="description" content="" />
                        <meta name="author" content="" />
                        <title>Dashboard - SB Admin</title>
                        <link href="/css/styles.css" rel="stylesheet" />
                        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                    </head>
            
                    <body class="sb-nav-fixed">
                        <jsp:include page="../layout/header.jsp" />
                        <div id="layoutSidenav">
                            <jsp:include page="../layout/sidebar.jsp" />
                            <div id="layoutSidenav_content">
                                <main>
                                    <div class="container-fluid px-4">
                                        <h1 class="mt-4">Manage Users</h1>
                                        <ol class="breadcrumb mb-4">
                                            <a href="/admin" class="breadcrumb-item">Dashboard</a>
                                            <li class="breadcrumb-item active">Users</li>
                                        </ol>
                                    </div>
                                            <div class="mt-5">
                                                <div class="row">
                                                    <div class="col-md-10 col-12 mx-auto">
                                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                                            <h2>User List</h2>
                                                            <button class="btn btn-primary" onclick="window.location.href='/admin/users/create'">Create
                                                                User</button>
                                                        </div>
                                                        <table class="table table-bordered">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Full Name</th>
                                                                    <th>Email</th>
                                                                    <th class="text-nowrap">Phone Number</th>
                                                                    <th>Address</th>
                                                                    <th>Actions</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <c:forEach var="user" items="${users}">
                                                                    <tr>
                                                                        <td>${user.id}</td>
                                                                        <td>${user.fullname}</td>
                                                                        <td>${user.email}</td>
                                                                        <td class="text-nowrap">${user.phone}</td>
                                                                        <td>${user.address}</td>
                                                                        <td class="d-flex gap-2 text-nowrap">
                                                                            <a href="/admin/users/${user.id}" class="btn btn-sm btn-info">View</a>
                                                                            <a href="/admin/users/update/${user.id}" class="btn btn-sm btn-warning">Edit</a>
                                                                            <a href="/admin/users/delete/${user.id}" class="btn btn-sm btn-danger">Delete</a>
                                                                        </td>
                                                                    </tr>
                                                                </c:forEach>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                </main>
                                <jsp:include page="../layout/footer.jsp" />
                            </div>
                        </div>
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                            crossorigin="anonymous"></script>
                        <script src="js/scripts.js"></script>
                    </body>
            
                    </html>