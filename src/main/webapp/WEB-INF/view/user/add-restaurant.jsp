	<!DOCTYPE html>
	<html lang="zxx">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="Exact Themes">
		<title>Find Restaurant RestroX</title>
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

		<jsp:include page="header.jsp"></jsp:include>
		
		<!-- Page Heading -->
		<section class="et-page-title">
			<div class="container">
				<h1 class="text-white">Add Restaurant <span class="icon-food d-block h1 mb-2"></span></h1>
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="add-restaurant.html">Shop Detail</a></li>
				</ul>
			</div>
		</section>
		<!-- /Page Heading -->

		<section class="container-fluid et-add-restaurant">
			<div class="container">
				<div class="section-heading text-center">
					<span class="icon-food d-block h1 mb-2"></span>
					<h2 class="text-capitalize font-weight-bold">add <span class="text-yellow">restaurant</span></h2>
					<p class="description mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing <br> elit, sed do eiusmod tempor</p>
				</div>
				<div class="row mt-5">

					<!-- Stepper -->
					<div class="col-md-4 stepper-wrap">
						<div class="shadow-box et-stepper p-4 bg-white">
							<a href="#grp1" class="pt-3 current pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
								<span class="step-circle d-inline-block rounded-pill text-center shadow-box">1</span>
								<span>general info</span>
							</a>
							<a href="#grp3" class="pt-3 pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
								<span class="step-circle d-inline-block rounded-pill text-center shadow-box">2</span>
								<span>add media</span>
							</a>
							<a href="#grp5" class="pt-3 pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
								<span class="step-circle d-inline-block rounded-pill text-center shadow-box">3</span>
								<span>staff</span>
							</a>
							<a href="#grp7" class="pt-3 pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
								<span class="step-circle d-inline-block rounded-pill text-center shadow-box">4</span>
								<span>Create menu</span>
							</a>
							<a href="#grp9" class="pt-3 pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
								<span class="step-circle d-inline-block rounded-pill text-center shadow-box">5</span>
								<span>Coupons/Discounts</span>
							</a>
						</div>
					</div>

					<!-- Content -->
					<div class="col-md-8 overflow-hidden">
						<form class="w-100 add-form">
							<div class="content-group" id="grp1">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">restaurant name *</label>
											<input type="text" name="r_name" class="form-control bg-white shadow-box" placeholder="Please enter the name of restaurant">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">contact no. *</label>
											<input type="text" name="r_contact" class="form-control bg-white shadow-box" placeholder="Please enter contact number">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">email *</label>
											<input type="text" name="r_email" class="form-control bg-white shadow-box" placeholder="Please enter official email address">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Cuisine type *</label>
											<input type="text" name="r_email" class="form-control bg-white shadow-box" placeholder="Please enter cusine type e.g. Chinese">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Description</label>
											<textarea class="form-control bg-white shadow-box" placeholder="Add description" rows="6" name="r_description"></textarea>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group" id="grp2">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">Location</span></div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group mb-4 selectwide">
											<label class="text-muted text-capitalize">Country *</label>
											<select class="select2" name="r_country">
												<optgroup label="Choose Country">
													<option>Canada</option>
													<option>Australia</option>
													<option>Netherlands</option>
													<option>Norway</option>
													<option>Italy</option>
													<option>Sweden</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4 selectwide">
											<label class="text-muted text-capitalize">State *</label>
											<select class="select2" name="r_state">
												<optgroup label="Choose State">
													<option>Canada</option>
													<option>Australia</option>
													<option>Netherlands</option>
													<option>Norway</option>
													<option>Italy</option>
													<option>Sweden</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4 selectwide">
											<label class="text-muted text-capitalize">City *</label>
											<select class="select2" name="r_city">
												<optgroup label="Choose City">
													<option>Canada</option>
													<option>Australia</option>
													<option>Netherlands</option>
													<option>Norway</option>
													<option>Italy</option>
													<option>Sweden</option>
												</optgroup>
											</select>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Zip code *</label>
											<input type="text" name="r_email" class="form-control bg-white shadow-box" placeholder="Please enter cusine type e.g. Chinese">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Choose from map</label>
											<input type="text" name="r_map_location" class="form-control bg-white shadow-box" placeholder="Enter location">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4 mt-2">
											<div id="loadmaps" class="rounded shadow-box"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Delivery/Pickup</label>
											<div class="check-types">
												<label class="d-block position-relative text-black-50" for="cbk1">
													<input type="checkbox" id="cbk1">
													<span class="cbx dark rounded-pill float-none d-inline-block align-middle">
														<svg width="12px" height="11px" viewBox="0 0 12 11">
															<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
														</svg>
													</span>
													<span class="text-left title text-capitalize">We offer takeaway only</span>
												</label>
												<label class="d-block position-relative text-black-50" for="cbk2">
													<input type="checkbox" id="cbk2" checked>
													<span class="cbx dark rounded-pill float-none d-inline-block align-middle">
														<svg width="12px" height="11px" viewBox="0 0 12 11">
															<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
														</svg>
													</span>
													<span class="text-left title text-capitalize">We offer delivery only</span>
												</label>
												<label class="d-block position-relative text-black-50" for="cbk3">
													<input type="checkbox" id="cbk3">
													<span class="cbx dark rounded-pill float-none d-inline-block align-middle">
														<svg width="12px" height="11px" viewBox="0 0 12 11">
															<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
														</svg>
													</span>
													<span class="text-left title text-capitalize">We offer both pickup and delivery option</span>
												</label>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize d-block pr-3">Delivery charges</label>
											<input type="text" name="r_delivery_charges" class="form-control delivery-input d-inline-block bg-white shadow-box" placeholder="Please enter delivery charges">
											<div class="check-types mt-3">
												<label class="d-block position-relative text-black-50" for="cbk4">
													<input type="checkbox" id="cbk4">
													<span class="cbx dark rounded-pill float-none d-inline-block align-middle">
														<svg width="12px" height="11px" viewBox="0 0 12 11">
															<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
														</svg>
													</span>
													<span class="text-left title text-capitalize">Free Delivery</span>
												</label>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addvideos" id="grp3">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">Media</span></div>
								<div class="input-group form-group mb-4">
									<input placeholder="Enter video URL" class="form-control bg-white shadow-box" type="text" name="r_video_url">
									<div class="input-group-append">
										<span class="input-group-text pointer bg-white shadow-box border-0">
											<i class="fas fa-upload"></i>
										</span>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="video-box mt-3 mt-md-0 bg-white p-4 shadow-box pointer position-relative" data-toggle="modal" data-target="#videoModal">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/restaurant-thumbnail-1.jpg" alt="img" class="img-fluid">
											<i class="fas fa-play-circle transition position-absolute m-auto d-inline-flex align-items-center justify-content-center bg-white rounded-pill text-yellow vidplayicon"></i>
										</div>
									</div>
									<div class="col-md-6">
										<div class="video-box mt-3 mt-md-0 bg-white p-4 shadow-box pointer position-relative" data-toggle="modal" data-target="#videoModal">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/city-3.jpg" alt="img" class="img-fluid">
											<i class="fas fa-play-circle transition position-absolute m-auto d-inline-flex align-items-center justify-content-center bg-white rounded-pill text-yellow vidplayicon"></i>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addgallery" id="grp4">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">Gallery</span></div>
								<div class="file-upload d-inline-block mb-2 position-relative">
									<a href="#" class="btn shadow mt-2 bg-yellow text-capitalize text-white">upload images <i class="fas fa-upload"></i></a>
									<input type="file" name="img_upload" class="position-absolute w-100 h-100">
								</div>
								<div class="row">
									<div class="col-md-6 append-gallery">
										<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/restaurant-thumbnail-1.jpg" alt="img" class="img-fluid">
											<span class="make-featured">Set as featured image</span>
										</div>
										<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/city-3.jpg" alt="img" class="img-fluid">
											<span class="make-featured">Set as featured image</span>
										</div>
										<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/city-3.jpg" alt="img" class="img-fluid">
											<span class="make-featured">Set as featured image</span>
										</div>
									</div>

									<!-- Column 2 -->
									<div class="col-md-6">
										<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/restaurant-thumbnail-1.jpg" alt="img" class="img-fluid">
											<span class="make-featured">Set as featured image</span>
										</div>
										<div class="mt-3 gallery-img video-box bg-white p-4 shadow-box pointer position-relative">
											<i class="remove-content rounded-pill fas fa-times bg-danger text-white shadow position-absolute"></i>
											<img src="<%=request.getContextPath()%>/restaurantResources/image/gallery-3.jpg" alt="img" class="img-fluid">
											<span class="make-featured">Set as featured image</span>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addgallery" id="grp5">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">Manager info</span></div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Manager name *</label>
											<input type="text" name="r_manager_name" class="form-control bg-white shadow-box" placeholder="Enter name of the manager">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Manager email address *</label>
											<input type="text" name="r_manager_email" class="form-control bg-white shadow-box" placeholder="Enter manager's email">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Manager contact *</label>
											<input type="text" name="r_manager_contact" class="form-control bg-white shadow-box" placeholder="Enter manager's contact">
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addchef" id="grp6">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">Chef info</span></div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Chef name *</label>
											<input type="text" name="r_chef_name" class="form-control bg-white shadow-box" placeholder="Enter name of the chef">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Chef email address *</label>
											<input type="text" name="r_chef_email" class="form-control bg-white shadow-box" placeholder="Enter chef's email">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Chef contact *</label>
											<input type="text" name="r_chef_contact" class="form-control bg-white shadow-box" placeholder="Enter chef's contact">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Photo</label>
											<input type="file" name="r_chef_photo" class="form-control bg-white shadow-box">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-0">
											<label class="text-muted text-capitalize">Add social accounts *</label>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_fb_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-facebook fb-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_ig_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-instagram ig-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_gp_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-google-plus gp-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_tw_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-twitter tw-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_li_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-linkedin-in li-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="input-group form-group mb-4">
											<input placeholder="Enter URL" class="form-control bg-white shadow-box" type="text" name="r_yt_social">
											<div class="input-group-append">
												<span class="input-group-text bg-white shadow-box border-0">
													<i class="fab fa-youtube yt-icon rounded-pill text-white"></i>
												</span>
											</div>
										</div>
									</div>
									<div class="col-md-12">
										<a href="#" class="btn create-chef bg-yellow p-2 mb-3 text-white text-capitalize small bit-bold text-decoration-none">+ Add</a>
									</div>
									<div class="col-md-12">
										<div class="w-100 overflow-auto">
											<table class="table w-100 table-bordered chefs-record">
												<thead>
													<tr>
														<th>Name</th>
														<th>Contact info</th>
														<th>Picture</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Stephen</td>
														<td>
															<p class="description">stephen@example.com</p>
															<p class="description">+912 346 8789</p>
															<div>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-facebook"></i></a>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-twitter"></i></a>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-instagram"></i></a>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-google-plus"></i></a>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-youtube"></i></a>
																<a href="#" class="d-inline-block text-muted rounded-pill mr-2"><i class="fab fa-linkedin-in"></i></a>
															</div>
														</td>
														<td>
															<div class="position-relative text-center speaker-avatar">
																<img src="<%=request.getContextPath()%>/restaurantResources/image/chef-1.jpg" class="img-fluid" alt="img">
															</div>
														</td>
														<td>
															<span class="badge bg-danger text-white remove-chef ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addgallery" id="grp7">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">create menu</span></div>
								<div class="row align-items-center">
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Menu title</label>
											<input type="text" name="r_menu_title" class="form-control bg-white shadow-box" placeholder="E.g. Starter">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Discount</label>
											<input type="text" name="r_menu_discount" class="form-control bg-white shadow-box" placeholder="E.g. 20%">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">&nbsp;</label>
											<a href="#" class="btn p-2 shadow bg-yellow text-capitalize text-white">upload photo <i class="fas fa-upload"></i></a>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">Add dish</label>
											<input type="text" name="r_menu_dish" class="form-control bg-white shadow-box" placeholder="E.g Cheese cake">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">Price</label>
											<input type="text" name="r_dish_price" class="form-control bg-white shadow-box" placeholder="E.g $200">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<a href="#" class="mb-0 mt-3 text-capitalize small bit-bold text-yellow text-decoration-none">+ add another dish</a>
										</div>
									</div>
									<div class="col-md-12 text-right pb-3">
										<a href="#" class="mt-2 text-capitalize small bit-bold text-yellow text-decoration-none">+ add another menu</a>
									</div>
									<div class="col-md-12">
										<div class="w-100 overflow-auto">
											<table class="table w-100 table-bordered menu-record">
												<thead>
													<tr>
														<th>Title</th>
														<th>Discount</th>
														<th>Image</th>
														<th>Dishes</th>
														<th>Price</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Buy one get one</td>
														<td>
															<p class="description">20%</p>
														</td>
														<td>
															<div class="position-relative text-center speaker-avatar">
																<img src="<%=request.getContextPath()%>/restaurantResources/image/insta-1.jpg" class="img-fluid" alt="img">
															</div>
														</td>
														<td>
															<p class="description">
																<span>Cheese cake</span>
																<span>Chicken Fillet</span>
															</p>
														</td>
														<td>
															<p class="description">20%</p>
														</td>
														<td>
															<span class="badge bg-danger text-white remove-chef ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
							<br>
							<div class="content-group addgallery" id="grp8">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">special recipes</span></div>
								<div class="row align-items-center">
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Title</label>
											<input type="text" name="r_recipe_title" class="form-control bg-white shadow-box" placeholder="E.g. Cheese cake">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Price</label>
											<input type="text" name="r_recipe_price" class="form-control bg-white shadow-box" placeholder="E.g. $200">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">&nbsp;</label>
											<a href="#" class="btn p-2 shadow bg-yellow text-capitalize text-white">upload image <i class="fas fa-upload"></i></a>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">Description</label>
											<textarea class="form-control bg-white shadow-box" placeholder="Add description" rows="6" name="r_recipe_description"></textarea>
										</div>
									</div>
									<div class="col-md-12">
										<a href="#" class="btn create-recipe bg-yellow p-2 mb-3 text-white text-capitalize small bit-bold text-decoration-none">+ Add</a>
									</div>
									<div class="col-md-12 pb-3 text-right">
										<a href="#" class="mt-2 text-capitalize small bit-bold text-yellow text-decoration-none">+ add another recipe</a>
									</div>
								</div>
								<div class="w-100 overflow-auto">
									<table class="table w-100 table-bordered special-recipe-record">
										<thead>
											<tr>
												<th>Title</th>
												<th>Price</th>
												<th>Image</th>
												<th>Description</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Cheese cake</td>
												<td>
													<p class="description">$99.99</p>
												</td>
												<td>
													
												</td>
												<td>
													<p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
												</td>
												<td>
													<span class="badge bg-danger text-white remove-recipe ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<br>
							<div class="content-group addgallery" id="grp9">
								<div class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold"><span class="bg-white pr-2 position-relative">coupons</span></div>
								<div class="row align-items-center">
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Choose date</label>
											<input size="16" type="text" placeholder="Choose date" readonly class="form-control bg-white shadow-box form_datetime dateonly">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted text-capitalize">Discount</label>
											<input type="text" name="r_coupon_discount" class="form-control bg-white shadow-box" placeholder="E.g. $200">
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">Valid till</label>
											<input size="16" type="text" placeholder="Choose date" readonly class="form-control bg-white shadow-box form_datetime">
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group mb-4">
											<label class="text-muted d-block text-capitalize">additional information</label>
											<textarea class="form-control bg-white shadow-box" placeholder="Add description" rows="6" name="r_coupon_description"></textarea>
										</div>
									</div>
									<div class="col-md-12">
										<a href="#" class="btn create-coupon bg-yellow p-2 mb-3 text-white text-capitalize small bit-bold text-decoration-none">+ Add</a>
									</div>
									<div class="col-md-12 pb-3 text-right">
										<a href="#" class="mt-2 text-capitalize small bit-bold text-yellow text-decoration-none">+ add another coupon</a>
									</div>
								</div>
								<div class="w-100 overflow-auto">
									<table class="table w-100 table-bordered coupon-record">
										<thead>
											<tr>
												<th>Date</th>
												<th>Discount</th>
												<th>Valid till</th>
												<th>Description</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>19/12/2020</td>
												<td>
													<p class="description">30%</p>
												</td>
												<td>12/12/2020</td>
												<td>
													<p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
												</td>
												<td>
													<span class="badge bg-danger text-white remove-coupon ml-3 mt-3 pointer border-0 font-weight-normal"><i class="fas fa-trash"></i></span>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="check-types mt-5">
								<label class="d-block position-relative text-black-50" for="cbk5">
									<input type="checkbox" id="cbk5">
									<span class="cbx dark rounded-pill float-none d-inline-block align-middle">
										<svg width="12px" height="11px" viewBox="0 0 12 11">
											<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
										</svg>
									</span>
									<span class="text-left title text-capitalize">I understand the Terms & Conditions and Usage Policy before i submit this.</span>
								</label>
							</div>
							<a href="#" class="btn shadow mt-3 bg-yellow text-capitalize text-white">submit</a>
						</form>
					</div>
				</div>
			</div>
		</section>

		<jsp:include page="footer.jsp"></jsp:include>
		
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
		<!--mbYTPlayer -->
		<script src="<%=request.getContextPath()%>/restaurantResources/js/jquery.mb.YTPlayer.min.js"></script>
		<!-- Map API -->
		<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyAmrxCFuWyNUlMh6wLitVLI3pF7j_HqAFY&#038;libraries=places&#038;ver=1.1'></script>
		<script src="<%=request.getContextPath()%>/restaurantResources/js/custom.js"></script>
	</body>
	</html>
