<%@page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Computer Shop - User List</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <link rel="stylesheet" href="./css/demo.css">
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-10 col-12 mx-auto">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                            <h2>User List</h2>
                            <button class="btn btn-primary" onclick="window.location.href='/admin/users/create'">Create User</button>
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
            </body>

            </html>