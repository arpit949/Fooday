<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Exact Themes">
<title>Find Restaurant RestroX</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/style.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/responsive.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/icons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/fontawesome.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/colors.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/typography.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/animate.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/hc-offcanvas-nav.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/jquery.scrollbar.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/jquery.fancybox.min.css" />
<!-- Plugin CSS file with desired skin -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/jquery.mswitch.css" />
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/restaurantResources/css/slick.css">

<!-- Bootstrap DateTimePicker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/bootstrap-datetimepicker.min.css" />
<!-- jQuery Select2 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/select2.min.css" />
</head>
<body class="home">
	<!-- Back To Top -->
	<div id="backTop">
		<i aria-hidden="true" class="fa fa-arrow-up"></i>
	</div>
	<div class="et-preloader bg-white w-100 h-100 position-fixed">
		<img
			src="<%=request.getContextPath()%>/restaurantResources/image/preloader.gif"
			alt="preloader">
	</div>

	<jsp:include page="header.jsp"></jsp:include>

	<!-- Slider -->
	<section class="et-masthead position-relative">
		<div id="et-banner-video-contaier"></div>
		<div class="et-banner-video-overlay"></div>
		<div class="caption col-lg-9 col-md-10 position-absolute">
			<h1 class="font-weight-bold heading text-white">
				Discover <span class="text-yellow">Restaurants</span> Around You
			</h1>
			<p class="text-white d-none d-sm-block">The Best Restaurants at
				the best price</p>
		</div>
	</section>

	<!-- Welcome -->
	<section class="container-fluid et-welcome about">
		<div class="container">
			<div class="row">
				<div class="col-sm-5">
					<div class="welcome-image">
						<img alt="welcome" class="img-fluid"
							src="<%=request.getContextPath()%>/restaurantResources/image/about.jpg">
						<div class="title_box">
							<p>Find Best Restaurants here of your choice</p>
						</div>
					</div>
				</div>
				<div class="col-sm-7">
					<h2 class="text-yellow text-uppercase">
						Welcome To <span>RestroX</span>
					</h2>
					<p class="italic">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim adminim.</p>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
						sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
						Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris
						nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
						reprehenderit in voluptate velit esse cillum dolore eu fugiat
						nulla pariatur.</p>
					<ul class="welcome-features">
						<li class="marg"><a href="#"><span
								class="fas fa-utensils"></span> Amazing Dishes</a></li>
						<li class="marg"><a href="#"><span class="fas fa-users"></span>
								Registered Users</a></li>
						<li><a href="#"><span class="fas fa-search"></span> Fast
								Searching</a></li>
						<li><a href="#"><span class="far fa-credit-card"></span>
								Online Orders</a></li>
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!-- /Welcome -->

	<!-- How it works -->
	<section
		class="et-howit-works bg-black position-relative overflow-hidden container-fluid"
		id="howitworks">
		<div class="container">
			<div class="section-heading text-center">
				<span class="icon-food text-yellow d-block h1 mb-2"></span>
				<h2 class="text-uppercase text-white">
					how it <span class="text-yellow">works</span>
				</h2>
				<p class="text-white mb-0">
					Lorem ipsum dolor sit amet consectetur adipiscing <br> elit
					sed do eiusmod tempor.
				</p>
			</div>
			<div class="row">
				<div class="col-md-4 mt-2 text-center text-white">
					<div class="hexagon">
						<img
							src="<%=request.getContextPath()%>/restaurantResources/image/fast-food.png"
							alt="logo">
					</div>
					<h4 class="font-weight-bold text-white text-capitalize mt-4">choose
						cuisine</h4>
					<p class="text-white description mb-0">Lorem ipsum dolor sit
						amet consectetur adipiscing elit sed do eiusmod tempor dolor sit
						amet consectetur.</p>
				</div>
				<div class="col-md-4 mt-2 text-center text-white">
					<div class="hexagon">
						<img
							src="<%=request.getContextPath()%>/restaurantResources/image/food.png"
							alt="logo">
					</div>
					<h4 class="font-weight-bold text-white text-capitalize mt-4">find
						nearby restaurant</h4>
					<p class="text-white description mb-0">Lorem ipsum dolor sit
						amet, consectetur adipiscing elit, sed do eiusmod tempor dolor sit
						amet, consectetur</p>
				</div>
				<div class="col-md-4 mt-2 text-center text-white">
					<div class="hexagon">
						<img
							src="<%=request.getContextPath()%>/restaurantResources/image/scooter.png"
							alt="logo">
					</div>
					<h4 class="font-weight-bold text-white text-capitalize mt-4">order
						food</h4>
					<p class="text-white description mb-0">Lorem ipsum dolor sit
						amet, consectetur adipiscing elit, sed do eiusmod tempor dolor sit
						amet, consectetur</p>
				</div>
			</div>
		</div>
	</section>

	<!-- Popular Restaurants -->

	<section
		class="container-fluid overflow-hidden et-popular-list position-relative">
		<div class="section-heading text-center">
			<span class="icon-food d-block h1 mb-2"></span>
			<h2 class="text-uppercase">
				popular <span class="text-yellow">restaurants</span>
			</h2>
			<p class="description mb-0">
				Lorem ipsum dolor sit amet, consectetur adipiscing <br> elit,
				sed do eiusmod tempor
			</p>
		</div>

		<div class="container">
			<div class="row">
				<f:forEach var="i" items="${data}">
					<div class="col-lg-6">
						<div class="popular-list-items">

							<!--Item -->
							<div class="popular-item shadow-box mt-5">
								<small
									class="et-badge pl-2 pr-2 bg-success text-white position-absolute">Open</small>
								<div class="d-sm-flex align-items-center">
									<div class="text-center pr-sm-3">
										<img style="width: 150px;height: auto;border-radius: 10px;"
											src="${i.profileImage }"
											class="d-block m-auto" alt="logo"> <label
											class="rating small text-center"> <i
											class="fas fa-star text-yellow"></i> <i
											class="fas fa-star text-yellow"></i> <i
											class="fas fa-star text-yellow"></i> <i class="fas fa-star"></i>
											<i class="fas fa-star"></i>
										</label>
									</div>
									<div class="content w-100">
										<div class="meta-row">
											<a href="#" class="text-yellow small bit-bold text-uppercase">${i.restaurantType}</a>
											<div class="float-right">
												<i class="icon-wallet bit-bold"></i> Cash on delivery
											</div>
										</div>
										<h4 class="font-weight-bold mt-2 mb-3">
											<a href="viewRestaurantProduct.html?id=${i.loginvo.loginId}"
												class="text-reset text-capitalize text-decoration-none link-hover">${i.restaurantName }</a>
										</h4>
										<p class="description">${i.about }</p>
										<span class="meta pr-1 pl-1" data-toggle="tooltip"
											data-placement="bottom" title=""
											data-original-title="Max. delivery time"> <i
											class="rounded-pill mr-1 icon-bg bg-white"> <img
												src="<%=request.getContextPath()%>/restaurantResources/image/scooter.png"
												class="f-icon" alt="img">
										</i> <label class="align-bottom bit-bold">30 min.</label>
										</span> <span class="meta pr-1 pl-1" data-toggle="tooltip"
											data-placement="bottom" title=""
											data-original-title="20 minutes away from you"> <i
											class="rounded-pill mr-1 icon-bg bg-white"> <img
												src="<%=request.getContextPath()%>/restaurantResources/image/road.png"
												class="f-icon" alt="img">
										</i> <label class="align-bottom bit-bold">${i.deliveryCharges}
												&#x20B9</label>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</f:forEach>
			</div>
		</div>
	</section>


	<jsp:include page="footer.jsp"></jsp:include>

	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery-3.2.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/popper.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/slick.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/owl.carousel.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/hc-offcanvas-nav.js"></script>
	<!--Bootstrap DateTimePicker -->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/bootstrap-datetimepicker.min.js"></script>
	<!--jQuery Select2 -->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/select2.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery.scrollbar.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery.fancybox.min.js"></script>
	<!--Toggle Switcher -->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery.mswitch.js"></script>
	<!--mbYTPlayer -->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery.mb.YTPlayer.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
</body>
</html>
