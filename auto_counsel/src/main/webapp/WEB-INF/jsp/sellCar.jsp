<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Sell Your Car</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
        </head>
        <%@ include file="common/navbar.jspf" %>

        <style>

            .custom-form {
                background-color: #686868c7;
                color: white;
            }       

            .custom-height {
                min-height: 50px;
            }

            /* .button {
                display: flex;
                justify-content: center;
            } */

            .submit-btn {
                background-color: #f99c32;
                color: white;
                &:not(.disable):hover {
                    background-color: #f99c32;
                    color: white;
                }
            }
        </style>

        <body>
            <%-- <%@ include file="common/navbar.jspf" %> --%>
            <div class="container">
                <div class="row">
                    <div class="col-10 col-md-8 offset-1 offset-md-2 mt-5 rounded custom-form pb-5 pt-5 shadow-lg">
                        
                        <h2 class="mb-4 text-center">Sell Your Car</h2>
                        <form action="/cars/sell" method="post" class="border border-light rounded p-4" enctype="multipart/form-data">
                            <div class="mb-3">
                                <!-- <label for="carModel" class="form-label">Car Model</label> -->
                                <input type="text" class="form-control custom-height" id="carModel" name="carModel"
                                    placeholder="Enter Car model" required>
                            </div>

                            <div class="mb-3">
                                <!-- <label for="carName" class="form-label">Car Name</label> -->
                                <input type="text" class="form-control custom-height" id="carName" name="carName"
                                    placeholder="Enter Car Name" required>
                            </div>

                            <div class="mb-3">
                                <!-- <label for="year" class="form-label">Manufacturing Year</label> -->
                                <input type="number" class="form-control custom-height" id="year" name="year"
                                    placeholder="Enter Manufacturing Date" required>
                            </div>

                            <div class="mb-3">
                                <!-- <label for="price" class="form-label">Expected Price (&#8377;)</label> -->
                                <input type="number" class="form-control custom-height" id="price" name="price"
                                    placeholder="Enter Car Price" required>
                            </div>

                          

                            <div class="mb-3">
                                <!-- <label for="fuelType" class="form-label">Fuel Type</label> -->
                                <select class="form-control custom-height" id="fuelType" name="fuelType" required>
                                    <option value="">Fuel type</option>
                                    <c:forEach var="item" items="${fuelType}">
                                        <option value="${item}">${item}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="mb-3">
                                <!-- <label for="fuelType" class="form-label">Fuel Type</label> -->
                                <select class="form-control custom-height" id="transmission" name="transmission" required>
                                    <option value="">Transmission</option>
                                    <c:forEach var="item" items="${transmission}">
                                        <option value="${item}">${item}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="mb-3">
                                <!-- <label for="contactNumber" class="form-label">Contact Number</label> -->
                                <input type="text" class="form-control custom-height" id="contactNumber"
                                    name="contactNumber" placeholder="Enter Contact No." required>
                            </div>


                            <div class="mb-3">
                                <!-- <label for="carImage" class="form-label">Upload Image</label> -->
                                <input type="file" class="form-control custom-height" id="carImage" name="carImage"
                                    accept="image/png, image/jpeg" required>
                            </div>

                            <!-- <div class="mb-3">
                        <label for="imageUrl" class="form-label">Car Image</label>
                        <div class="image-preview" onclick="document.getElementById('imageUrl').click();">
                            <span>Click to upload image</span>
                            <img id="previewImg">
                        </div>
                        <input type="file" class="form-control" id="imageUrl" name="imageUrl" accept="image/*" style="display: none;" onchange="previewImage(event)">
                    </div> -->
                            <div class="button">
                                <button type="submit" class="btn submit-btn w-100 border border-light">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <script>
                // function previewImage(event) {
                //     const file = event.target.files[0];
                //     if (file) {
                //         const reader = new FileReader();
                //         reader.onload = function() {
                //             const preview = document.getElementById('previewImg');
                //             preview.src = reader.result;
                //             preview.style.display = 'block';
                //             document.querySelector('.image-preview span').style.display = 'none';
                //         };
                //         reader.readAsDataURL(file);
                //     }
                // }
            </script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>