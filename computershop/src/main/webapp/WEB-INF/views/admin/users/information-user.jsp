<%@page contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Computer Shop - User Information</title>
                <!-- Latest compiled and minified CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

                <!-- Latest compiled JavaScript -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

                <link rel="stylesheet" href="./css/demo.css">
            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-10 col-12 mx-auto">
                            <div class="d-flex justify-content-between align-items-center mb-3">
                                <h2>User Information Of Id: ${id}   </h2>
                                <button class="btn btn-primary"
                                    onclick="window.location.href='/admin/users'">Back</button>
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
            </body>

            </html>