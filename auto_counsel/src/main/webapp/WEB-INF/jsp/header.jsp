<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Auto Counsel Market</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome (for icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Google Fonts (Roboto) -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">

    <!-- W3.CSS -->
    <link rel="stylesheet" href="css/w3.css">

    <!-- Custom Stylesheet (style.css) -->
    <link rel="stylesheet" href="style.css">

    <!-- Preconnect to Google Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
</head>


<body>
	<section id="header">
		<div class="container-fluid">
			<div class="row no-gutters">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3">
					<div class="logo">
						<img src="images/logo.png" alt="">
					</div>
				</div>
				<div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
					<div class="row no-gutters">
						<div class="language_signin">
							<ul class="nav justify-content-end">
								<li class="nav-item">
									<select id="language" class="language">
										<option value="english">English</option>
										<option value="marathi">Marathi</option>
										<option value="hindi">Hindi</option>
										<option value="farnce">Farnce</option>
									</select>
								</li>
								<li class="nav-item">
									<a class="nav-link Sign_in" href="#"><i class="fa fa-user"
											aria-hidden="true"></i>Sign in/Sign up</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="row no-gutters">
						<nav class="navbar navbar-expand-lg navbar-light  main_navbar">
							<!-- <a class="navbar-brand" href="#">Navbar</a> -->
							<button class="navbar-toggler" type="button" data-toggle="collapse"
								data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
								<ul class="navbar-nav justify-content-end">
									<li class="nav-item">
										<a class="nav-link" href="#">Car Ownership Cost</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="/carParts">Car Parts</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Services</a>
									</li>
									<li class="nav-item dropdown">
										<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink"
											role="button" data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											Post A Requirement
										</a>
										<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
											<a class="dropdown-item" href="#">Action</a>
											<a class="dropdown-item" href="#">Another action</a>
										</div>
									</li>
									<li class="nav-item ">
										<a class="nav-link orange" href="#"> Get Deals</a>
									</li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</section>

	<script src="JS/jquery-3.5.1.slim.min.js"></script>
	<script src="JS/bootstrap.bundle.min.js"></script>

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