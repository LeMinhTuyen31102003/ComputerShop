<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Create User - Computer Shop" />
                <meta name="author" content="TuyenCute" />
                <title>Create User - SB Admin</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                        const avatarFile = $("#avatarFile");
                        avatarFile.change(function (e) {
                            if (e.target.files && e.target.files[0]) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").hide().fadeIn(500); // Hiệu ứng mờ dần cho đẹp
                            }
                        });
                    });
                </script>
            </head>

            <body class="sb-nav-fixed">
                <jsp:include page="../layout/header.jsp" />

                <div id="layoutSidenav">
                    <jsp:include page="../layout/sidebar.jsp" />

                    <div id="layoutSidenav_content">
                        <main>
                            <div class="container-fluid px-4">
                                <h1 class="mt-4 text-primary"><i class="fas fa-user-plus me-2"></i>Create New User</h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/users"
                                            class="text-decoration-none">Users List</a></li>
                                    <li class="breadcrumb-item active">Create User</li>
                                </ol>

                                <div class="row mt-4">
                                    <div class="col-xl-10 col-lg-12 mx-auto">
                                        <form:form action="/admin/users/create" method="post" modelAttribute="user"
                                            enctype="multipart/form-data">

                                            <div class="card shadow-sm border-0 rounded-lg mb-5">
                                                <div class="card-header bg-dark text-white py-3">
                                                    <h5 class="mb-0 fw-light"><i
                                                            class="fas fa-info-circle me-2"></i>User Information</h5>
                                                </div>

                                                <div class="card-body p-4">
                                                    <div class="row">
                                                        <div class="col-lg-8 border-end pe-lg-4">
                                                            <div class="row mb-3">
                                                                <div class="form-group col-md-6 mb-3 mb-md-0">
                                                                    <label class="form-label fw-bold"
                                                                        for="fullname">Full Name <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-user text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="fullname" path="fullname"
                                                                            required="required"
                                                                            placeholder="Enter full name" />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold" for="email">Email
                                                                        Address <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-envelope text-muted"></i></span>
                                                                        <form:input type="email" class="form-control"
                                                                            id="email" path="email" required="required"
                                                                            placeholder="name@example.com" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row mb-3">
                                                                <div class="form-group col-md-6 mb-3 mb-md-0">
                                                                    <label class="form-label fw-bold"
                                                                        for="password">Password <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-lock text-muted"></i></span>
                                                                        <form:input type="password" class="form-control"
                                                                            id="password" path="password"
                                                                            required="required"
                                                                            placeholder="Create a password" />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold" for="phone">Phone
                                                                        Number <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-phone-alt text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="phone" path="phone" required="required"
                                                                            placeholder="Enter phone number" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold" for="role">Role
                                                                        <span class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-user-shield text-muted"></i></span>
                                                                        <form:select class="form-select" id="role"
                                                                            path="role.id" required="required">
                                                                            <form:option value="" label="Select Role..."
                                                                                disabled="true" selected="true" />
                                                                            <form:option value="1" label="User" />
                                                                            <form:option value="2" label="Admin" />
                                                                        </form:select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold" for="address">Address <span class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i class="fas fa-map-marker-alt text-muted"></i></span>
                                                                        <form:input type="text" class="form-control" id="address" path="address" required="required"
                                                                            placeholder="Enter detailed address" />
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div
                                                            class="col-lg-4 d-flex flex-column align-items-center justify-content-center mt-4 mt-lg-0">
                                                            <label
                                                                class="form-label fw-bold text-center w-100 mb-3">Profile
                                                                Picture</label>

                                                            <div class="mb-4 position-relative">
                                                                <img id="avatarPreview"
                                                                    src="https://via.placeholder.com/180x180?text=Upload+Avatar"
                                                                    class="rounded-circle img-thumbnail shadow-sm"
                                                                    style="width: 180px; height: 180px; object-fit: cover;"
                                                                    alt="Avatar Preview" />
                                                            </div>

                                                            <div class="form-group w-100 px-3">
                                                                <input type="file" class="form-control form-control-sm"
                                                                    accept=".png, .jpg, .jpeg" id="avatarFile"
                                                                    name="avatarFile" />
                                                                <small
                                                                    class="text-muted d-block text-center mt-2">Accepted:
                                                                    .jpg, .png, .jpeg</small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="card-footer bg-light text-end py-3">
                                                    <a href="/admin/users" class="btn btn-outline-secondary px-4 me-2">
                                                        <i class="fas fa-times me-1"></i> Cancel
                                                    </a>
                                                    <button type="submit" class="btn btn-primary px-4 shadow-sm">
                                                        <i class="fas fa-save me-1"></i> Save User
                                                    </button>
                                                </div>
                                            </div>

                                        </form:form>
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