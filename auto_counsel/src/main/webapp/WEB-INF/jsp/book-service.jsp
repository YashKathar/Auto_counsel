<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Book Car Service</title>

            <!-- Bootstrap CSS -->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

            <!-- FontAwesome for Icons -->
            <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
        </head>

        <style>
            .custom-form {
                background-color: #686868c7;
                color: white;
            }

            .input-height {
                height: 50px;
            }

            .submit-btn {
                background-color: #f99c32;
                color: white;
                &:not(.disable):hover {
                    background-color: #f99c32;
                }
            }
        </style>

        <body>
            <div class="container">
                <div class="row">
                    <div class="col-10 col-md-8 offset-1 offset-md-2 mt-5 rounded custom-form pb-5 pt-5 shadow-lg">
                        <h2 class="text-center"><i class="fas fa-car"></i> Book a Car Service</h2>
                        <form id="carServiceForm" action="/carsService/book" method="post"
                            class="mt-3 border border-light rounded p-4">

                            <!-- Car Model -->
                            <div class="mb-3">
                                <!-- <label for="carModel" class="form-label">Car Model</label> -->
                                <input type="text" name="carModel" class="form-control input-height" id="carModel"
                                    placeholder="Enter car model" required aria-label="Car Model">
                            </div>

                            <!-- Car Name -->
                            <div class="mb-3">
                                <!-- <label for="carName" class="form-label">Car Name</label> -->
                                <input type="text" name="carName" class="form-control input-height" id="carName"
                                    placeholder="Enter car name" required aria-label="Car Name">
                            </div>

                            <!-- Service Type -->
                            <div class="mb-3">
                                <!-- <label for="serviceType" class="form-label">Service Type</label> -->
                                <select name="serviceType" class="form-control input-height" id="serviceType" required
                                    aria-label="Service Type">
                                    <option value="">Select Service Type</option>
                                    <option value="Oil Change">Oil Change</option>
                                    <option value="Engine Checkup">Engine Checkup</option>
                                    <option value="Brake Service">Brake Service</option>
                                    <option value="Tire Replacement">Tire Replacement</option>
                                    <option value="AC Repair">AC Repair</option>
                                </select>
                            </div>

                            <div class="mb-3">
                                <!-- <label for="garage" class="form-label">Garage</label> -->
                                <select name="garage" class="form-control input-height" id="garage" required
                                    aria-label="garage">
                                    <c:forEach items="${garages}" var="garage">
                                        <option value="${garage.id}">${garage.garageName}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <!-- Appointment Date -->
                            <div class="mb-3">
                                <!-- <label for="appointmentDate" class="form-label">Appointment Date</label> -->
                                <input type="date" name="appointmentDate" class="form-control input-height"
                                    id="appointmentDate" required aria-label="Appointment Date">
                            </div>

                            <!-- Status -->
                            <!-- <div class="mb-3">
                                <label for="status" class="form-label">Status</label>
                                <select name="status" class="form-control" id="status" required aria-label="Service Status">
                                    <option value="">Select Status</option>
                                    <option value="Pending">Pending</option>
                                    <option value="Confirmed">Confirmed</option>
                                    <option value="Completed">Completed</option>
                                </select>
                            </div> -->

                            <!-- Submit Button -->
                            <button type="submit" class="btn submit-btn w-100 border border-light">Book Service</button>
                        </form>
                    </div>
                </div>

            </div>

            <script>
                // Set min date for appointment
                document.getElementById('appointmentDate').min = new Date().toISOString().split('T')[0];

                // Form validation
                document.getElementById('carServiceForm').addEventListener('submit', function (event) {
                    let carModel = document.getElementById('carModel').value.trim();
                    let carName = document.getElementById('carName').value.trim();
                    let serviceType = document.getElementById('serviceType').value;
                    let appointmentDate = document.getElementById('appointmentDate').value;
                    let status = document.getElementById('status').value;

                    if (!carModel || !carName || !serviceType || !appointmentDate || !status) {
                        alert('Please fill out all required fields.');
                        event.preventDefault();
                    }
                });
            </script>
            <!-- Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>