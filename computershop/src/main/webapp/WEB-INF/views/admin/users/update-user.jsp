<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Update User - Computer Shop" />
                <meta name="author" content="TuyenCute" />
                <title>Update User - SB Admin</title>
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
                                $("#avatarPreview").hide().fadeIn(500);
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
                                <h1 class="mt-4 text-warning"><i class="fas fa-user-edit me-2"></i>Update User</h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/users"
                                            class="text-decoration-none">Users List</a></li>
                                    <li class="breadcrumb-item active">Update User</li>
                                </ol>

                                <div class="row mt-4">
                                    <div class="col-xl-10 col-lg-12 mx-auto">
                                        <form:form action="/admin/users/update" method="post" modelAttribute="user"
                                            enctype="multipart/form-data">
                                            <form:hidden path="id" />

                                            <div class="card shadow-sm border-0 rounded-lg mb-5">
                                                <div
                                                    class="card-header bg-dark text-white py-3 d-flex justify-content-between align-items-center">
                                                    <h5 class="mb-0 fw-light"><i class="fas fa-user-cog me-2"></i>Edit
                                                        Information (ID: ${user.id})</h5>
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
                                                                            required="required" />
                                                                    </div>
                                                                </div>

                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold text-muted"
                                                                        for="email">Email Address <i
                                                                            class="fas fa-lock ms-1"
                                                                            title="Cannot change email"></i></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-envelope text-muted"></i></span>
                                                                        <form:input type="email"
                                                                            class="form-control bg-light text-muted"
                                                                            id="email" path="email" readonly="true" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row mb-3">
                                                                <div class="form-group col-md-6 mb-3 mb-md-0">
                                                                    <label class="form-label fw-bold" for="phone">Phone
                                                                        Number <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-phone-alt text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="phone" path="phone"
                                                                            required="required" />
                                                                    </div>
                                                                </div>

                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold" for="role">Role
                                                                        <span class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-user-shield text-muted"></i></span>
                                                                        <form:select class="form-select" id="role"
                                                                            path="role.id" required="required">
                                                                            <form:option value="1" label="User" />
                                                                            <form:option value="2" label="Admin" />
                                                                        </form:select>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="form-group col-12">
                                                                    <label class="form-label fw-bold"
                                                                        for="address">Address <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-map-marker-alt text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="address" path="address"
                                                                            required="required" />
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
                                                                    src="${not empty user.avatar ? '/resources/images/avatar/'.concat(user.avatar) : 'data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23a0aec0%22%3E%3Cpath%20d%3D%22M12%2012c2.21%200%204-1.79%204-4s-1.79-4-4-4-4%201.79-4%204%201.79%204%204%204zm0%202c-2.67%200-8%201.34-8%204v2h16v-2c0-2.66-5.33-4-8-4z%22%2F%3E%3C%2Fsvg%3E'}"
                                                                    class="rounded-circle img-thumbnail shadow-sm bg-light"
                                                                    style="width: 180px; height: 180px; object-fit: cover; ${empty user.avatar ? 'padding: 1.5rem;' : ''}"
                                                                    alt="Current Avatar"
                                                                    onerror="this.src='data:image/svg+xml;charset=UTF-8,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2024%2024%22%20fill%3D%22%23a0aec0%22%3E%3Cpath%20d%3D%22M12%2012c2.21%200%204-1.79%204-4s-1.79-4-4-4-4%201.79-4%204%201.79%204%204%204zm0%202c-2.67%200-8%201.34-8%204v2h16v-2c0-2.66-5.33-4-8-4z%22%2F%3E%3C%2Fsvg%3E'; this.style.padding='1.5rem';" />

                                                                <span
                                                                    class="position-absolute bottom-0 end-0 bg-warning text-dark rounded-circle p-2 shadow-sm"
                                                                    style="cursor: pointer; transform: translate(-10px, -10px);"
                                                                    onclick="document.getElementById('avatarFile').click();">
                                                                    <i class="fas fa-camera"></i>
                                                                </span>
                                                            </div>

                                                            <div class="form-group w-100 px-3 d-none">
                                                                <input type="file" class="form-control"
                                                                    accept=".png, .jpg, .jpeg" id="avatarFile"
                                                                    name="avatarFile" />
                                                            </div>
                                                            <small class="text-muted d-block text-center mt-2">Click the
                                                                camera icon to change avatar.</small>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="card-footer bg-light text-end py-3">
                                                    <a href="/admin/users" class="btn btn-outline-secondary px-4 me-2">
                                                        <i class="fas fa-times me-1"></i> Cancel
                                                    </a>
                                                    <button type="submit"
                                                        class="btn btn-warning px-4 shadow-sm text-dark fw-bold">
                                                        <i class="fas fa-save me-1"></i> Update User
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