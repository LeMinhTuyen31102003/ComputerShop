<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="utf-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="Manage Users - Computer Shop" />
            <meta name="author" content="TuyenCute" />
            <title>Manage Users - SB Admin</title>
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
                            <h1 class="mt-4 text-primary"><i class="fas fa-users me-2"></i>Manage Users</h1>

                            <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                <li class="breadcrumb-item"><a href="/admin" class="text-decoration-none">Dashboard</a>
                                </li>
                                <li class="breadcrumb-item active">Users List</li>
                            </ol>

                            <c:if test="${not empty successMessage}">
                                <div class="alert alert-success alert-dismissible fade show shadow-sm" role="alert">
                                    <i class="fas fa-check-circle me-1"></i> ${successMessage}
                                    <button type="button" class="btn-close" data-bs-dismiss="alert"
                                        aria-label="Close"></button>
                                </div>
                            </c:if>

                            <div class="card shadow-sm border-0 rounded-lg mb-4 mt-3">
                                <div
                                    class="card-header bg-dark text-white d-flex justify-content-between align-items-center py-3">
                                    <h5 class="mb-0 fw-light"><i class="fas fa-table me-1"></i> User Data Table</h5>
                                    <button class="btn btn-primary btn-sm shadow-sm"
                                        onclick="window.location.href='/admin/users/create'">
                                        <i class="fas fa-plus-circle me-1"></i> Create New User
                                    </button>
                                </div>

                                <div class="card-body p-0">
                                    <div class="table-responsive">
                                        <table class="table table-hover table-striped align-middle mb-0">
                                            <thead class="table-light">
                                                <tr>
                                                    <th class="ps-4">ID</th>
                                                    <th>Avatar</th>
                                                    <th>Full Name</th>
                                                    <th>Role</th>
                                                    <th>Email</th>
                                                    <th>Phone Number</th>
                                                    <th class="text-center">Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach var="user" items="${users}">
                                                    <tr>
                                                        <td class="ps-4 fw-bold text-muted">#${user.id}</td>
                                                        <td>
                                                            <img src="/resources/images/avatar/${user.avatar}"
                                                                class="rounded-circle shadow-sm"
                                                                style="width: 45px; height: 45px; object-fit: cover;"
                                                                alt="avatar"
                                                                onerror="this.src='https://via.placeholder.com/45x45?text=No+Img';">
                                                        </td>
                                                        <td class="fw-medium">${user.fullname}</td>
                                                        <td>
                                                            <span
                                                                class="badge bg-secondary rounded-pill">${user.role.name}</span>
                                                        </td>
                                                        <td>${user.email}</td>
                                                        <td>${user.phone}</td>

                                                        <td class="text-center">
                                                            <div class="btn-group shadow-sm" role="group">
                                                                <a href="/admin/users/${user.id}"
                                                                    class="btn btn-sm btn-outline-info"
                                                                    title="View Detail">
                                                                    <i class="fas fa-eye"></i>
                                                                </a>
                                                                <a href="/admin/users/update/${user.id}"
                                                                    class="btn btn-sm btn-outline-warning"
                                                                    title="Edit User">
                                                                    <i class="fas fa-edit"></i>
                                                                </a>
                                                                <a href="/admin/users/delete/${user.id}"
                                                                    class="btn btn-sm btn-outline-danger"
                                                                    title="Delete User"
                                                                    >
                                                                    <i class="fas fa-trash-alt"></i>
                                                                </a>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </c:forEach>

                                                <c:if test="${empty users}">
                                                    <tr>
                                                        <td colspan="7" class="text-center py-4 text-muted">
                                                            <i class="fas fa-box-open fs-2 mb-3 d-block"></i>
                                                            No users found in the database.
                                                        </td>
                                                    </tr>
                                                </c:if>
                                            </tbody>
                                        </table>
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