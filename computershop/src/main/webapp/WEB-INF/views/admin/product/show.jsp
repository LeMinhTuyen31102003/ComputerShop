<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="utf-8" />
                <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <meta name="description" content="Manage Products - Computer Shop" />
                <meta name="author" content="TuyenCute" />
                <title>Manage Products - SB Admin</title>
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
                                <h1 class="mt-4 text-primary"><i class="fas fa-laptop me-2"></i>Manage Products</h1>

                                <ol class="breadcrumb mb-4 bg-light p-2 rounded">
                                    <li class="breadcrumb-item"><a href="/admin"
                                            class="text-decoration-none">Dashboard</a></li>
                                    <li class="breadcrumb-item active">Products List</li>
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
                                        <h5 class="mb-0 fw-light"><i class="fas fa-table me-1"></i> Product Data Table
                                        </h5>
                                        <button class="btn btn-primary btn-sm shadow-sm"
                                            onclick="window.location.href='/admin/products/create'">
                                            <i class="fas fa-plus-circle me-1"></i> Add New Product
                                        </button>
                                    </div>

                                    <div class="card-body p-0">
                                        <div class="table-responsive">
                                            <table class="table table-hover table-striped align-middle mb-0">
                                                <thead class="table-light">
                                                    <tr>
                                                        <th class="ps-4">ID</th>
                                                        <th>Image</th>
                                                        <th>Product Name</th>
                                                        <th>Brand/Target</th>
                                                        <th>Price</th>
                                                        <th>Stock / Sold</th>
                                                        <th class="text-center">Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach var="product" items="${products}">
                                                        <tr>
                                                            <td class="ps-4 fw-bold text-muted">#${product.id}</td>
                                                            <td>
                                                                <img src="/resources/images/products/${product.imageUrl}"
                                                                    class="rounded shadow-sm"
                                                                    style="width: 50px; height: 50px; object-fit: cover;"
                                                                    alt="Product Image"
                                                                    onerror="this.src='https://via.placeholder.com/50x50?text=No+Img';">
                                                            </td>
                                                            <td class="fw-medium">
                                                                ${product.name}
                                                            </td>
                                                            <td>
                                                                <span
                                                                    class="badge bg-info text-dark rounded-pill mb-1 d-block w-75">${product.factory}</span>
                                                                <span
                                                                    class="badge bg-secondary rounded-pill d-block w-75">${product.target}</span>
                                                            </td>
                                                            <td class="text-danger fw-bold">
                                                                <fmt:formatNumber value="${product.price}"
                                                                    type="currency" currencySymbol="$" />
                                                            </td>
                                                            <td>
                                                                <c:choose>
                                                                    <c:when test="${product.quantity > 0}">
                                                                        <span
                                                                            class="text-success fw-bold">${product.quantity}</span>
                                                                        in stock
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="text-danger fw-bold"><i
                                                                                class="fas fa-exclamation-triangle"></i>
                                                                            Out of Stock</span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                                <br>
                                                                <small class="text-muted">Sold: ${product.sold}</small>
                                                            </td>

                                                            <td class="text-center">
                                                                <div class="btn-group shadow-sm" role="group">
                                                                    <a href="/admin/products/${product.id}"
                                                                        class="btn btn-sm btn-outline-info"
                                                                        title="View Detail">
                                                                        <i class="fas fa-eye"></i>
                                                                    </a>
                                                                    <a href="/admin/products/update/${product.id}"
                                                                        class="btn btn-sm btn-outline-warning"
                                                                        title="Edit Product">
                                                                        <i class="fas fa-edit"></i>
                                                                    </a>
                                                                    <a href="/admin/products/delete/${product.id}"
                                                                        class="btn btn-sm btn-outline-danger"
                                                                        title="Delete Product"
                                                                        onclick="return confirm('Are you sure you want to delete product: ${product.name}?');">
                                                                        <i class="fas fa-trash-alt"></i>
                                                                    </a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </c:forEach>

                                                    <c:if test="${empty products}">
                                                        <tr>
                                                            <td colspan="7" class="text-center py-5 text-muted">
                                                                <i class="fas fa-box-open fs-1 mb-3 d-block"></i>
                                                                No products found in the database. <br>
                                                                Click "Add New Product" to start selling!
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