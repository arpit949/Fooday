<!DOCTYPE html>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<script type="text/javascript">
	function areaClean() {
		var area = document.getElementById("areaid");
		var option = document.createElement("option");
		area.innerHTML = "";
		option.value = "";
		option.text = "Select Area";
		area.options.add(option);
		$('#areaid option').prop('selected', true).prop('disabled', true);
	}
	function state() {
		var htp = new XMLHttpRequest();
		var state = document.getElementById("stateid");
		var city = document.getElementById("cityid");
		var option = document.createElement("option");

		htp.onreadystatechange = function() {
			if (htp.readyState == 4) {
				var jsn = JSON.parse(htp.responseText);

				for (var i = 0; i < jsn.length; i++) {
					var data = jsn[i];
					option = document.createElement("option");

					option.value = data.stateId;
					option.text = data.stateName;

					state.options.add(option);
				}
			}
		}
		htp.open("get", "stateAjax.html", true);
		htp.send();
	}
	function city() {
		areaClean();
		var htp = new XMLHttpRequest();
		var state = document.getElementById("stateid");
		var city = document.getElementById("cityid");
		var area = document.getElementById("areaid");
		var option = document.createElement("option");

		htp.onreadystatechange = function() {
			city.innerHTML = "";
			option.value = "";
			option.text = "Select City";
			city.options.add(option);
			$('#cityid option').prop('selected', true).prop('disabled', true);

			if (htp.readyState == 4) {
				var jsn = JSON.parse(htp.responseText);
				for (var i = 0; i < jsn.length; i++) {
					var data = jsn[i];
					option = document.createElement("option");

					option.value = data.cityId;
					option.text = data.cityName;

					city.options.add(option);
				}
			}
		}
		htp.open("get", "cityAjax.html?id=" + state.value, true);
		htp.send();
	}
	function area() {
		var htp = new XMLHttpRequest();
		var city = document.getElementById("cityid");
		var area = document.getElementById("areaid");
		var option = document.createElement("option");

		htp.onreadystatechange = function() {
			areaClean();

			if (htp.readyState == 4) {

				var jsn = JSON.parse(htp.responseText);

				for (var i = 0; i < jsn.length; i++) {
					var data = jsn[i];

					option = document.createElement("option");
					option.value = data.areaId;
					option.text = data.areaName;

					area.options.add(option);
				}
			}
		}
		htp.open("get", "areaAjax.html?id=" + city.value, true);
		htp.send();
	}
	function deleteData(d) {
		alert("DATa in");
		var tb = document.getElementById("tab");
		var m = d.parentNode.parentNode;

		tb.deleteRow(m.rowIndex);
	}
</script>
</head>
<body onload="state()">
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
	<div class="et-topbar pb-3 pt-3 position-relative">
		<div class="container">
			<div class="row align-items-center">
				<a href="/" class="text-white white-space-nowrap ml-2"><i
					class="fas fa-sign-in-alt"></i> Login/Signup</a>
			</div>
		</div>
	</div>

	<section class="container-fluid et-add-restaurant">
		<div class="container">
			<div class="section-heading text-center">
				<span class="icon-food d-block h1 mb-2"></span>
				<h2 class="text-capitalize font-weight-bold">
					Register <span class="text-yellow">restaurant</span>
				</h2>
			</div>
			<div class="row mt-5">

				<!-- Stepper -->
				<div class="col-md-4 stepper-wrap">
					<div class="shadow-box et-stepper p-4 bg-white">
						<a href="#grp1"
							class="pt-3 current pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
							<span
							class="step-circle d-inline-block rounded-pill text-center shadow-box">1</span>
							<span>general info</span>
						</a> <a href="#grp3"
							class="pt-3 pb-3 text-uppercase font-weight-bold text-decoration-none d-block">
							<span
							class="step-circle d-inline-block rounded-pill text-center shadow-box">2</span>
							<span>add media</span>
						</a>
					</div>
				</div>

				<!-- Content -->
				<div class="col-md-8 overflow-hidden">

					<form:form class="w-100 add-form" action="addRestaurant.html"
						onsubmit="return validateChefMenu()" enctype="multipart/form-data"
						method="POST" modelAttribute="restaurantvo">

						<div class="content-group" id="grp1">

							<form:input type="hidden" path="id" value="" />

							<form:input type="hidden" path="loginvo.loginId" value=""
								name="loginId" />

							<div class="row">
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">restaurant
											name *</label>
										<form:input path="restaurantName" name="r_name"
											class="form-control bg-white shadow-box"
											placeholder="Please enter the name of restaurant"
											required="required" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">contact no.
											*</label>
										<form:input path="contactNumber" name="r_contact"
											class="form-control bg-white shadow-box" required="required"
											placeholder="Please enter contact number" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">gst no. *</label>
										<form:input path="gstNumber" name="r_contact"
											class="form-control bg-white shadow-box" required="required"
											placeholder="Please enter gst number" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">email *</label> <input
											type="email" name="email" required="required"
											class="form-control bg-white shadow-box"
											placeholder="Please enter official email address">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Cuisine type
											*</label>
										<form:input path="restaurantType" required="required"
											class="form-control bg-white shadow-box"
											placeholder="Please enter cusine type e.g. Chinese" />
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Description</label>
										<form:textarea path="about"
											class="form-control bg-white shadow-box" required="required"
											placeholder="Add description" rows="6" name="r_description"></form:textarea>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="content-group" id="grp2">
							<div
								class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold">
								<span class="bg-white pr-2 position-relative">Location</span>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Address</label>
										<form:textarea path="restaurantAddress"
											class="form-control bg-white shadow-box"
											placeholder="Add description" rows="6"></form:textarea>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Zip code *</label>
										<form:input path="restaurantAddressPincode"
											class="form-control bg-white shadow-box"
											placeholder="Please enter pincode e.g. 380001" />
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4 selectwide">
										<label class="text-muted text-capitalize">State *</label>
										<form:select class="select2" id="stateid" required="required"
											path="statevo.id" onchange="city()">
											<option value disabled selected>Select State</option>
										</form:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4 selectwide">
										<label class="text-muted text-capitalize">City *</label>
										<form:select class="select2" path="cityvo.id" id="cityid"
											required="required" onchange="area()">
											<option value disabled selected>Select City</option>
										</form:select>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4 selectwide">
										<label class="text-muted text-capitalize">Area *</label>
										<form:select class="select2" path="areavo.id" id="areaid"
											required="required">
											<option value disabled selected>Select Area</option>
										</form:select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group mb-4 selectwide">
										<label class="text-muted text-capitalize">Delivery/Pickup</label>
										<form:select class="select2" path="deliveryOrPickup"
											required="required">
											<option value disabled selected>Select Option</option>
											<option value="delivery,takeaway">We offer both option</option>
											<option value="takeaway">We offer take away only</option>
											<option value="delivery">We offer only delivery</option>
										</form:select>
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize d-block pr-3">Delivery
											charges</label>
										<form:input path="deliveryCharges" required="required"
											class="form-control delivery-input d-inline-block bg-white shadow-box"
											placeholder="Please enter delivery charges eg.50 rs." />
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group mb-4 selectwide">
										<label class="text-muted text-capitalize">Payment Type</label>
										<form:select class="select2" path="paymentMethod"
											required="required">
											<option value disabled selected>Select Option</option>
											<option value="cod,online">Online + COD</option>
											<option value="cod">Only Cash on delivery</option>
											<option value="online">Only online payment</option>
										</form:select>
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="content-group addgallery" id="grp3">
							<div
								class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold">
								<span class="bg-white pr-2 position-relative">Gallery</span>
							</div>
							<div class="file-upload d-inline-block mb-2 position-relative">
								<a href="#"
									class="btn shadow mt-2 bg-yellow text-capitalize text-white">upload
									images <i class="fas fa-upload"></i>
								</a> <input onchange="handleFiles(this.files)" type="file"
									name="file" multiple="multiple" accept="image/*"
									class="file-input position-absolute w-100 h-100">
							</div>
							<div class="row">
								<div class="col-md-6 append-gallery">
									
								</div>

							</div>
						</div>
						<br>
						<div class="content-group addgallery" id="grp4">
							<div
								class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold">
								<span class="bg-white pr-2 position-relative">Icone</span>
							</div>
							<div class="col-md-12">
									<div class="form-group mb-4">
										<input
											type="file" name="icon" accept="image/*" onchange="handleFiles(this.files)"
											class="form-control bg-white shadow-box">
									</div>
								</div>
						</div>
						<br>
						<!-- <div class="content-group addgallery" id="grp4">
							<div
								class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold">
								<span class="bg-white pr-2 position-relative">Manager
									info</span>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Manager name
											*</label> <input type="text" name="manager_name"
											class="form-control bg-white shadow-box"
											placeholder="Enter name of the manager" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Manager
											email address *</label> <input type="email" name="manager_email"
											class="form-control bg-white shadow-box"
											placeholder="Enter manager's email" required="required">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Manager
											contact *</label> <input type="text" name="manager_contact"
											class="form-control bg-white shadow-box"
											placeholder="Enter manager's contact" required="required">
									</div>
								</div>
							</div>
						</div>
						<br>
						<div class="content-group addchef" id="grp5">
							<div
								class="grp-heading position-relative mb-3 text-yellow text-capitalize font-weight-bold">
								<span class="bg-white pr-2 position-relative">Chef info</span>
							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Chef name *</label>
										<input type="text" name="chef_name" id="r_chef_name" required="required"
											class="form-control bg-white shadow-box"
											placeholder="Enter name of the chef">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Chef contact
											*</label> <input type="text" name="chef_contact" id = "r_chef_contact"
											class="form-control bg-white shadow-box" required="required"
											placeholder="Enter chef's contact">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Chef email
											address *</label> <input type="email" name="chef_email" id="r_chef_email"
											class="form-control bg-white shadow-box" required="required" 
											placeholder="Enter chef's email">
									</div>
								</div>
								<div class="col-md-12">
									<div class="form-group mb-4">
										<label class="text-muted text-capitalize">Photo</label> <input
											type="file" name="chef_photo" id="r_chef_photo"
											class="form-control bg-white shadow-box">
									</div>
								</div>
								<div class="col-md-12">
									<button data-repeater-create type="button"  class="btn create-chef bg-yellow p-2 mb-3 text-white text-capitalize small bit-bold text-decoration-none">+Add</button>
								</div>
								<div class="col-md-12">
									<div class="w-100 overflow-auto">
										<table class="table w-100 table-bordered chefs-record" id="tab">
											<thead>
												<tr>
													<th>Name</th>
													<th>Contact NO</th>
													<th>Email</th>
													<th>Picture</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>	
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>-->
						<div class="check-types mt-5">
							<label class="d-block position-relative text-black-50" for="cbk5">
								<input type="checkbox" id="cbk5"> <span
								class="cbx dark rounded-pill float-none d-inline-block align-middle">
									<svg width="12px" height="11px" viewBox="0 0 12 11">
											<polyline points="1 6.29411765 4.5 10 11 1"></polyline>
										</svg>
							</span> <span class="text-left title text-capitalize">I
									understand the Terms & Conditions and Usage Policy before i
									submit this.</span>
							</label>
						</div>
						<button
							class="btn shadow mt-3 bg-yellow text-capitalize text-white">submit</button>
					</form:form>
				</div>
			</div>
		</div>
	</section>

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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dropfile.js"></script>
	<script
		src="<%=request.getContextPath()%>/restaurantResources/js/addChefMenu.js"></script>
</body>
</html>
