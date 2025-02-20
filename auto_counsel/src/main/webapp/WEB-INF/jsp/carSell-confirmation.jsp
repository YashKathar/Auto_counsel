<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Sell Confirmation</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center mb-4">Car Listed Successfully!</h2>

   <%--  <c:if test="${not empty message}">
        <div class="alert alert-success" role="alert">
            ${message}
        </div>
    </c:if> --%>

    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg">
                <div class="card-header text-center bg-primary text-white">
                    <h4>Your Car Details</h4>
                </div>
                <div class="card-body">
                    <div class="text-center">
                    
                       <%-- <img src="${resource}" class="img-fluid rounded" alt="Car Image" style="max-height: 200px;"> --%>
                       <img src="data:image/jpeg;base64,${resource}" 
     class="img-fluid rounded" alt="Car Image" style="max-height: 200px;">

                       
                    </div>
                    <ul class="list-group list-group-flush mt-3">
                        <li class="list-group-item"><strong>Model:</strong> ${sellCar.carModel}</li>
                        <li class="list-group-item"><strong>Name:</strong> ${sellCar.carName}</li>
                        <li class="list-group-item"><strong>Year:</strong> ${sellCar.year}</li>
                        <li class="list-group-item"><strong>Price:</strong> &#8377;${sellCar.price}</li>
                        <li class="list-group-item"><strong>Fuel Type:</strong> ${sellCar.fuelType}</li>
                        <li class="list-group-item"><strong>Contact:</strong> ${sellCar.contactNumber}</li>
                    </ul>
                </div>
                <div class="card-footer text-center">
                    <a href="<c:url value='/auth/dashboard' />" class="btn btn-success">View All Listings</a>
                    <a href="<c:url value='/cars/sellCar' />" class="btn btn-primary">Sell Another Car</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
