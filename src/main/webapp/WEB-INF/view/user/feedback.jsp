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
	
<style>
        #description {
            margin-top: 10px;
        }

        * {
            margin: 0;
            padding: 0;
        }

        .rate {
            float: left;
            height: 46px;
            padding: 0 10px;
        }

        .rate:not(:checked) > input {
            position: absolute;
            top: -9999px;
        }

        .rate:not(:checked) > label {
            float: right;
            width: 1em;
            overflow: hidden;
            white-space: nowrap;
            cursor: pointer;
            font-size: 30px;
            color: #ccc;
        }

        .rate:not(:checked) > label:before {
            content: ' ';
        }

        .rate > input:checked ~ label {
            color: #ffc700;
        }

        .rate:not(:checked) > label:hover,
        .rate:not(:checked) > label:hover ~ label {
            color: #deb217;
        }

        .rate > input:checked + label:hover,
        .rate > input:checked + label:hover ~ label,
        .rate > input:checked ~ label:hover,
        .rate > input:checked ~ label:hover ~ label,
        .rate > label:hover ~ input:checked ~ label {
            color: #c59b08;
        }


    </style>
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
				Feedback <span class="icon-food d-block h1 mb-2"></span>
			</h1>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="viewfeedback.html">Feedback</a></li>
			</ul>
		</div>
	</section>
	<!-- /Page Heading -->

	<section class="container-fluid et-contact-us">
		<div class="section-heading text-center">
			<span class="icon-food d-block h1 mb-2"></span>
			<h2 class="text-capitalize font-weight-bold">Feedback</h2>
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
							a feedback</h6>
					</div>
					<form:form name="form" autocomplete="off" action="addFeedback.html"
						method="post" modelAttribute="feedbackvo">
						<form:input type="hidden" path="id" value="" />

						<form:input type="hidden" path="loginvo.loginId" value=""
							name="loginId" />
						
							<div class="rate mb-4">
                                    <form:radiobutton id="star5" path="rating" value="5"/><label for="star5" title="text"> &#9733;</label>
                                    <form:radiobutton  id="star4" path="rating" value="4"/><label for="star4" title="text"> &#9733;</label>
                                    <form:radiobutton id="star3" path="rating" value="3"/><label for="star3" title="text"> &#9733;</label>
                                    <form:radiobutton id="star2" path="rating" value="2"/><label for="star2" title="text"> &#9733;</label>
                                    <form:radiobutton id="star1" path="rating" value="1"/><label for="star1" title="text"> &#9733;</label>
                                </div>
						<div class="form-group mt-4">
							<form:textarea path="feedback"
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
								class="text-yellow position-relative m-0 text-capitalize border d-inline-block rounded p-3 bg-white small font-weight-bold">Feedbacks</h6>
						</div>
						<div class="content-box">
							<div class="customer-reviews">
								<f:forEach var="i" items="${feedbackList}">
									<!-- Review -->
									<div class="review p-4 position-relative shadow-box mt-4">
										<div class="row">

											<div class="col-md-9">
												<div class="position-relative">
													<span class="d-block text-uppercase font-weight-bold mb-2">${i.loginvo.username}</span>
													<small><f:if test="${i.rating eq '1'}">
															<span style='font-size: 25px;'>&#128532;</span>
														</f:if> <f:if test="${i.rating eq '2'}">
															<span style='font-size: 25px;'>&#128530;&#128530;</span>
														</f:if> <f:if test="${i.rating eq '3'}">
															<span style='font-size: 25px;'>&#128512;&#128512;&#128512;</span>
														</f:if> <f:if test="${i.rating eq '4'}">
															<span style='font-size: 25px;'>&#128526;&#128526;&#128526;&#128526;</span>
														</f:if> <f:if test="${i.rating eq '5'}">
															<span style='font-size: 25px;'>&#128525;&#128525;&#128525;&#128525;&#128525;</span>
														</f:if></small>
													<p class="description">${i.feedback}</p>
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
