<!-- Navbar -->
<nav class="et-navbar position-relative">
	<div class="container mt-3 position-relative">
		<div class="row pl-4 pr-4 p-sm-0 justify-content-between">
			<div class="logo ">
				<a href="index"><img
					src="<%=request.getContextPath()%>/restaurantResources/image/logo.png"
					alt="logo"></a>
			</div>
			<div class="nav-links">
				<ul
					class="d-none nostyle inline d-md-inline-block mt-2 pt-1 p-0 mb-0">
					<li class="ml-lg-4 ml-2 dropdown"><a href="index">Home</a>
					<li class="ml-lg-4 ml-2 dropdown"><a href="viewAllRestaurant.html">Restaurant</a></li>
					<li class="ml-lg-4 ml-2 dropdown"><a href="viewUserOrder.html">Order</a></li>
					<li class="ml-lg-4 ml-2 dropdown"><a href="viewComplain.html">Complain</a></li>
					<li class="ml-lg-4 ml-2 dropdown"><a href="viewfeedback.html">Feedback</a></li>
					<li class="ml-lg-4 ml-2 dropdown"><a href="/">Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
</nav>
