<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Computer Shop - Create User</title>
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
            <div class="col-md-6 col-12 mx-auto">
                <h1 class="text-center">Create a user</h1>
                <hr>
                <form:form action="/admin/users/create" method="post" modelAttribute="user">
                    <div class="form-group">
                        <label class="form-label" for="email">Email:</label>
                        <form:input type="email" class="form-control" id="email" name="email" path="email" required="required"/>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="fullname">Full Name:</label>
                        <form:input type="text" class="form-control" id="fullname" name="fullname" path="fullname" required="required"/>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="password">Password:</label>
                        <form:input type="password" class="form-control" id="password" name="password" path="password" required="required"/>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="address">Address:</label>
                        <form:input type="text" class="form-control" id="address" name="address" path="address" required="required"/>
                    </div>
                    <div class="form-group">
                        <label class="form-label" for="phone">Phone:</label>
                        <form:input type="text" class="form-control" id="phone" name="phone" path="phone" required="required"/>
                    </div>
                    <div class="form-group d-flex justify-content-between">
                        <a href="/admin/users" class="btn btn-secondary mt-3">Back</a>
                        <button type="submit" class="btn btn-primary mt-3">Create User</button>
                    </div>
                </form:form>
                <!-- <c:if test="${not empty successMessage}">
                    <div class="alert alert-success mt-3" role="alert">
                        ${successMessage}
                    </div>
                </c:if> -->
            </div>
        </div>
    </div>
</body>
</html>