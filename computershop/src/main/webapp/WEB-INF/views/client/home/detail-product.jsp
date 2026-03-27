<%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="Product Detail - Computer Shop" />
        <meta name="author" content="TuyenCute" />
        <title>Asus ROG Strix G15 - Computer Shop</title>
        <link rel="icon" type="image/x-icon" href="/client/assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link href="/client/css/styles.css" rel="stylesheet" />
        <style>
            .quantity-input {
                max-width: 4.5rem;
                text-align: center;
            }

            .product-img {
                object-fit: cover;
                max-height: 500px;
                width: 100%;
            }

            .nav-tabs .nav-link.active {
                border-top: 3px solid #212529;
                color: #212529 !important;
                font-weight: bold;
            }

            .nav-tabs .nav-link {
                color: #6c757d;
            }
        </style>
    </head>

    <body>
        <jsp:include page="../layout/header.jsp" />

        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <nav aria-label="breadcrumb" class="mb-4">
                    <ol class="breadcrumb bg-light p-3 rounded shadow-sm">
                        <li class="breadcrumb-item"><a href="/" class="text-decoration-none text-dark">Home</a></li>
                        <li class="breadcrumb-item"><a href="#" class="text-decoration-none text-dark">Laptops</a></li>
                        <li class="breadcrumb-item"><a href="#" class="text-decoration-none text-dark">Gaming</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Asus ROG Strix G15</li>
                    </ol>
                </nav>

                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6 text-center mb-5 mb-md-0">
                        <div class="card border-0 shadow-sm">
                            <img class="card-img-top product-img rounded"
                                src="https://images.unsplash.com/photo-1603302576837-37561b2e2302?auto=format&fit=crop&w=800&q=80"
                                alt="Asus ROG Laptop" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="small mb-1 text-muted">SKU: ROG-G15-2026</div>
                        <h1 class="display-5 fw-bolder mb-2">Asus ROG Strix G15 Gaming Laptop</h1>

                        <div class="d-flex align-items-center mb-3">
                            <div class="fs-4 me-3">
                                <span class="text-muted text-decoration-line-through me-2">$1,499.00</span>
                                <span class="text-danger fw-bold">$1,299.00</span>
                            </div>
                            <div class="small text-warning">
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-fill"></i>
                                <i class="bi-star-half"></i>
                                <span class="text-muted ms-1">(4.5/5 from 128 reviews)</span>
                            </div>
                        </div>

                        <div class="mb-4">
                            <span class="badge bg-success px-3 py-2 fs-6"><i class="bi bi-check-circle me-1"></i>In
                                Stock (12 available)</span>
                        </div>

                        <p class="lead text-muted mb-4">
                            Dominate the battlefield with the Asus ROG Strix G15. Featuring the latest AMD Ryzen™ 9
                            processor and an NVIDIA® GeForce RTX™ 4070 GPU, this machine delivers ultra-smooth frame
                            rates for competitive esports and AAA titles.
                        </p>

                        <div class="d-flex align-items-center mt-4 p-3 bg-light rounded shadow-sm">
                            <label for="inputQuantity" class="me-2 fw-bold">Qty:</label>
                            <input class="form-control quantity-input me-3 border-dark" id="inputQuantity" type="number"
                                value="1" min="1" max="12" />

                            <button class="btn btn-outline-dark flex-shrink-0 me-2 px-4 py-2" type="button">
                                <i class="bi-cart-plus-fill me-1"></i> Add to cart
                            </button>

                            <button class="btn btn-danger flex-shrink-0 px-4 py-2" type="button">
                                Buy Now
                            </button>
                        </div>

                        <ul class="list-unstyled mt-4 border-top pt-4">
                            <li class="mb-2"><i class="bi bi-truck text-primary me-2 fs-5"></i> Free express shipping on
                                orders over $500</li>
                            <li class="mb-2"><i class="bi bi-shield-check text-success me-2 fs-5"></i> 2 Years Official
                                Asus Warranty</li>
                            <li><i class="bi bi-arrow-counterclockwise text-danger me-2 fs-5"></i> 30 Days Money-back
                                Guarantee</li>
                        </ul>
                    </div>
                </div>

                <div class="row mt-5 pt-4">
                    <div class="col-12">
                        <ul class="nav nav-tabs" id="productTab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active fs-5" id="description-tab" data-bs-toggle="tab"
                                    data-bs-target="#description" type="button" role="tab" aria-controls="description"
                                    aria-selected="true">Product Description</button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link fs-5" id="specs-tab" data-bs-toggle="tab"
                                    data-bs-target="#specs" type="button" role="tab" aria-controls="specs"
                                    aria-selected="false">Specifications</button>
                            </li>
                        </ul>
                        <div class="tab-content border border-top-0 p-4 bg-white shadow-sm" id="productTabContent">
                            <div class="tab-pane fade show active" id="description" role="tabpanel"
                                aria-labelledby="description-tab">
                                <h4 class="mb-3">Unleash Your Gaming Potential</h4>
                                <p>The ROG Strix G15 embodies streamlined design, offering a formidable core experience
                                    for serious gaming and multitasking on Windows 11. Featuring up to the latest AMD
                                    Ryzen™ 9 CPU and an NVIDIA® GeForce RTX™ GPU, it offers high-FPS power that takes
                                    full advantage of up to a blazing fast 240Hz/3ms display.</p>
                                <p>Intelligent Cooling innovations like liquid metal compound on the CPU take
                                    performance to another level. Ultrafast Wi-Fi 6E connectivity and up to 2 SSDs
                                    running in RAID 0 accelerate work and play.</p>
                            </div>
                            <div class="tab-pane fade" id="specs" role="tabpanel" aria-labelledby="specs-tab">
                                <table class="table table-striped table-hover mb-0">
                                    <tbody>
                                        <tr>
                                            <th scope="row" style="width: 250px;">Brand</th>
                                            <td>ASUS</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Series</th>
                                            <td>ROG Strix G15</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Processor (CPU)</th>
                                            <td>AMD Ryzen™ 9 7945HX Mobile Processor</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Graphics (VGA)</th>
                                            <td>NVIDIA® GeForce RTX™ 4070 Laptop GPU 8GB GDDR6</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Memory (RAM)</th>
                                            <td>32GB DDR5-4800 SO-DIMM</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Storage (SSD)</th>
                                            <td>1TB PCIe® 4.0 NVMe™ M.2 Performance SSD</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Display</th>
                                            <td>15.6-inch WQHD (2560 x 1440) 16:9, 240Hz, IPS-level</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Operating System</th>
                                            <td>Windows 11 Home</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-4">
                <h2 class="fw-bolder mb-4 border-bottom pb-2">Customers also bought</h2>
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                    <div class="col mb-5">
                        <div class="card h-100 border-0 shadow-sm product-card-hover">
                            <div class="badge bg-danger text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <img class="card-img-top"
                                src="https://images.unsplash.com/photo-1593640408182-31c70c8268f5?auto=format&fit=crop&w=450&h=300&q=80"
                                alt="Dell XPS" style="height: 200px; object-fit: cover;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Dell XPS 15</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <span class="text-muted text-decoration-line-through">$1,800.00</span>
                                    <span class="text-danger fw-bold">$1,599.00</span>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto w-100" href="#">View
                                        Details</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 border-0 shadow-sm product-card-hover">
                            <img class="card-img-top"
                                src="https://images.unsplash.com/photo-1525547719571-a2d4ac8945e2?auto=format&fit=crop&w=450&h=300&q=80"
                                alt="MacBook Pro" style="height: 200px; object-fit: cover;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">MacBook Pro 14" M3</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-half"></div>
                                    </div>
                                    <span class="fw-bold">$1,999.00</span>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto w-100" href="#">View
                                        Details</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 border-0 shadow-sm product-card-hover">
                            <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                                Hot</div>
                            <img class="card-img-top"
                                src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=450&h=300&q=80"
                                alt="MacBook Air" style="height: 200px; object-fit: cover;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">MacBook Air M2</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    <span class="fw-bold">$1,099.00</span>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto w-100" href="#">View
                                        Details</a></div>
                            </div>
                        </div>
                    </div>

                    <div class="col mb-5">
                        <div class="card h-100 border-0 shadow-sm product-card-hover">
                            <div class="badge bg-danger text-white position-absolute"
                                style="top: 0.5rem; right: 0.5rem">Sale</div>
                            <img class="card-img-top"
                                src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=450&h=300&q=80"
                                alt="Lenovo ThinkPad" style="height: 200px; object-fit: cover;" />
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <h5 class="fw-bolder">Lenovo ThinkPad X1</h5>
                                    <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star"></div>
                                    </div>
                                    <span class="text-muted text-decoration-line-through">$1,650.00</span>
                                    <span class="text-danger fw-bold">$1,450.00</span>
                                </div>
                            </div>
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto w-100" href="#">View
                                        Details</a></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <jsp:include page="../layout/footer.jsp" />

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="/client/js/scripts.js"></script>
    </body>

    </html>