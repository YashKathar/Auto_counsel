<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Create</title>
        </head>
        <%@ include file="common/navbar.jspf" %>

        <body>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <form action="/order/create-order" method="post" modelAttribute="order">
                            <div class="mb-3 mt-3">
                                <label for="firstName" class="form-label"><strong>First Name</strong></label>
                                <input type="text" class="form-control" id="firstName" name="firstName" path="firstName"
                                    required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="lastName" class="form-label"><strong>Last Name</strong></label>
                                <input type="text" class="form-control" id="lastName" name="lastName" path="lastName"
                                    required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="contactNumber" class="form-label"><strong>Contact Number</strong></label>
                                <input type="text" class="form-control" id="contactNumber" name="contactNumber"
                                    path="contactNumber" required>
                            </div>

                            <div class="mb-3 mt-3">
                                <label for="paymentOptions" class="form-label"><strong>Payment Options</strong></label>
                                <select name="paymentOptions" id="paymentOptions" required>
                                    <option value="">Choose</option>
                                    <c:forEach var="item" items="${paymentOptions}">
                                        <option value="${item}">${item}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <input type="text" class="form-control" id="carId" name="carId" path="carId"
                                value="${order.carId}" required hidden>

                            <button type="submit" class="btn btn-primary">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        <%@ include file="common/footer.jspf" %>
        </html>