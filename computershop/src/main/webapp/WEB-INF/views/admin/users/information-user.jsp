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
                                                    <div class="col-md-10 col-12 mx-auto">
                                                        <div class="d-flex justify-content-between align-items-center mb-3">
                                                            <h2>User Information Of Id: ${id} </h2>
                                                            <button class="btn btn-primary" onclick="window.location.href='/admin/users'">Back</button>
                                                        </div>
                                                        <div class="card">
                                                            <img src="https://lh3.googleusercontent.com/8LHifx9FdWprIl2540QesvmwgAst5NCKbU4CtcFrnC6Lu8B5DUIjirfpjzbGSIQwM3VgNROfaZVPhGqvzcTNaDUAJEi2YPRzrw=w800-rw"
                                                                class="img-fluid" alt="User Avatar">
                                            
                                                            <div class="card-header">
                                                                <b>Your Name:</b> ${user.fullname}
                                                            </div>
                                                            <ul class="list-group list-group-flush">
                                                                <li class="list-group-item"><b>Email:</b> ${user.email}</li>
                                                                <li class="list-group-item"><b>Phone Number:</b> ${user.phone}</li>
                                                                <li class="list-group-item"><b>Address:</b> ${user.address}</li>
                                                            </ul>
                                                        </div>
                                            
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