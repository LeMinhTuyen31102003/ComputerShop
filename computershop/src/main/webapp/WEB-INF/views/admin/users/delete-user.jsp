<%@page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Computer Shop - User Information</title>
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
                            <h2>Delete User Id: ${id}</h2>
                            <button class="btn btn-primary" onclick="window.location.href='/admin/users'">Back</button>
                        </div>
                        <div class="card p-4">
                            <p>Are you sure you want to delete this user?</p>
                            <form:form action="/admin/users/delete" method="post" modelAttribute="user">
                                <form:input type="hidden" name="id" value="${id}" path="id"/>
                                <button type="submit" class="btn btn-danger">Confirm Delete</button>
                            </form:form>
                        </div>

                    </div>
                </div>
            </div>
        </body>

        </html>