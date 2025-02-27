<%@ taglib prefix="c" uri="jakarta.tags.core" %>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
      <!DOCTYPE html>
      <html lang="en">

      <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <title>Document</title>
      </head>
      <%@ include file="common/navbar.jspf" %>
      <style>
        body {
          background-color: lavender;
        }

        .card-img-man {
          height: 300px;
          object-fit: contain;
        }

        .card-text {
          margin: 2px 0px 2px 0px !important;
        }

        .buynow-btn {
          display: flex;
          justify-content: center;
        }
      </style>

      <body>
        <%-- <section id="buy-car-form" class="container mt-3">
          <h2 class="text-center mb-4">Buy a Car</h2>
          <form action="/cars/buyCar" method="POST" class="p-4 border rounded shadow">
            <div class=" ">
              <div class="mb-3">

                <!-- <label for="carName">Car Name</label> -->
                <input type="text" id="carName" name="carName" class="form-control" placeholder="Enter car name">
              </div>

              <div class="mb-3">
                <!-- <label for="carModel" class="form-label">Car Model</label> -->
                <input type="text" id="carModel" name="carModel" class="form-control" placeholder="Enter car model">
              </div>

              <div class="mb-3">
                <!-- <label for="carBrand" class="form-label">Car Model</label> -->
                <input type="text" id="carBrand" name="carBrand" class="form-control" placeholder="Enter car brand">
              </div>

              <div class="mb-3">
                <!-- <label for="fuelType" class="form-label">Fuel Type</label> -->
                <select id="fuelType" name="fuelType" class="form-select">
                  <option value="">choose</option>
                  <option value="Petrol">Petrol</option>
                  <option value="Diesel">Diesel</option>
                  <option value="Electric">Electric</option>
                  <option value="Hybrid">Hybrid</option>
                </select>
              </div>


              <div class="col">
                <button class="form-control search_btn">
                  Search
                </button>
              </div>
            </div>
          </form>
          </section>
          --%>
          <%-- <section>
            <div>
              <h2>Car Details</h2>

              <table class="table">
                <tr>
                  <th>Car Name</th>
                  <th>Car Model</th>
                  <th>Price</th>
                  <th>Fuel Type</th>
                </tr>
                <c:forEach items="${searchedCar}" var="car">
                  <tr>
                    <td>${car.carName}</td>
                    <td>${car.carModel}</td>
                    <td>
                      <fmt:formatNumber value="${car.price}" type="number" minFractionDigits="4"
                        maxFractionDigits="2" />
                    </td>
                    <td>${car.fuelType}</td>
                  </tr>
                </c:forEach>
              </table>
            </div>
            </section> --%>

            <div class="container mt-5 mb-5">
              <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-5">
                <c:forEach items="${searchedCar}" var="car">
                  <div class="">
                    <div class="card card-class shadow p-3 mb-5 bg-body-tertiary rounded">
                      <img src="data:image/jpeg;base64,${car.carImage}" class="card-img-top card-img-man"
                        alt="No Image">
                      <div class="card-body">
                        <h5 class="card-title">${car.carName}</h5>
                        <p class="card-text"><strong>Model :</strong> ${car.carModel}</p>
                        <p class="card-text"><strong>Fuel Type :</strong> ${car.fuelType}</p>
                        <p class="card-text"><strong>Price :</strong>
                          <fmt:formatNumber value="${car.price}" type="number" minFractionDigits="4"
                            maxFractionDigits="2" />
                        </p>
                        <p class="card-text"><strong>Manufacturing Year :</strong> ${car.year}</p>
                        <p class="card-text"><strong>Owner Contact :</strong> ${car.contactNumber}</p>

                        <div class="buynow-btn">
                          <c:choose>
                            <c:when test="${!car.isBooked}">
                              <form action="/order/create-order/${car.carId}" method="post">
                                <button class="btn btn-primary mt-3 mb-3">Buy Now</button>
                              </form>
                            </c:when>
                            <c:otherwise>
                              <button class="btn btn-danger mt-3 mb-3" disabled>Booked</button>
                            </c:otherwise>
                          </c:choose>
                        </div>

                      </div>
                    </div>
                  </div>
                </c:forEach>
              </div>

            </div>

            <div class="container">
              <div class="row">
                <c:choose>
                  <c:when test="${totalPages > 0}">
                <div class="col-4 col-md-3 offset-7 offset-md-9">
                  <ul class="pagination">
                   
                                           <c:if test="${currentPage > 0}">
                        <li class="page-item">
                          <a class="page-link"
                            href="buyCar?pageNumber=${currentPage - 1}&pageSize=${pageSize}">Previous</a>
                        </li>
                      </c:if>
                      <c:if test="${currentPage == 0}">
                        <li class="page-item">
                          <a class="page-link disabled"
                            href="buyCar?pageNumber=${currentPage - 1}&pageSize=${pageSize}">Previous</a>
                        </li>
                      </c:if>
  
                      
                          <%-- <c:forEach var="i" begin="0" end="${totalPages - 1}">
                            <li class="page-item ${currentPage == i ? 'active' : ''}">
                              <a class="page-link" href="buyCar?pageNumber=${i}&pageSize=${pageSize}">${i + 1}</a>
                            </li>
                          </c:forEach> --%>

                          <c:forEach var="i" begin="0" end="${totalPages - 1}">
                            <c:if test="${i == currentPage}">
                              <li class="page-item ${i+1 <= totalPages-1 ? 'd-none' : ''}">
                                <a class="page-link" href="buyCar?pageNumber=${i-2}&pageSize=${pageSize}">${i - 1}</a>
                              </li> 
                              <li class="page-item ${i-1 < 0 ? 'd-none' : ''}">
                                <a class="page-link" href="buyCar?pageNumber=${i-1}&pageSize=${pageSize}">${i}</a>
                              </li>
                              <li class="page-item ${currentPage == i ? 'active' : ''}">
                                <a class="page-link" href="buyCar?pageNumber=${i}&pageSize=${pageSize}">${i + 1}</a>
                              </li>
                              <li class="page-item ${i+1 > totalPages-1 ? 'd-none' : ''}">
                                <a class="page-link" href="buyCar?pageNumber=${i+1}&pageSize=${pageSize}">${i + 2}</a>
                              </li>
                              <li class="page-item ${i-1 >= 0 ? 'd-none' : ''}">
                                <a class="page-link" href="buyCar?pageNumber=${i+2}&pageSize=${pageSize}">${i + 3}</a>
                              </li>
                            </c:if>
                          </c:forEach>

  
                        <c:if test="${currentPage < totalPages - 1}">
                          <li class="page-item">
                            <a class="page-link" href="buyCar?pageNumber=${currentPage + 1}&pageSize=${pageSize}">Next</a>
                          </li>
                        </c:if>
                        <c:if test="${currentPage == totalPages - 1}">
                          <li class="page-item">
                            <a class="page-link disabled"
                              href="buyCar?pageNumber=${currentPage + 1}&pageSize=${pageSize}">Next</a>
                          </li>
                        </c:if>
                      </ul>
                    </div>
                  </div>
                </c:when>
                <c:otherwise>
                  <h1 class="text-center">There is no Car Available</h1>
                </c:otherwise>
            </c:choose>
            </div>


            <%@ include file="common/footer.jspf" %>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
              integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
              crossorigin="anonymous"></script>
      </body>

      </html>