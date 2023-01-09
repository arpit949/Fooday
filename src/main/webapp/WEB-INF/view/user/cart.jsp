<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Exact Themes">
<title>Find Restaurant Shop Detail</title>
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

	<jsp:include page="header.jsp"></jsp:include>

	<!-- Page Heading -->
	<section class="et-page-title">
		<div class="container">
			<h1 class="text-white">
				Order Detail <span class="icon-food d-block h1 mb-2"></span>
			</h1>
			<ul>
				<li><a href="index.html">Home</a></li>
				<li><a href="viewUserOrder.html">Order</a></li>
			</ul>
		</div>
	</section>
	<!-- /Page Heading -->

	<f:forEach var="i" items="${orderList}">
		<f:set var="status" value="${i.status}" />
		<f:if test="${status==true}">
			<!-- Shop Detail Section -->
			<section class="et-shop-detail">
				<div class="container">
					<div class="row">
						<!-- Product information Wrapper -->
						<div class="et_product_info">
							<div class="row">
								<!-- Product Image -->
								<div class="col-sm-4">
									<div class="product_image">
										<img src="${i.productvo.productImageUrl}" alt="" />
									</div>
								</div>
								<!-- /Product Image -->

								<!-- Information -->
								<div class="col-sm-8">
									<div class="product_details">
										<h4>${i.productvo.productName}</h4>
										<div class="price">
											<span>${i.productvo.productPrice}</span><br> <span>${i.orderDate}</span>
										</div>
										<p>${i.productvo.productDescription }</p>
										<div class="cart_option">
											<form>
												<input type="number" class="form-control" value="1"
													name="phone" />
												<button
													class="btn shadow bg-yellow text-capitalize text-white"
													value="add to cart" name="add_cart">Place Order</button>
											</form>
										</div>
										<div class="categories">
											<label>Categories:</label> <span><a href="#"
												class="text-yellow">${i.productvo.categoryvo.categoryName }</a></span>
										</div>
									</div>
								</div>
								<!-- /Information -->
							</div>
						</div>
						<!-- /Product information Wrapper -->

					</div>
				</div>
			</section>
			<!-- /Shop Detail Section -->
		</f:if>
	</f:forEach>
	
	<section class="">
			<div class="section-heading text-center">
				<span class="icon-food d-block h1 mb-2"></span>
				<h2 class="text-uppercase">Old <span class="text-yellow">Orders</span></h2>
			</div>
	</section>
	
	<f:forEach var="i" items="${orderList}">
		<f:set var="status" value="${i.status}" />
		<f:if test="${status==false}">
			<section class="et-shop-detail">
				<div class="container">
					<div class="row">
						<!-- Product information Wrapper -->
						<div class="et_product_info">
							<div class="row">
								<!-- Product Image -->
								<div class="col-sm-4">
									<div class="product_image">
										<img src="${i.productvo.productImageUrl}" alt="" />
									</div>
								</div>
								<!-- /Product Image -->

								<!-- Information -->
								<div class="col-sm-8">
									<div class="product_details">
										<h4>${i.productvo.productName}</h4>
										<div class="price">
											<span>${i.productvo.productPrice}</span><br> <span>${i.orderDate}</span>
										</div>
										<p>${i.productvo.productDescription }</p>
										<div class="cart_option">
											<form>
												<input type="number" class="form-control" value="1"
													name="phone" />
												<button
													class="btn shadow bg-yellow text-capitalize text-white"
													value="add to cart" name="add_cart">Ordered</button>
											</form>
										</div>
										<div class="categories">
											<label>Categories:</label> <span><a href="#"
												class="text-yellow">${i.productvo.categoryvo.categoryName }</a></span>
										</div>
									</div>
								</div>
								<!-- /Information -->
							</div>
						</div>
						<!-- /Product information Wrapper -->

					</div>
				</div>
			</section>
			<!-- /Shop Detail Section -->

		</f:if>
	</f:forEach>
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
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
</body>
</html>
