<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Delete User - Computer Shop" />
                <meta name="author" content="TuyenCute" />
                <title>Delete User - SB Admin</title>
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
                                <h1 class="mt-4 text-danger"><i class="fas fa-user-minus me-2"></i>Delete User</h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/users"
                                            class="text-decoration-none">Users List</a></li>
                                    <li class="breadcrumb-item active">Delete User</li>
                                </ol>

                                <div class="row mt-5 justify-content-center">
                                    <div class="col-lg-6 col-md-8 col-12">
                                        <div class="card shadow border-danger rounded-lg mb-5">
                                            <div
                                                class="card-header bg-danger text-white py-3 d-flex align-items-center">
                                                <h5 class="mb-0 fw-bold"><i
                                                        class="fas fa-exclamation-triangle me-2"></i>Warning: Action
                                                    Cannot Be Undone!</h5>
                                            </div>

                                            <div class="card-body p-4 text-center">
                                                <div class="mb-4">
                                                    <i class="fas fa-trash-alt text-danger"
                                                        style="font-size: 4rem; opacity: 0.8;"></i>
                                                </div>
                                                <h4 class="mb-3">Are you sure you want to delete this user?</h4>

                                                <div
                                                    class="bg-light p-3 rounded text-start mb-4 d-inline-block shadow-sm">
                                                    <p class="mb-1"><strong>ID:</strong> <span
                                                            class="text-primary">#${user.id}</span></p>
                                                    <p class="mb-1"><strong>Name:</strong> ${user.fullname}</p>
                                                    <p class="mb-0"><strong>Email:</strong> ${user.email}</p>
                                                </div>

                                                <p class="text-muted fst-italic">This will permanently remove the user
                                                    and all associated data from the system.</p>

                                                <form:form action="/admin/users/delete" method="post"
                                                    modelAttribute="user" class="mt-4">
                                                    <form:hidden path="id" />

                                                    <div class="d-flex justify-content-center gap-3">
                                                        <a href="/admin/users"
                                                            class="btn btn-outline-secondary px-4 py-2">
                                                            <i class="fas fa-arrow-left me-1"></i> Cancel & Go Back
                                                        </a>
                                                        <button type="submit"
                                                            class="btn btn-danger px-4 py-2 fw-bold shadow-sm">
                                                            <i class="fas fa-trash-alt me-1"></i> Yes, Delete User
                                                        </button>
                                                    </div>
                                                </form:form>
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