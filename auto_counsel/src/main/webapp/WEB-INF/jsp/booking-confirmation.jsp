<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<%@ include file="common/navbar.jspf" %>
<style>
    .custom-color {
        background-color: #686868c7;
        color: white;
    }

    .buttons {
        display: flex;
        justify-content: space-evenly;
        gap: 10px;
    }

    .btn-custom {
        background-color: #f99c32;
        display: flex;
        align-items: center;
        min-height: 50px;
        color: white;
        &:not(.disable):hover {
            background-color: #f99c32;
        }
    }

    p {
        font-size: larger;
    }
</style>

<body>
    <div class="container">
        <div class="row">
            <div class="col-10 col-md-8 offset-1 offset-md-2 mt-5 rounded custom-form pb-5 pt-5 shadow-lg custom-color">
                <div class="border border-light rounded p-4">
                    <h2 class="mb-4 text-center">Service Booking Confirmation</h2>
                    <strong>${message}</strong>
                    <p><strong>Car Model:</strong> ${carModel}</p>
                    <p><strong>Car Name:</strong> ${carName}</p>
                    <p><strong>Service Type:</strong> ${serviceType}</p>
                    <p><strong>Appointment Date:</strong>
                        <fmt:formatDate value="${appointmentDate}" pattern="yyyy-MM-dd" var="formattedDate" />
                        ${appointmentDate}
                    </p>
                    <p><strong>Garage:</strong> ${garage}</p>
                    <div class="buttons">
                        <a href="/carsService/book-service" class="btn btn-custom">Book Another Service</a>
                        <a href="/auth/dashboard" class="btn btn-custom">Back to Dashboard</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>