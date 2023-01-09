	<!DOCTYPE html>
	<html lang="zxx">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="Exact Themes">
		<title>Find Restaurant Shop</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/bootstrap.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/style.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/responsive.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/icons.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/fontawesome.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/colors.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/typography.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/owl.carousel.min.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/animate.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/hc-offcanvas-nav.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/jquery.scrollbar.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/jquery.fancybox.min.css" />

		<!-- Bootstrap DateTimePicker -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/bootstrap-datetimepicker.min.css"/>
		<!-- jQuery Select2 -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/restaurantResources/css/select2.min.css"/>
	</head>
	<body>
		<!-- Back To Top -->
		<div id="backTop">	<i aria-hidden="true" class="fa fa-arrow-up"></i>
		</div>
		<div class="et-preloader bg-white w-100 h-100 position-fixed"><img src="<%=request.getContextPath()%>/restaurantResources/image/preloader.gif" alt="preloader"></div>

		<!-- Topbar -->
		<div class="et-topbar pb-3 pt-3 position-relative">
			<div class="container">
				<div class="row align-items-center">
					<div class="social-media text-center text-md-left col-md-3">
						<a href="#" class="d-inline-block mr-2"><i class="fab fa-facebook"></i></a>
						<a href="#" class="d-inline-block mr-2"><i class="fab fa-twitter"></i></a>
						<a href="#" class="d-inline-block mr-2"><i class="fab fa-instagram"></i></a>
						<a href="#" class="d-inline-block mr-2"><i class="fab fa-google-plus"></i></a>
						<a href="#" class="d-inline-block mr-2"><i class="fab fa-youtube"></i></a>
					</div>
					<div class="col-md-5 text-center text-white">
						<span class="pr-3 d-block d-lg-inline-block"><i class="fas fa-phone"></i> +27 11 461 6300</span>
						<span class="d-lg-inline-block d-md-block d-none"><i class="fas fa-envelope"></i> restrox@listing.com</span>
					</div>
					<div class="col-md-4 d-md-flex text-md-right text-center langselect align-items-center justify-content-end">
						<select class="select2">
							<optgroup label="Language">
								<option>English</option>
								<option>Italian</option>
								<option>Espanol</option>
								<option>Spanish</option>
								<option>Dutch</option>
							</optgroup>
						</select>
						<a href="#" class="login-popup-model text-white white-space-nowrap ml-2" data-toggle="modal" data-target="#loginModal"><i class="fas fa-sign-in-alt"></i> Login/Signup</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar -->
		<nav class="et-navbar position-relative">
			<div class="container mt-3 position-relative">
				<div class="row pl-4 pr-4 p-sm-0 justify-content-between">
					<div class="logo ">
						<a href="index.html"><img src="<%=request.getContextPath()%>/restaurantResources/image/logo.png" alt="logo"></a>
					</div>
					<div class="nav-links">
						<ul class="d-none nostyle inline d-md-inline-block mt-2 pt-1 p-0 mb-0">
							<li class="ml-lg-4 ml-2 dropdown">
								<a href="index.html">Home +</a>
								<ul class="submenu transition bg-white rounded nostyle p-4 shadow">
									<li><a href="index.html">Home 1</a></li>
									<li><a href="index-2.html">Home 2</a></li>
									<li><a href="index-3.html">Home 3</a></li>
								</ul>
							</li>
							<li class="ml-lg-4 ml-2"><a href="about.html">About</a></li>
							<li class="ml-lg-4 ml-2 dropdown">
								<a href="#">Explore +</a>
								<ul class="submenu transition bg-white rounded nostyle p-4 shadow">
									<li><a href="search.html">Search restaurants</a></li>
									<li><a href="contact.html">Get a quote</a></li>
									<li><a href="add-restaurant.html">Add Restaurant</a></li>
									<li><a href="detail.html">Restaurant Detail</a></li>
								</ul>
							</li>
							<li class="ml-lg-4 ml-2 dropdown">
								<a href="#">Pages +</a>
								<ul class="submenu transition bg-white rounded nostyle p-4 shadow">
									<li><a href="plans.html">Plans</a></li>
									<li><a href="404.html">404</a></li>
									<li><a href="contact.html">contact</a></li>
									<li><a href="about.html">about us</a></li>
								</ul>
							</li>
							<li class="ml-lg-4 ml-2 dropdown">
								<a href="#">Blog +</a>
								<ul class="submenu transition bg-white rounded nostyle p-4 shadow">
									<li><a href="blog-grid.html">Blog Grid</a></li>
									<li><a href="blog-detail.html">Blog Detail</a></li>
								</ul>
							</li>
							<li class="ml-lg-4 ml-2 dropdown">
								<a href="#">Shop +</a>
								<ul class="submenu transition bg-white rounded nostyle p-4 shadow">
									<li><a href="shop.html">Shop Grid</a></li>
									<li><a href="shop-detail.html">Shop Detail</a></li>
								</ul>
							</li>
						</ul>
						<div class="btn-ghost b-drop float-right ml-lg-4 ml-2 position-relative border rounded">
							<select class="border-yellow select2 float-right ml-4 text-uppercase btn bg-transparent text-yellow">
								<optgroup label="Feel like eating">
									<option>Chinese</option>
									<option>Italian</option>
									<option>Fast Food</option>
									<option>Thai</option>
									<option>Japanese</option>
								</optgroup>
							</select>
						</div>
					</div>
				</div>
			</div>
		</nav>

		<!-- Mobile Menu -->
		<nav id="et-mobile-nav">
			<ul>
				<li class="dropdown">
					<a href="#">Home +</a>
					<ul>
						<li><a href="index.html">Home 1</a></li>
						<li><a href="index-2.html">Home 2</a></li>
						<li><a href="index-3.html">Home 3</a></li>
					</ul>
				</li>
				<li><a href="about.html">About</a></li>
				<li>
					<a href="#">Explore +</a>
					<ul>
						<li><a href="search.html">Search restaurants</a></li>
						<li><a href="contact.html">Get a quote</a></li>
						<li><a href="add-restaurant.html">Add Restaurant</a></li>
						<li><a href="detail.html">Restaurant Detail</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#">Pages +</a>
					<ul>
						<li><a href="plans.html">Plans</a></li>
						<li><a href="404.html">404</a></li>
						<li><a href="contact.html">contact</a></li>
						<li><a href="about.html">about us</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#">Blog +</a>
					<ul>
						<li><a href="blog-grid.html">Blog Grid</a></li>
						<li><a href="blog-detail.html">Blog Detail</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#">Shop +</a>
					<ul>
						<li><a href="shop.html">Shop Grid</a></li>
						<li><a href="shop-detail.html">Shop Detail</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		
		<!-- Page Heading -->
		<section class="et-page-title">
			<div class="container">
				<h1 class="text-white">Shop <span class="icon-food d-block h1 mb-2"></span></h1>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="shop.html">Shop</a></li>
				</ul>
			</div>
		</section>
		<!-- /Page Heading -->
		
		<!-- Shop -->
		<section class="container-fluid et-shop-list">
			<div class="container">
				<div class="row">
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-1.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-2.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-3.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-4.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-1.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-2.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
					
					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-3.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->

					<!-- Product -->
					<div class="col-md-6 col-sm-12">
						<div class="productBox">
							<div class="productImg">
								<img src="<%=request.getContextPath()%>/restaurantResources/image/shop-4.jpg" alt="img" />
							</div>
							<div class="productData">
								<h4><a href="shop-detail.html" class="text-reset text-capitalize text-decoration-none link-hover">Baked eggs with bacon</a></h4>
								<p>Fresh topped with bacon and hot sauce</p>
								<a href="#" class="btn shadow mt-1 bg-yellow text-capitalize text-white">add to cart</a>
							</div>
						</div>
					</div>
					<!-- Product -->
				</div>
			</div>
			</div>
		</section>
		<!-- /Shop -->

		<!-- Footer -->
		<footer class="container-fluid et-footer">
			<div class="container">
				<div class="row align-items-center">
					<!-- Social Media -->
					<div class="col-md-6 pt-4">
						<div class="footer-social d-md-flex align-items-center">
							<label class="text-uppercase text-white rotate d-md-block d-none">social</label>
							<a href="#" class="d-inline-block rounded-pill fb-icon mr-2"><i class="fab fa-facebook"></i></a>
							<a href="#" class="d-inline-block rounded-pill tw-icon mr-2"><i class="fab fa-twitter"></i></a>
							<a href="#" class="d-inline-block rounded-pill ig-icon mr-2"><i class="fab fa-instagram"></i></a>
							<a href="#" class="d-inline-block rounded-pill gp-icon mr-2"><i class="fab fa-google-plus"></i></a>
							<a href="#" class="d-inline-block rounded-pill yt-icon mr-2"><i class="fab fa-youtube"></i></a>
							<a href="#" class="d-inline-block rounded-pill li-icon mr-2"><i class="fab fa-linkedin-in"></i></a>
							<a href="#" class="d-inline-block rounded-pill pi-icon mr-2"><i class="fab fa-pinterest"></i></a>
							<a href="#" class="d-inline-block rounded-pill wa-icon mr-2"><i class="fab fa-whatsapp"></i></a>
						</div>
					</div>
					<!-- Contact info -->
					<div class="col-md-6 pt-4">
						<div class="contact-info d-flex align-items-center">
							<label class="text-uppercase rotate text-white d-md-block d-none">contact</label>
							<div>
								<div class="meta mb-2 text-left d-flex align-items-center pr-1 pl-1">
									<i class="d-inline-block mr-2">
										<img src="<%=request.getContextPath()%>/restaurantResources/image/address.png" class="f-icon" alt="img">
									</i>
									<p class="align-bottom text-white d-inline-block m-0">89 Hill Road, Folsome Street 3H California, United States, 56000</p>
								</div>
								<div class="meta text-left d-flex align-items-center pr-1 pl-1">
									<i class="d-inline-block mr-2">
										<img src="<%=request.getContextPath()%>/restaurantResources/image/phone.png" class="f-icon" alt="img">
									</i>
									<p class="align-bottom text-white d-inline-block m-0">+22 123 456 78</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<hr class="border-secondary mt-4 mb-4">
				<div class="row align-items-center">
					<div class="col-md-6 text-white">
						<h3 class="font-weight-bold text-capitalize text-white">signup for <span class="text-yellow">newsletter</span></h3>
						<p class="mb-md-0 text-white">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor edd morris ghet.</p>
					</div>
					<div class="col-md-6">
						<form>
							<div class="form-inline">
								<input type="text" class="form-control flex-grow-1 border-0 newsletter-input" name="search" placeholder="Your email address">
								<div class="submit-btn ml-2 w-auto h-auto pl-2 pr-2 pt-2 pb-2 d-block h-60 btn bg-yellow text-capitalize rounded text-white">
									<input type="submit" class="" name="submit">
									<span class="h6">Subscribe</span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<hr class="border-secondary mt-4 mb-0">
				<div class="row text-white">
					<div class="col-md-5 mt-4">
						<h4 class="text-capitalize mb-4 mt-2 font-weight-bold text-yellow">about</h4>
						<p class="text-white">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
						<hr class="border-secondary">
						<div class="partners">
							<h4 class="mb-4 bit-bold text-white">Our partners</h4>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-1.png" alt="partner"></a>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-2.png" alt="partner"></a>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-3.png" alt="partner"></a>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-4.png" alt="partner"></a>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-1.png" alt="partner"></a>
							<a href="#" class="d-inline-block mr-3"><img src="<%=request.getContextPath()%>/restaurantResources/image/partner-2.png" alt="partner"></a>
						</div>
						<p class="small text-white mt-4 mb-0">
							© 2020 <a href="#" class="text-white">The Restro.</a> All Rights Reserved. Designed by <a href="https://themeforest.net/user/exactthemes" class="text-white">Exact Themes</a>
						</p>
					</div>
					<div class="col-md-2 mt-4">
						<h4 class="text-capitalize mb-4 mt-2 font-weight-bold text-yellow">content</h4>
						<ul class="footer-nav nostyle p-0">
							<li class="mt-2 mb-3"><a href="index.html">Home</a></li>
							<li class="mt-2 mb-3"><a href="plans.html">Pricing</a></li>
							<li class="mt-2 mb-3"><a href="about.html">About us</a></li>
							<li class="mt-2 mb-3"><a href="contact.html">Contact us</a></li>
							<li class="mt-2 mb-3"><a href="search.html">Search For</a></li>
							<li class="mt-2 mb-3"><a href="add-restaurant.html">Add Restaurant</a></li>
						</ul>
					</div>
					<div class="col-md-5 mt-4">
						<h4 class="text-capitalize mb-4 mt-2 font-weight-bold text-yellow">instagram feeds</h4>
						<div class="instagram-feed d-flex flex-wrap">
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-1.jpg" alt="instagram" class="img-fluid"></a>
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-2.jpg" alt="instagram" class="img-fluid"></a>
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-3.jpg" alt="instagram" class="img-fluid"></a>
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-4.jpg" alt="instagram" class="img-fluid"></a>
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-5.jpg" alt="instagram" class="img-fluid"></a>
							<a href="#" class="d-inline-block rounded overflow-hidden shadow"><img src="<%=request.getContextPath()%>/restaurantResources/image/insta-6.jpg" alt="instagram" class="img-fluid"></a>
						</div>
					</div>
				</div>
			</div>
		</footer>

		<!-- Video Modal -->
		<div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-body">
						<iframe height="315" src="https://www.youtube.com/embed/lfDZJqSrIuk" class="border-0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
					</div>
				</div>
			</div>
		</div>

		<!-- Login Modal -->
		<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title w-100 text-center" id="loginModalLabel">Login</h4>
						<button type="button" class="close position-absolute rounded-pill bg-yellow text-white" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body p-5">
						<div class="social-signup text-center mb-4">
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-google rounded-pill shadow text-white"></i> Sign in with Google</a>
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-facebook rounded-pill shadow text-white"></i> Sign in with Facebook</a>
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-twitter rounded-pill shadow text-white"></i> Sign in with Twitter</a>
						</div>
						<p class="or-sep">OR</p>
						<form autocomplete="off">
							<div class="form-group">
								<input type="text" class="form-control shadow-box bg-white border-white" placeholder="Username/Email" name="user_email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control shadow-box bg-white border-white" placeholder="Password" name="password">
							</div>
							<div class="form-group mb-3 mt-4 check-types">
								<label for="logincheck1">
									<input type="checkbox" id="logincheck1">
									<span class="cbx rounded-pill float-none d-inline-block align-middle">
										<svg width="12px" height="11px" viewBox="0 0 12 11">
											<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
										</svg>
									</span>
									<small class="float-none text-black-50">By signing up, you agree to our <a href="#" class="text-yellow">Terms and conditions</a> and <a href="#" class="text-yellow">Privacy policy.</a></small>
								</label>
							</div>
							<input type="submit" class="btn text-white text-capitalize bit-bold bg-yellow" value="Submit">
							<hr>
							<div class="text-center pt-25">
								<p>Forgot password? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#resetModal" class="text-yellow">Reset now</a></p>
								<p>Don't have an account? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#signupModal" class="text-yellow">Sign up here</a></p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Password Reset Modal -->
		<div class="modal fade" id="resetModal" tabindex="-1" role="dialog" aria-labelledby="resetModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title w-100 text-center" id="resetModalLabel">Reset Password</h4>
						<button type="button" class="close position-absolute rounded-pill bg-yellow text-white" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body p-5">
						<form autocomplete="off">
							<div class="form-group">
								<input type="text" class="form-control shadow-box bg-white border-white" placeholder="Your email / username" name="reset_email">
							</div>
							<div class="form-group mb-3 mt-4 check-types">
								<label for="logincheck2">
									<input type="checkbox" id="logincheck2">
									<span class="cbx rounded-pill float-none d-inline-block align-middle">
										<svg width="12px" height="11px" viewBox="0 0 12 11">
											<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
										</svg>
									</span>
									<small class="float-none text-black-50">I agree to your <a href="#" class="text-yellow">Terms and conditions</a> and <a href="#" class="text-yellow">Privacy policy.</a></small>
								</label>
							</div>
							<input type="submit" class="btn text-white text-capitalize bit-bold bg-yellow" value="Submit">
							<hr>
							<div class="text-center pt-25">
								<p>Already have an account? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#loginModal" class="text-yellow">Sign in here</a></p>
								<p>Don't have an account? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#signupModal" class="text-yellow">Sign up here</a></p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Signup Modal -->
		<div class="modal fade" id="signupModal" tabindex="-1" role="dialog" aria-labelledby="signupModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h4 class="modal-title w-100 text-center" id="signupModalLabel">Create an account</h4>
						<button type="button" class="close position-absolute rounded-pill bg-yellow text-white" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body p-5">
						<div class="social-signup text-center mb-4">
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-google rounded-pill shadow text-white"></i> Sign up with Google</a>
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-facebook rounded-pill shadow text-white"></i> Sign up with Facebook</a>
							<a class="text-body p-2 text-decoration-none" href="#"><i class="fab fa-twitter rounded-pill shadow text-white"></i> Sign up with Twitter</a>
						</div>
						<p class="or-sep">OR</p>
						<form autocomplete="off">
							<div class="form-group">
								<input type="text" class="form-control shadow-box bg-white border-white" placeholder="Username/Email" name="user_email">
							</div>
							<div class="form-group">
								<input type="password" class="form-control shadow-box bg-white border-white" placeholder="Password" name="password">
							</div>
							<div class="form-group mb-3 mt-4 check-types">
								<label for="logincheck">
									<input type="checkbox" id="logincheck">
									<span class="cbx rounded-pill float-none d-inline-block align-middle">
										<svg width="12px" height="11px" viewBox="0 0 12 11">
											<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
										</svg>
									</span>
									<small class="float-none text-black-50">By signing up, you agree to our <a href="#" class="text-yellow">Terms and conditions</a> and <a href="#" class="text-yellow">Privacy policy.</a></small>
								</label>
							</div>
							<input type="submit" class="btn text-white text-capitalize bit-bold bg-yellow" value="Submit">
							<hr>
							<div class="text-center pt-25">
								<p>Already have an account? <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#loginModal" class="text-yellow">Sign in here</a></p>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/jquery-3.2.1.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/popper.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/bootstrap.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/owl.carousel.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/hc-offcanvas-nav.js"></script>
		<!--Bootstrap DateTimePicker -->
		<script src="<%=request.getContextPath()%>/restaurantResources/js/bootstrap-datetimepicker.min.js"></script>
		<!--jQuery Select2 -->
		<script src="<%=request.getContextPath()%>/restaurantResources/js/select2.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/jquery.scrollbar.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/jquery.fancybox.min.js"></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
	</body>
	</html>
