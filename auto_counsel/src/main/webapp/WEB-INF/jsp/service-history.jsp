<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Service History</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Car Servicing History</h2>

        <!-- Remove the fn:length() function -->
        <p>Total Services Found: <span id="serviceCount"></span></p>

        <!-- If the list is empty -->
        <c:if test="${empty previousServices}">
            <div class="alert alert-warning text-center">No previous services found!</div>
        </c:if>

        <!-- If the list has data -->
        <c:if test="${not empty previousServices}">
            <table class="table table-bordered mt-3">
                <thead class="table-dark">
                    <tr>
                        <th>Car Model</th>
                        <th>Car Name</th>
                        <th>Service Type</th>
                        <th>Appointment Date</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody id="serviceTableBody">
                    <c:forEach items="${previousServices}" var="service">
                        <tr>
                            <td> ${service.carModel} </td>
                            <td>${service.carName}</td>
                            <td>${service.serviceType}</td>
                            <td>${service.appointmentDate}</td>
                            <td>${service.status}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>
    </div>
    <script>
        // JavaScript to count the number of table rows dynamically
        document.getElementById("serviceCount").innerText = 
            document.querySelectorAll("#serviceTableBody tr").length;
    </script>
</body>
</html>
