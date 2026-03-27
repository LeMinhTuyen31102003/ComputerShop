<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Computer Shop Admin Dashboard" />
                <meta name="author" content="TuyenCute" />
                <title>User Detail - SB Admin</title>
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
                                <h1 class="mt-4 text-primary"><i class="fas fa-id-card me-2"></i>User Profile</h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/users"
                                            class="text-decoration-none">Users List</a></li>
                                    <li class="breadcrumb-item active">User Detail</li>
                                </ol>

                                <div class="row justify-content-center mt-4">
                                    <div class="col-lg-8 col-md-10 col-12">
                                        <div class="card shadow-sm border-0 rounded-lg mb-5">
                                            <div
                                                class="card-header bg-dark text-white d-flex justify-content-between align-items-center py-3">
                                                <h5 class="mb-0 fw-light">Information of ID: <strong>${id}</strong></h5>
                                                <a href="/admin/users" class="btn btn-outline-light btn-sm">
                                                    <i class="fas fa-arrow-left me-1"></i> Back to list
                                                </a>
                                            </div>

                                            <div class="card-body p-4">
                                                <div class="row align-items-center">
                                                    <div class="col-md-4 text-center mb-4 mb-md-0 border-end">
                                                        <img src="/resources/images/avatar/${user.avatar}"
                                                            class="rounded-circle img-thumbnail shadow-sm mb-3"
                                                            style="width: 160px; height: 160px; object-fit: cover;"
                                                            alt="User Avatar"
                                                            onerror="this.src='https://via.placeholder.com/160x160?text=No+Avatar';">

                                                        <h4 class="fw-bold text-dark mb-1">${user.fullname}</h4>
                                                        <span class="badge bg-primary px-3 py-2 rounded-pill shadow-sm">
                                                            <i class="fas fa-user-shield me-1"></i> ${user.role.name}
                                                        </span>
                                                    </div>

                                                    <div class="col-md-8 ps-md-4">
                                                        <table class="table table-borderless mb-0 fs-5">
                                                            <tbody>
                                                                <tr>
                                                                    <th style="width: 35%;"
                                                                        class="text-muted fw-normal">
                                                                        <i
                                                                            class="fas fa-envelope text-primary me-2"></i>
                                                                        Email
                                                                    </th>
                                                                    <td class="fw-medium">${user.email}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th class="text-muted fw-normal">
                                                                        <i
                                                                            class="fas fa-phone-alt text-success me-2"></i>
                                                                        Phone
                                                                    </th>
                                                                    <td class="fw-medium">${user.phone}</td>
                                                                </tr>
                                                                <tr>
                                                                    <th class="text-muted fw-normal">
                                                                        <i
                                                                            class="fas fa-map-marker-alt text-danger me-2"></i>
                                                                        Address
                                                                    </th>
                                                                    <td class="fw-medium">${user.address}</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
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
                <script src="/js/scripts.js"></script>
            </body>

            </html>