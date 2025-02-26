<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <title>Sell Your Car</title>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
            <style>
                body {
                    background-color: lavender;
                }

                .bg-form {
                    border-radius: 20px !important;
                    padding: 20px;
                }

                .SellCar {
                    text-align: center;
                    font-weight: bold;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 mt-5 bg-form shadow mb-5 bg-white rounded">
                        <h2 class="SellCar">Sell Your Car</h2>

                        <form action="/cars/sell" method="post" enctype="multipart/form-data">
                            <div class="mb-3 mt-3">
                                <label for="carModel" class="form-label"><strong>Car Model</strong></label>
                                <input type="text" class="form-control" id="carModel" name="carModel" required>
                            </div>

                            <div class="mb-3">
                                <label for="carName" class="form-label"><strong>Car Name</strong></label>
                                <input type="text" class="form-control" id="carName" name="carName" required>
                            </div>

                            <div class="mb-3">
                                <label for="year" class="form-label"><strong>Manufacturing Year</strong></label>
                                <input type="number" class="form-control" id="year" name="year" required>
                            </div>

                            <div class="mb-3">
                                <label for="price" class="form-label"><strong>Expected Price (&#8377;)</strong></label>
                                <input type="number" class="form-control" id="price" name="price" required>
                            </div>

                            <div class="mb-3">
                                <label for="transmission" class="form-label"><strong>Transmission</strong></label>
                                <select class="form-control" id="transmission" name="transmission" required>
                                    <option value="">Choose</option>
                                    <c:forEach var="item" items="${transmission}">
                                        <option value="${item}">${item}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="fuelType" class="form-label"><strong>Fuel Type</strong></label>
                                <select class="form-control" id="fuelType" name="fuelType" required>
                                    <option value="">Choose</option>
                                    <c:forEach var="item" items="${fuelType}">
                                        <option value="${item}">${item}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <div class="mb-3">
                                <label for="contactNumber" class="form-label"><strong>Contact Number</strong></label>
                                <input type="text" class="form-control" id="contactNumber" name="contactNumber"
                                    required>
                            </div>


                            <div class="mb-3">
                                <label for="carImage" class="form-label"><strong>Upload Image</strong></label>
                                <input type="file" class="form-control" id="carImage" name="carImage"
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

                            <button type="submit" class="btn btn-primary">Submit</button>
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
        </body>

        </html>