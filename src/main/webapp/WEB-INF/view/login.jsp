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
<body style="background-repeat: no-repeat; background-image: url('restaurantResources/image/bg.jpg');"
		class="position-relative">

		<!-- Login Modal -->


		<div class="modal-dialog modal-lg"
			style="max-width: fit-content; margin-top: 140px;">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title w-100 text-center" id="loginModalLabel">Login</h4>
				</div>
				<div class="modal-body p-5">
					<form action="/j_spring_security_check" method="post">
						<div class="form-group">
							<input type="email"
								class="form-control shadow-box bg-white border-white"
								placeholder="Username/Email" name="username" required="required">
						</div>
						<div class="form-group">
							<input type="password"
								class="form-control shadow-box bg-white border-white"
								placeholder="Password" name="password" required="required">
						</div>
						<input type="submit"
							class=" btn text-white text-capitalize bit-bold bg-yellow"
							value="Submit">
						<hr>
						<div class="text-center pt-25">
							<p>
								Forgot password? <a href="#" data-dismiss="modal"
									data-toggle="modal" data-target="#resetModal"
									class="text-yellow">Reset now</a>
							</p>
							<p>
								Don't have an account? <a href="userRegister"
									class="text-yellow">Sign up here</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>

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
	<!-- Map API -->
	<script
		src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAmrxCFuWyNUlMh6wLitVLI3pF7j_HqAFY&#038;libraries=places&#038;ver=1.1'></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
</body>
</html>
