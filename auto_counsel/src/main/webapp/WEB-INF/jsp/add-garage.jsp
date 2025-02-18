<%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>Book Car Service</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        </head>

        <body>
            <div class="continer">
                <div class="row">
                    <h1>Add Garage</h1>
                    <form:form method="post" modelAttribute="garage">

                        <form:input type="hidden" path="id" />

                         <fieldset class="mb-3">
                            <form:label path="garageAddress">garageAddress</form:label>
                            <form:input type="text" path="garageAddress" required="required" />
                        </fieldset>

                        <fieldset class="mb-3">
                            <form:label path="garageName">garageName</form:label>
                            <form:input type="text" path="garageName" required="required" />
                        </fieldset>

                        <fieldset class="mb-3">
                            <form:label path="garagePhone">garagePhone</form:label>
                            <form:input type="text" path="garagePhone" required="required" />
                        </fieldset>
                        
                        <div class="form-group">
                            <button type="submit" class="btn">Submit</button>
                        </div>
                    </form:form>
                </div>
            </div>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
        </body>

        </html>