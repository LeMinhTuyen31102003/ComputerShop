<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Create Product - Computer Shop" />
                <meta name="author" content="TuyenCute" />
                <title>Create Product - SB Admin</title>
                <link href="/css/styles.css" rel="stylesheet" />
                <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <script>
                    $(document).ready(() => {
                        const imageFile = $("#imageFile");
                        imageFile.change(function (e) {
                            if (e.target.files && e.target.files[0]) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#imagePreview").attr("src", imgURL);
                                $("#imagePreview").hide().fadeIn(500); // Hiệu ứng mờ dần
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
                                <h1 class="mt-4 text-primary"><i class="fas fa-box-open me-2"></i>Create New Product
                                </h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item"><a href="/admin/products"
                                            class="text-decoration-none">Products List</a></li>
                                    <li class="breadcrumb-item active">Create Product</li>
                                </ol>

                                <div class="row mt-4">
                                    <div class="col-xl-10 col-lg-12 mx-auto">
                                        <form:form action="/admin/products/create" method="post"
                                            modelAttribute="product" enctype="multipart/form-data">

                                            <div class="card shadow-sm border-0 rounded-lg mb-5">
                                                <div class="card-header bg-dark text-white py-3">
                                                    <h5 class="mb-0 fw-light"><i
                                                            class="fas fa-info-circle me-2"></i>Product Information</h5>
                                                </div>

                                                <div class="card-body p-4">
                                                    <div class="row">
                                                        <div class="col-lg-8 border-end pe-lg-4">

                                                            <div class="row mb-3">
                                                                <div class="form-group col-12">
                                                                    <label class="form-label fw-bold" for="name">Product
                                                                        Name <span class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-laptop text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="name" path="name" required="required"
                                                                            placeholder="Enter product name (e.g., Asus ROG Strix)" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row mb-3">
                                                                <div class="form-group col-md-6 mb-3 mb-md-0">
                                                                    <label class="form-label fw-bold"
                                                                        for="factory">Factory / Brand <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-industry text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="factory" path="factory"
                                                                            required="required"
                                                                            placeholder="e.g., Dell, Asus, Apple" />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold"
                                                                        for="target">Target <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-bullseye text-muted"></i></span>
                                                                        <form:input type="text" class="form-control"
                                                                            id="target" path="target"
                                                                            required="required"
                                                                            placeholder="e.g., Gaming, Office, Student" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row mb-3">
                                                                <div class="form-group col-md-6 mb-3 mb-md-0">
                                                                    <label class="form-label fw-bold" for="price">Price
                                                                        ($) <span class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-dollar-sign text-muted"></i></span>
                                                                        <form:input type="number" step="0.01" min="0"
                                                                            class="form-control" id="price" path="price"
                                                                            required="required" placeholder="0.00" />
                                                                    </div>
                                                                </div>
                                                                <div class="form-group col-md-6">
                                                                    <label class="form-label fw-bold"
                                                                        for="quantity">Stock Quantity <span
                                                                            class="text-danger">*</span></label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-cubes text-muted"></i></span>
                                                                        <form:input type="number" min="0"
                                                                            class="form-control" id="quantity"
                                                                            path="quantity" required="required"
                                                                            placeholder="0" />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row mb-3">
                                                                <div class="form-group col-12">
                                                                    <label class="form-label fw-bold"
                                                                        for="shortDesc">Short Description</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-align-left text-muted"></i></span>
                                                                        <form:textarea class="form-control"
                                                                            id="shortDesc" path="shortDesc" rows="3"
                                                                            placeholder="Brief summary of the product..." />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="row">
                                                                <div class="form-group col-12">
                                                                    <label class="form-label fw-bold"
                                                                        for="detailDesc">Detailed Description</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-text bg-light"><i
                                                                                class="fas fa-file-alt text-muted"></i></span>
                                                                        <form:textarea class="form-control"
                                                                            id="detailDesc" path="detailDesc" rows="6"
                                                                            placeholder="Full specifications and detailed features..." />
                                                                    </div>
                                                                </div>
                                                            </div>

                                                        </div>

                                                        <div
                                                            class="col-lg-4 d-flex flex-column align-items-center justify-content-start mt-4 mt-lg-0 pt-3">
                                                            <label
                                                                class="form-label fw-bold text-center w-100 mb-3">Product
                                                                Image</label>

                                                            <div class="mb-4 position-relative w-100 text-center">
                                                                <img id="imagePreview"
                                                                    src="https://via.placeholder.com/300x300?text=Upload+Product+Image"
                                                                    class="rounded img-thumbnail shadow-sm"
                                                                    style="width: 100%; max-width: 250px; height: 250px; object-fit: contain; background-color: #f8f9fa;"
                                                                    alt="Image Preview" />
                                                            </div>

                                                            <div class="form-group w-100 px-3">
                                                                <input type="file" class="form-control form-control-sm"
                                                                    accept=".png, .jpg, .jpeg" id="imageFile"
                                                                    name="imageFile" required="required" />
                                                                <small
                                                                    class="text-muted d-block text-center mt-2">Accepted
                                                                    formats: .jpg, .png, .jpeg <br> Suggested ratio:
                                                                    1:1</small>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="card-footer bg-light text-end py-3">
                                                    <a href="/admin/products"
                                                        class="btn btn-outline-secondary px-4 me-2">
                                                        <i class="fas fa-times me-1"></i> Cancel
                                                    </a>
                                                    <button type="submit" class="btn btn-primary px-4 shadow-sm">
                                                        <i class="fas fa-save me-1"></i> Save Product
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