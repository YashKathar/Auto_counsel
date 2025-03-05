<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Book Car Service</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
                crossorigin="anonymous">
            <link rel="stylesheet"
                href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0-beta2/css/bootstrap-select.min.css"
                integrity="sha512-mR/b5Y7FRsKqrYZou7uysnOdCIJib/7r5QeJMFvLNHNhtye3xJp1TdJVPLtetkukFn227nKpXD9OjUc09lx97Q=="
                crossorigin="anonymous" referrerpolicy="no-referrer" />
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        </head>

        <%@ include file="common/navbar.jspf" %>
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

            ${list}

            <body>
                <div class="container">
                    <div class="row">
                        <h1 class="text-center mt-3">Add Garage</h1>
                        <div class="col-10 col-md-8 offset-1 offset-md-2 mt-2 rounded custom-form pb-5 pt-5 shadow-lg">
                            <form class="custom-form border border-light rounded p-4" method="post"
                                modelAttribute="garage">
                                <input type="hidden" path="id" />
                                <div class="mb-3">
                                    <input type="text" class="form-control input-height" name="garageName"
                                        id="garageName" path="garageName" placeholder="Enter Name"
                                        required="required" />
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control input-height" name="garageAddress"
                                        id="garageAddress" path="garageAddress" placeholder="Enter Address"
                                        required="required">
                                </div>
                                <div class="mb-3">
                                    <input type="text" class="form-control input-height" name="garagePhone"
                                        id="garagePhone" path="garagePhone" placeholder="Enter Phone"
                                        required="required" />
                                </div>

                                <div class="mb-3">
                                    <input type="hidden" path="services" id="services" name="services" />
                                    <div class="selected-options" id="selectedOptions"></div>

                                    <div class="dropdown">
                                        <button class="btn btn-light dropdown-toggle w-100" type="button"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                            Select Service
                                        </button>
                                        <ul class="dropdown-menu" id="dropdownMenu">
                                            <c:forEach var="item" items="${services}">
                                                <li><a class="dropdown-item" href="#"
                                                        onclick="selectOption('${item.serviceName}')">${item.serviceName}</a>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>

                                <div class="">
                                    <button type="submit"
                                        class="btn submit-btn w-100 border border-light">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <script>
                    const selectedOptions = [];

                    let submitBtn = document.querySelector(".submit-btn");
                    if (selectedOptions.length == 0) {
                        submitBtn.disabled = true;
                    } else {
                        submitBtn.disabled = false;
                    }

                    function selectOption(option) {
                        if (!selectedOptions.includes(option)) {
                            selectedOptions.push(option);
                            updateSelectedOptions();
                        }

                    }

                    function updateSelectedOptions() {
                        const selectedOptionsContainer = document.getElementById("selectedOptions");
                        selectedOptionsContainer.innerHTML = "";

                        let values = document.getElementById("services");
                        values.value = "";

                        selectedOptions.forEach(option => {
                            const tag = document.createElement("div");
                            tag.classList.add("tag");
                            tag.innerHTML = option + `<span onclick="removeOption('` + option + `')">&times;</span>`;
                            values.value += option + ", ";
                            selectedOptionsContainer.appendChild(tag);
                        });
                        let submitBtn = document.querySelector(".submit-btn");
                        if (selectedOptions.length == 0) {
                            submitBtn.disabled = true;
                        } else {
                            submitBtn.disabled = false;
                        }
                        console.log(selectedOptions);
                    }



                    function removeOption(option) {
                        const index = selectedOptions.indexOf(option);
                        if (index !== -1) {
                            selectedOptions.splice(index, 1);
                            updateSelectedOptions();
                        }
                        let submitBtn = document.querySelector(".submit-btn");
                        if (selectedOptions.length == 0) {
                            submitBtn.disabled = true;
                        } else {
                            submitBtn.disabled = false;
                        }
                    }

                    $(document).ready(function () {
                        $('.selectpicker').selectpicker();
                    });
                </script>

                <%@ include file="common/footer.jspf" %>

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