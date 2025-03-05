<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">
        <%@ include file="common/navbar.jspf" %>

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Book Car Service</title>

                <!-- Bootstrap CSS -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
                    crossorigin="anonymous">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0-beta2/css/bootstrap-select.min.css"
                    integrity="sha512-mR/b5Y7FRsKqrYZou7uysnOdCIJib/7r5QeJMFvLNHNhtye3xJp1TdJVPLtetkukFn227nKpXD9OjUc09lx97Q=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />
                <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
                    integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
                    crossorigin="anonymous" referrerpolicy="no-referrer" />

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

                .selected-options {
                    display: flex;
                    flex-wrap: wrap;
                    gap: 5px;
                    margin-bottom: 10px;
                }

                .tag {
                    background-color: #ffffff;
                    color: rgb(0, 0, 0);
                    padding: 5px 10px;
                    border-radius: 15px;
                    display: flex;
                    align-items: center;
                }

                .tag span {
                    margin-left: 8px;
                    cursor: pointer;
                    font-weight: bold;
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

                                <!-- Garage -->
                                <%-- <div class="mb-3">
                                    <!-- <label for="garage" class="form-label">Garage</label> -->
                                    <select name="garage" class="form-control input-height" id="garage" required
                                        aria-label="garage">
                                        <option value="">Select Garage</option>
                                        <c:forEach items="${garages}" var="garage">
                                            <option value="${garage.id}">${garage.garageName}</option>
                                        </c:forEach>
                                    </select>
                                </div> --%>

                                <!-- Service Type -->
                                <div class="mb-3">
                                    <div class="selected-options" id="selectedOptions"></div>

                                    <div class="dropdown">
                                        <button class="btn btn-light dropdown-toggle w-100 input-height" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Select Service
                                        </button>
                                        <ul class="dropdown-menu service-selector" id="dropdownMenu">
                                            <c:forEach var="item" items="${services}">
                                                <li><a class="dropdown-item" href="#"
                                                        onclick="selectOption('${item.serviceName}')">${item.serviceName}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>


                                <!-- Appointment Date -->
                                <div class="mb-3">
                                    <!-- <label for="appointmentDate" class="form-label">Appointment Date</label> -->
                                    <input type="date" name="appointmentDate" class="form-control input-height"
                                        id="appointmentDate" required aria-label="Appointment Date">
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn submit-btn w-100 border border-light">Book
                                    Service</button>
                            </form>
                        </div>
                    </div>

                </div>

                <%@ include file="common/footer.jspf" %>

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

                        const selectedOptions = [];

                        function selectOption(option) {
                            if (!selectedOptions.includes(option)) {
                                selectedOptions.push(option);
                                updateSelectedOptions();
                            }
                        }

                        function updateSelectedOptions() {
                            const selectedOptionsContainer = document.getElementById("selectedOptions");
                            selectedOptionsContainer.innerHTML = "";

                            selectedOptions.forEach(option => {
                                const tag = document.createElement("div");
                                tag.classList.add("tag");
                                tag.innerHTML = option + `<span onclick="removeOption('` + option + `')">&times;</span>`;
                                console.log(option);
                                selectedOptionsContainer.appendChild(tag);
                            });
                        }

                        function removeOption(option) {
                            const index = selectedOptions.indexOf(option);
                            if (index !== -1) {
                                selectedOptions.splice(index, 1);
                                updateSelectedOptions();
                            }
                        }

                        $(document).ready(function () {
                            $('.selectpicker').selectpicker();
                        });
                    </script>
                    <!-- Bootstrap JS -->
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
                    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
                        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
                        crossorigin="anonymous"></script>
                    <script
                        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0-beta2/js/bootstrap-select.min.js"
                        integrity="sha512-FHZVRMUW9FsXobt+ONiix6Z0tIkxvQfxtCSirkKc5Sb4TKHmqq1dZa8DphF0XqKb3ldLu/wgMa8mT6uXiLlRlw=="
                        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            </body>

        </html>