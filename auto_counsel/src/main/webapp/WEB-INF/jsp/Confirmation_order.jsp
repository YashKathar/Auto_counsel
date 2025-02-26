<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


            <!DOCTYPE html>
            <html>

            <head>
                <title>Sell Confirmation</title>
                <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
            </head>

            <body>

                <div class="container mt-5">
                    <h2 class="text-center mb-4">Booking Confirmed</h2>

                    <%-- <c:if test="${not empty message}">
                        <div class="alert alert-success" role="alert">
                            ${message}
                        </div>
                        </c:if> --%>

                        <div class="row justify-content-center">
                            <div class="col-md-6">
                                <div class="card shadow-lg">
                                    <div class="card-header text-center bg-primary text-white">
                                        <h4>Order Details</h4>
                                    </div>
                                    <div class="card-body">
                                        <h2>Buyer</h2>
                                        <h4>Name : ${order.firstName} ${order.lastName}</h4>
                                        <h4>Contact Number : ${order.contactNumber}</h4>
                                        <ul class="list-group list-group-flush mt-3">
                                            <li class="list-group-item"><strong>Model:</strong> ${order.car.carModel}
                                            </li>
                                            <li class="list-group-item"><strong>Name:</strong> ${order.car.carName}</li>
                                            <li class="list-group-item"><strong>Year:</strong> ${order.car.year}</li>
                                            <li class="list-group-item"><strong>Price:</strong> &#8377;
                                                <fmt:formatNumber value="${order.car.price}" type="number"
                                                    minFractionDigits="4" maxFractionDigits="2" />
                                            </li>
                                            <li class="list-group-item"><strong>Fuel Type:</strong>
                                                ${order.car.fuelType}</li>
                                            <li class="list-group-item"><strong>Contact:</strong>
                                                ${order.car.contactNumber}</li>
                                        </ul>
                                    </div>
                                    <div class="card-footer text-center">
                                        <a href="<c:url value='/auth/dashboard' />" class="btn btn-success">Home
                                            Page</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>

                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
            </body>

            </html>