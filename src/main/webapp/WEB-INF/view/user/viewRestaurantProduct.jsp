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
	href="<%=request.getContextPath()%>/restaurantResources/css/ion.rangeSlider.min.css" />

<!-- Bootstrap DateTimePicker -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/bootstrap-datetimepicker.min.css" />
<!-- jQuery Select2 -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/restaurantResources/css/select2.min.css" />
</head>
<body>
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

	<section class="container-fluid et-blog-detail">
		<div class="container">
			<div class="map-wrapper">
				<div id="loadmaps" class="search-map m-auto"></div>
			</div>
			<div class="row">

				<!-- Content area -->
				<div class="col-md-12 mt-5 mt-md-0 content-area">
					<div class="d-sm-flex text-center align-items-center">

						<div
							class="sort-dropdown ml-auto mr-sm-3 mt-3 mb-3 mt-sm-0 mb-sm-0">

						</div>
						<div>
							<span id="event-grid-view" class="active ml-auto text-muted"><i
								class="icon-menu pointer"></i></span> <span id="event-list-view"
								class="ml-auto text-muted"><i class="icon-list pointer"></i></span>
						</div>

					</div>

					<!-- Grid View -->
					<div class="search-result grid-view et-cuisines">
						<div class="row">
							<!-- Item -->
							<f:forEach var="i" items="${productList}">
								<div class="col-md-4 mt-4">
									<div class="shadow-box bg-white p-0 restaurant">
										<div class="restaurant-thumbnail p-3 position-relative">
											<small
												class="et-badge pl-2 pr-2 bg-success text-white position-absolute">Available</small>
											<img src="${i.productImageUrl }" style="height: 250px"
												class="img-fluid" alt="mg">
										</div>
										<div class="p-4">
											<h4 class="font-weight-bold">
												<a href="#"
													class="text-reset text-capitalize text-decoration-none">${i.productName }</a>
											</h4>
											<p class="description">${i.productDescription }</p>
											<hr>
											<div class="d-flex align-items-center justify-content-center">
												<div
													class="meta text-left d-inline-flex align-items-center pr-1 pl-1">
													<i class="rounded-pill mr-1 icon-bg icon-wallet mr-2"></i>
													<p class="align-bottom d-inline-block m-0 pt-2">${i.productPrice }
														&#x20B9</p>
												</div>
											</div>
											<a href="placeOrder.html?productId=${i.id}"
												class="btn shadow mt-3 mb-2 bg-yellow text-capitalize text-white">order</a>

										</div>
									</div>
								</div>
							</f:forEach>
						</div>
					</div>

					<!-- List view -->
					<div class="search-result list-view et-cuisines">
						<div class="popular-list-items w-100">
							<f:forEach var="i" items="${restaurantList}">
								<!--Item -->
								<div class="popular-item shadow-box mt-4">
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
												class="fas fa-star text-yellow"></i> <i
												class="fas fa-star text-yellow"></i> <i class="fas fa-star"></i>
											</label>
										</div>
										<div class="content w-100">
											<a href="#"
												class="position-absolute text-decoration-none wishlist rounded-pill text-white icon-bg bg-black"><i
												class="far fa-heart"></i></a>
											<div class="meta-row">
												<a href="#"
													class="text-yellow small bit-bold text-uppercase">${i.restaurantType}</a>
												<div class="float-right">
													<i class="icon-wallet bit-bold"></i> Cash on delivery
												</div>
											</div>
											<h4 class="font-weight-bold mt-2 mb-3">
												<a href="#"
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
							</f:forEach>
						</div>
					</div>

				</div>
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
	<!--mbYTPlayer -->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/jquery.mb.YTPlayer.min.js"></script>
	<!--Ion Range Slider-->
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/ion.rangeSlider.min.js"></script>
	<!-- Map API -->
	<script
		src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAmrxCFuWyNUlMh6wLitVLI3pF7j_HqAFY&#038;libraries=places&#038;ver=1.1'></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
</body>
</html>
