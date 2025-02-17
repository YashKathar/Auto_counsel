<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Counsel Market</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Karla:wght@200;300;400;500;600;700;800&display=swap"
        rel="stylesheet"> -->

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/w3.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://use.fontawesome.com/b30448f653.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

     
</head>


<body>

	<section id="header">
		<div class="container-fluid">
			<div class="row no-gutters">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
					<div class="logo">
						<img src="${pageContext.request.contextPath}/images/logo.png" alt="">
					</div>
				</div>

				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row no-gutters">
						<div class="language_signin">
							<ul class="nav justify-content-end">
								<li class="nav-item"><select id="language" class="language">
										<option value="english">English</option>
										<option value="marathi">Marathi</option>
										<option value="hindi">Hindi</option>
										<option value="farnce">Farnce</option>
								</select></li>
								<li class="nav-item"><a class="nav-link Sign_in" href="#"><i
										class="fa fa-user" aria-hidden="true"></i>Sign in/Sign up</a></li>
							</ul>
						</div>
					</div>
					<div class="row no-gutters">
						<nav class="navbar navbar-expand-lg navbar-light  main_navbar">
							<!-- <a class="navbar-brand" href="#">Navbar</a> -->
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNavDropdown"
								aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end"
								id="navbarNavDropdown">
								<ul class="navbar-nav justify-content-end">
									<li class="nav-item"><a class="nav-link" href="/cars/sellCar">Sell Car</a></li>
									<li class="nav-item"><a class="nav-link" href="/cars/buyCar">Buy Car</a></li>

									<li class="nav-item dropdown">
										<a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Services</a>
										<div class="dropdown-menu" aria-labelledby="servicesDropdown">
											<a class="dropdown-item" href="/carsService/book-service">Book Service</a>
											<a class="dropdown-item" href="/carsService/view">View Previous Servicing</a>
										</div>
									</li>


									</li>
									<li class="nav-item dropdown"><a
										class="nav-link dropdown-toggle" href="#"
										id="navbarDropdownMenuLink" role="button"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> About </a>
										<div class="dropdown-menu"
											aria-labelledby="navbarDropdownMenuLink">
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
										</div></li>
									<li class="nav-item "><a class="nav-link orange" href="#">
											Get Deals</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>


			</div>
		</div>
	</section>

	<section id="banner_form">
		<div class="" style="width: 100%;">
			<div class="slideing_banner">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100" src="${pageContext.request.contextPath}/images/slider_banner_4.png"
								alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<h5>MOBILE MECHANIC</h5>
								<p>
								<ul>
									<li>Stuch Somewhere On Road.</li>
									<li>Check Your Car Value.</li>
									<li>Check Your Car Value Check Your Car Val.</li>
								</ul>
								</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="${pageContext.request.contextPath}/images/slider_banner_5.png"
								alt="Second slide">
							<div class="carousel-caption d-none d-md-block">
								<!-- <h5>CHECK YOUR CAR VALUE</h5>
                                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quis dolor eveniet vitae magnam similique assumenda dolore accusantium minima a! Facilis animi sed, in dignissimos ullam voluptates nostrum minus ipsum quaerat.</p> -->
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="${pageContext.request.contextPath}/images/slider_banner_1.png"
								alt="Third slide">
							<div class="carousel-caption d-none d-md-block">
								<h5>STUCH SOMEWHERE ON ROAD</h5>
								<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
									Quis dolor eveniet vitae magnam similique assumenda dolore
									accusantium minima a! Facilis animi sed, in dignissimos ullam
									voluptates nostrum minus ipsum quaerat.</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100" src="${pageContext.request.contextPath}/images/slider_banner_2.png"
								alt="fourth slide">
							<div class="carousel-caption d-none d-md-block">
								<h5>CHECK YOUR CAR VALUE</h5>
								<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
									Quis dolor eveniet vitae magnam similique assumenda dolore
									accusantium minima a! Facilis animi sed, in dignissimos ullam
									voluptates nostrum minus ipsum quaerat.</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="form_blur"></div>
			<div class="form">
				<h2>Find and Buy Cars, Auto Parts and services</h2>
				<form action="/cars/buy" method="POST" class="p-4 border rounded shadow">
				<div class=" ">
						<div class="col">
							<input type="text" id="car" name="car" class="form-control" placeholder="Enter car name">
						</div>
						<div class="col">
							<input type="text" class="form-control form_input"
								placeholder="Brand">
						</div>
						<div class="col">
							<input type="text" class="form-control form_input"
								placeholder="price-range">
						</div>
						<div class="col">
							<input type="text" id="model" name="model" class="form-control" placeholder="Enter model name" required>
						</div>
						<div class="col">
							<input type="text" class="form-control form_input"
								placeholder="Fuel Type">
						</div>
						
						<div class="col">
							<input type="button" class="form-control search_btn"
								value="Search">
						</div>
					</div>
				</form>
				<p class="advance_search">Advance Search >>></p>
			</div>
		</div>
	</section>

	<section id="mobile_mechanic">
		<div class="container-fluid">
			<div class="row">
				<h2>
					Mobile <span> Mechanic </span>
				</h2>
				<img src="${pageContext.request.contextPath}/images/mobile_machanic.png" alt="">
			</div>
		</div>
	</section>

	<section id="automotive_marketplace">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12 col-sm-12 col-xs-12 text-center">
					<h2>
						World largest <span> automotive </span> marketplace.
					</h2>
					<p class=" mx-auto mb-3">Lorem ipsum dolor sit amet consectetur
						adipisicing elit. Dignissimos obcaecati animi ea, atque
						perferendis reiciendis eaque iste accusamus,</p>

					<div class="row pt-3">
						<div class="col-md-6">
							<div class="card mb-3 automarket">
								<div class="row no-gutters">
									<div class="col-md-5">
										<img src="images/automarket_1.png" alt="...">
									</div>
									<div class="col-md-7">
										<div class="card-body text-left">
											<h5 class="card-title">Cars</h5>
											<p class="card-text">This is a wider card with supporting
												text to additional content.</p>
											<a href="#" class=" find_now_btn">Find Now </a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-6">
							<div class="card mb-3">
								<div class="row no-gutters">
									<div class="col-md-5">
										<img src="${pageContext.request.contextPath}/images/automarket_2.png" alt="...">
									</div>
									<div class="col-md-7">
										<div class="card-body text-left">
											<h5 class="card-title">Mechanic</h5>
											<p class="card-text">This is a wider card with supporting
												text to additional content.</p>
											<a href="#" class=" find_now_btn">Find Now </a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>

	<section id="buyers_sellers">
		<div class="container-fluid">

			<div class="row no-gutters">
				<div class="col-3">
					<div class="nav flex-column nav-pills buyers_sellers_nav"
						id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="v-pills-home-tab"
							data-toggle="pill" href="#v-pills-home" role="tab"
							aria-controls="v-pills-home" aria-selected="true">MECHANIC</a> <a
							class="nav-link" id="v-pills-profile-tab" data-toggle="pill"
							href="#v-pills-profile" role="tab"
							aria-controls="v-pills-profile" aria-selected="false">CAR</a> <a
							class="nav-link" id="v-pills-messages-tab" data-toggle="pill"
							href="#v-pills-messages" role="tab"
							aria-controls="v-pills-messages" aria-selected="false">AUTO
							PARTS</a>

					</div>
				</div>
				<div class="col-8  buyers_sellers_nav_text">
					<div class="tab-content" id="v-pills-tabContent">
						<div class="tab-pane fade show active" id="v-pills-home"
							role="tabpanel" aria-labelledby="v-pills-home-tab">

							<ul class="nav nav-tabs justify-content-center" id="myTab"
								role="tablist">
								<li class="nav-item" role="presentation"><a
									class="nav-link active" id="home-tab" data-toggle="tab"
									href="#home" role="tab" aria-controls="home"
									aria-selected="true">Buyers</a></li>
								<li class="nav-item" role="presentation"><a
									class="nav-link" id="profile-tab" data-toggle="tab"
									href="#profile" role="tab" aria-controls="profile"
									aria-selected="false">Sellers</a></li>
							</ul>

							<div class="tab-content buyers_sellers_content "
								id="myTabContent">
								<div class="tab-pane fade show active  " id="home"
									role="tabpanel" aria-labelledby="home-tab">
									<div class="card-group ">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Create Account</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
												class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Get Verified</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Make Live</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Get Paid</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
												alt="...">

										</div>
									</div>
								</div>
								<div class="tab-pane fade" id="profile" role="tabpanel"
									aria-labelledby="profile-tab">
									<div class="card-group ">
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Create Account</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
												class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Get Verified</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Make Live</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

										</div>
										<div class="card">
											<div class="card-body">
												<h5 class="card-title">Get Paid</h5>
											</div>
											<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
												alt="...">

										</div>
									</div>
								</div>
							</div>

						</div>
						<div class="tab-pane fade" id="v-pills-profile" role="tabpanel"
							aria-labelledby="v-pills-profile-tab">
							<div class="tab-pane fade show active" id="v-pills-home"
								role="tabpanel" aria-labelledby="v-pills-home-tab">

								<ul class="nav nav-tabs justify-content-center" id="myTab"
									role="tablist">
									<li class="nav-item" role="presentation"><a
										class="nav-link active" id="home-tab" data-toggle="tab"
										href="#home" role="tab" aria-controls="home"
										aria-selected="true">Buyers</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="profile-tab" data-toggle="tab"
										href="#profile" role="tab" aria-controls="profile"
										aria-selected="false">Sellers</a></li>
								</ul>

								<div class="tab-content buyers_sellers_content "
									id="myTabContent">
									<div class="tab-pane fade show active  " id="home"
										role="tabpanel" aria-labelledby="home-tab">
										<div class="card-group ">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Create Account</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
													class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Verified</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Make Live</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Paid</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
													alt="...">

											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="profile" role="tabpanel"
										aria-labelledby="profile-tab">
										<div class="card-group ">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Create Account</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
													class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Verified</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Make Live</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Paid</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
													alt="...">

											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
							aria-labelledby="v-pills-messages-tab">
							<div class="tab-pane fade show active" id="v-pills-home"
								role="tabpanel" aria-labelledby="v-pills-home-tab">

								<ul class="nav nav-tabs justify-content-center" id="myTab"
									role="tablist">
									<li class="nav-item" role="presentation"><a
										class="nav-link active" id="home-tab" data-toggle="tab"
										href="#home" role="tab" aria-controls="home"
										aria-selected="true">Buyers</a></li>
									<li class="nav-item" role="presentation"><a
										class="nav-link" id="profile-tab" data-toggle="tab"
										href="#profile" role="tab" aria-controls="profile"
										aria-selected="false">Sellers</a></li>
								</ul>

								<div class="tab-content buyers_sellers_content "
									id="myTabContent">
									<div class="tab-pane fade show active  " id="home"
										role="tabpanel" aria-labelledby="home-tab">
										<div class="card-group ">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Create Account</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
													class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Verified</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Make Live</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Paid</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
													alt="...">

											</div>
										</div>
									</div>
									<div class="tab-pane fade" id="profile" role="tabpanel"
										aria-labelledby="profile-tab">
										<div class="card-group ">
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Create Account</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit (1).png"
													class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Verified</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/money.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Make Live</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/shiled.png" class="card-img-top" alt="...">

											</div>
											<div class="card">
												<div class="card-body">
													<h5 class="card-title">Get Paid</h5>
												</div>
												<img src="${pageContext.request.contextPath}/images/account-benefit.png" class="card-img-top"
													alt="...">

											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
	</section>

	<section id="auto_services" class="stuck_on_road">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-10 col-xs-12 col-sm-12 col-lg-10 mx-auto">
					<div class="row">
						<div class="col-md-5 col-xs-12 col-sm-12 col-lg-5">
							<img src="${pageContext.request.contextPath}/images/services_one.png" alt="">
						</div>
						<div class="col-md-7 col-xs-12 col-sm-12 col-lg-5">
							<div class="card-body_left text-left">
								<h5 class="card-title">STUCK SOMEWHERE ON ROAD</h5>
								<p class="card-text">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.It has survived not only five
									centuries,</p>
								<a href="#" class="services_btn">Do It Yourself </a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="auto_services" class="check_car_value">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-10 mx-auto">
					<div class="row">
						<div class="col-md-7">
							<div class="card-body_right text-left">
								<h5 class="card-title">CHECK YOUR CAR VALUE</h5>
								<p class="card-text">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.It has survived not only five
									centuries,</p>
								<a href="#" class="services_btn">Check Car Value</a>
							</div>
						</div>
						<div class="col-md-5">
							<img src="${pageContext.request.contextPath}/images/services_two.png" alt="">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="auto_services" class="stuck_on_road">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-10 mx-auto">
					<div class="row">
						<div class="col-md-5">
							<img src="${pageContext.request.contextPath}/images/services_three.png" alt="">
						</div>
						<div class="col-md-7">
							<div class="card-body_left text-left">
								<h5 class="card-title">EASY WAY TO COMPARE CARS</h5>
								<p class="card-text">Lorem Ipsum is simply dummy text of the
									printing and typesetting industry.It has survived not only five
									centuries,</p>
								<a href="#" class="services_btn">Compare Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>




	<section id="car_blog">
		<div class="container">
			<div class="row">
				<h2>LATEST CARS BLOG</h2>
			</div>
			<div class="row">
				<div class="card-deck">
					<div class="card">
						<img src="${pageContext.request.contextPath}/images/ir_3.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Will Modi’s India Reinvent
								International ...</h5>
							<p class="card-text admin">
								Admin <i class="text-muted"> International Relations</i>
							</p>
							<p class="card-text">On May 16 Narendra Modi’s Bharatiya
								Janata Party (BJP, Indian People’s Party) and its allies won 336
								out of 543 seats in the Indian parliament, giving them India’s
								strongest political mandate in over 30 years, and putting them
								within reach of the 2/3 majority needed to change ...</p>
							<!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						</div>
					</div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/images/ir_4.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">Studying international relations in
								India</h5>
							<p class="card-text admin">
								Admin <i class="text-muted"> International Relations</i>
							</p>
							<p class="card-text">Thank you for asking me to the All India
								International and Area Studies Convention 2019. You have chosen
								an ambitious topic: “Ascending India: Reflections on Global and
								Regional Dimensions” and have a packed agenda in the next three
								days.</p>
							<!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						</div>
					</div>
					<div class="card">
						<img src="${pageContext.request.contextPath}/images/iR-2.jpg" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">15 Progressive Indian Villages That
								...</h5>
							<p class="card-text admin">
								Admin <i class="text-muted"> International Relations</i>
							</p>
							<p class="card-text">
								In today’s world, Gandhi’s words that India’s survival depends
								on the well-being of its villages seem even more pertinent.<br>
								<br> Seventy percent of India’s population – roughly
								one-tenth of humanity – live in the countryside. This makes
								rural India a focal point for issues of national and global ...
							</p>
							<!-- <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="discussion">
		<div class="container-fluid">
			<div class="row">
				<div class="main_discussion">
					<h2>
						LATEST DISCUSSION <span>VIEW ALL</span>
					</h2>
					<input type="text" placeholder="Sorry fourm not found.">
				</div>
			</div>
		</div>
	</section>

	<section id="claim_business">
		<div class="container">

			<h2>FIND AND CLAIM YOUR BUSINESS PAGE</h2>
			<form>
				<div class="row no-gutters">

					<div class="col form_text">
						<input type="text" class="form-control"
							placeholder="Your Store Name">
					</div>
					<div class="col form_text">
						<input type="text" class="form-control"
							placeholder="--Select State--">
					</div>
					<div class="col form_text">
						<input type="text" class="form-control"
							placeholder="-- Select Store Type --">
					</div>
					<div class="col form_text">
						<input type="button" class="form-control search_btn"
							value="Search">
					</div>
				</div>
			</form>

		</div>
	</section>

	

	<section id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-3 ">
					<img src="${pageContext.request.contextPath}/images/logo.png" alt="" width="100px">
					<p>Lorem ipsum dolor, sit amet consectetur adipisicing elit.
						Praesentium est ut sequi</p>
				</div>
				<div class="col-md-2">
					<h4>OVERVIEW</h4>
					<ul>
						<li>About Us</li>
						<li>Privacy Policy</li>
						<li>Affilate</li>
						<li>Feedback</li>
					</ul>
				</div>
				<div class="col-md-2 ">
					<h4>BUYING & SELLING</h4>
					<ul>
						<li>Find a car</li>
						<li>Used Car Buying</li>
						<li>Sell Your Product</li>
						<li>Car Dealers</li>
					</ul>
				</div>
				<div class="col-md-2 support text-sm-left text-xl-left">
					<h4>SUPPORT</h4>
					<ul>
						<li>FAQ</li>
						<li>Blog</li>
						<li>Forum</li>

					</ul>
				</div>
				<div class="col-md-3 ">
					<h4>CONTACT US</h4>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
						Aliquid consequatur corrupti mollitia</p>
				</div>
			</div>

			<div class="row Copyright_text">
				<p class="mx-auto text-center ">&copy; Copyright Autocounsel
					Market.All Rights Reserved.</p>
			</div>
		</div>
	</section>


	


	<!-- jQuery (Bootstrap 4 requires jQuery, but Bootstrap 5 does NOT) -->
	<script
		src="<%= request.getContextPath() %>/JS/jquery-3.5.1.slim.min.js"></script>

	<!-- Bootstrap JS Bundle (includes Popper.js) -->
	<script
		src="<%= request.getContextPath() %>/JS/bootstrap.bundle.min.js"></script>


	<script>
        var slideIndex = 1;
        showSlides(slideIndex);

        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            slideIndex++;
            if (slideIndex > slides.length) { slideIndex = 1 }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
            setTimeout(showSlides, 7000); // Change image every 2 seconds
        }


    </script>
</body>



</html>