<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

	<!-- Topbar -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Page Heading -->
	<section class="et-page-title">
		<div class="container">
			<h1 class="text-white">
				Complain <span class="icon-food d-block h1 mb-2"></span>
			</h1>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="viewComplain.html">Complain</a></li>
			</ul>
		</div>
	</section>
	<!-- /Page Heading -->

	<section class="container-fluid et-contact-us">
		<div class="section-heading text-center">
			<span class="icon-food d-block h1 mb-2"></span>
			<h2 class="text-capitalize font-weight-bold">Complain</h2>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!--<div id="loadmaps" class="contactmap mt-5 mb-5"></div>-->
				</div>
				<div class="col-md-7 mt-5 mt-md-0">
					<div class="content-heading position-relative mb-3">
						<h6
							class="text-yellow position-relative m-0 text-capitalize border d-inline-block rounded p-3 bg-white small font-weight-bold">drop
							a complain</h6>
					</div>
					<form:form name="form" autocomplete="off" action="addComplain.html"
						method="post" modelAttribute="complainvo">
						<form:input type="hidden" path="id" value="" />

						<form:input type="hidden" path="loginvo.loginId" value=""
							name="loginId" />
						<div class="form-group mt-4">
							<form:input path="complainSubject" type="text"
								placeholder="Complain title"
								class="form-control shadow-box bg-white border-white"
								name="name" />
						</div>
						<div class="form-group mt-4">
							<form:textarea path="complainDescription"
								class="form-control shadow-box bg-white border-white" rows="6"
								placeholder="Your message"></form:textarea>
						</div>
						<button
							class="btn shadow mt-2 bg-yellow text-capitalize text-white">submit</button>
					</form:form>
				</div>


				<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
				<div class="col-lg-8 col-md-7 mt-5 mt-md-0">
					<div class="content-widget pt-4">
						<div class="content-heading mt-3 position-relative mb-3">
							<h6
								class="text-yellow position-relative m-0 text-capitalize border d-inline-block rounded p-3 bg-white small font-weight-bold">reviews</h6>
						</div>
						<div class="content-box">
							<div class="customer-reviews">
								<f:forEach var="i" items="${complainList}">
									<!-- Review -->
									<div class="review p-4 position-relative shadow-box mt-4">
										<div class="row">
											
											<div class="col-md-9">
												<div class="position-relative">
													<span class="d-block text-uppercase font-weight-bold mb-2">${i.loginvo.username}</span>
													 <small>${i.complainSubject}</small><br>
													 <small>${i.complainDate}</small>
													<p class="description">${i.complainDescription}</p>
												</div>
											</div>
										</div>
									</div>

									<!-- Review Reply -->
									<div class="review p-4 ml-5 position-relative shadow-box mt-4">
										<div class="row">
											
											<div class="col-md-9">
												<div class="position-relative">
													<span class="d-block text-uppercase font-weight-bold mb-2">FOODAY</span> 
													<small>${i.replyDate}</small>
													<p class="description">${i.reply}</p>
												</div>
											</div>
										</div>
									</div>
								</f:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
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
	<!-- Map API -->
	<script
		src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAmrxCFuWyNUlMh6wLitVLI3pF7j_HqAFY&#038;libraries=places&#038;ver=1.1'></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
</body>
</html>
