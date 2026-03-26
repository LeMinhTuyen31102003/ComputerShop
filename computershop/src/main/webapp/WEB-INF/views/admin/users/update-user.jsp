<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
                                <h1 class="mt-4">Create User</h1>
                                <ol class="breadcrumb mb-4">
                                    <a href="/admin" class="breadcrumb-item">Dashboard</a>
                                    <a href="/admin/users" class="breadcrumb-item">Users</a>
                                    <li class="breadcrumb-item active">Create User</li>
                                </ol>
                            </div>
                                    <div class="mt-5">
                                        <div class="row">
                                            <div class="col-md-6 col-12 mx-auto">
                                                <h1 class="text-center">Update User</h1>
                                                <hr>
                                                <form:form action="/admin/users/update" method="post" modelAttribute="user">
                                                    <form:hidden path="id" />
                                                    <div class="form-group">
                                                        <label class="form-label" for="email">Email:</label>
                                                        <form:input type="email" class="form-control" id="email" name="email" path="email"
                                                            disabled="true" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="form-label" for="fullname">Full Name:</label>
                                                        <form:input type="text" class="form-control" id="fullname" name="fullname" path="fullname"
                                                            required="required" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="form-label" for="address">Address:</label>
                                                        <form:input type="text" class="form-control" id="address" name="address" path="address"
                                                            required="required" />
                                                    </div>
                                                    <div class="form-group">
                                                        <label class="form-label" for="phone">Phone:</label>
                                                        <form:input type="text" class="form-control" id="phone" name="phone" path="phone"
                                                            required="required" />
                                                    </div>
                                                    <div class="form-group d-flex justify-content-between">
                                                        <a href="/admin/users" class="btn btn-secondary mt-3">Back</a>
                                                        <button type="submit" class="btn btn-warning mt-3">Update User</button>
                                                    </div>
                                                </form:form>
                                                <!-- <c:if test="${not empty successMessage}">
                                                        <div class="alert alert-success mt-3" role="alert">
                                                            ${successMessage}
                                                        </div>
                                                    </c:if> -->
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