<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>AtrioHR - HR and Company Management Admin Template</title>
<!-- Favicon-->
<link rel="icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.ico"
	type="image/x-icon">
<!-- Plugins Core Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"
	rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet">
<!-- You can choose a theme from css/styles instead of get all themes -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
	rel="stylesheet" />
<link href="<%=request.getContextPath()%>/adminResources/css/table.css"
	rel="stylesheet" />
<script
	src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>

<script type="text/javascript">
	function edit(x) {
		var htp = new XMLHttpRequest();
		var id = document.getElementById("id");
		var stateid = document.getElementById("stateid");
		var cityname = document.getElementById("cityname");
		var description = document.getElementById("citydesc");

		htp.onreadystatechange = function() {
			if (htp.readyState == 4) {
				var jsn = JSON.parse(htp.responseText);

				for (var i = 0; i < jsn.length; i++) {
					var data = jsn[i];

					id.value = data.cityId;
					stateid.value = data.stateId;
					cityname.value = data.cityName;
					description.value = data.cityDescription;
				}
				$('#city').modal('toggle');
			}
		}
		htp.open("get", "cityEdit.html?id=" + x, true);

		htp.send();
	}
	function nullData() {
		$("#form")[0].reset();
	}
</script>

</head>

<body class="light">
	<!-- Page Loader -->
	<div class="page-loader-wrapper">
		<div class="loader">
			<div class="m-t-30">
				<img class="loading-img-spin"
					src="<%=request.getContextPath()%>/adminResources/image/loading.png"
					alt="admin">
			</div>
			<p>Please wait...</p>
		</div>
	</div>
	<!-- #END# Page Loader -->
	<!-- Overlay For Sidebars -->
	<div class="overlay"></div>
	<!-- #END# Overlay For Sidebars -->
	<!-- Top Bar -->
	<jsp:include page="header.jsp"></jsp:include>
	<!-- #Top Bar -->
	<div>
		<!-- Left Sidebar -->
		<jsp:include page="menu.jsp">
			<jsp:param value="datatable" name="v1" />
		</jsp:include>
		<!-- #END# Left Sidebar -->
		<!-- Right Sidebar -->
		<jsp:include page="right_sidebar.jsp"></jsp:include>
		<!-- #END# Right Sidebar -->
	</div>
	<section class="content">
		<div class="container-fluid">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item">
								<h4 class="page-title"></h4>
							</li>
							<li class="breadcrumb-item bcrumb-1" style="margin-top: auto;">
								<a href="index.html"> <i class="fas fa-home"></i> Home
							</a>
							</li>
							<li class="breadcrumb-item active">City Data</li>
						</ul>
					</div>
				</div>
			</div>


			<!-- #START# Table With State Save -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="card-header">
							<h3 style="float: left; margin-top: 3px;">
								<strong>View City</strong>
							</h3>
							<!-- Data Target call -->
							<button type="button" class="btn btn-primary waves-effect"
								style="margin-left: auto; margin-right: 0%; display: block"
								data-toggle="modal" data-target="#city" onclick="nullData()">+
								Add New</button>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table
									class="table table-bordered table-striped table-hover save-stage dataTable"
									style="width: 100%;">
									<thead>
										<tr>
											<th>No</th>
											<th>State Name</th>
											<th>City Name</th>
											<th>City Disc.</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<f:forEach var="i" items="${citylist}">
											<tr>
												<td></td>
												<td>${i.statevo.stateName}</td>
												<td>${i.cityName}</td>
												<td>${i.cityDescription}</td>
												<td><a onclick='edit("${i.id}")'> <i
														class="ti-pencil-alt"
														style="color: blue; margin-left: 10px; font-size: 20px"></i></a>
													<a onclick="showConfirmMessage(${i.id})"
													data-type="confirm"><i class="fas fa-trash-alt"
														style="color: red; margin-left: 10px; font-size: 20px"></i></a>
												</td>
											</tr>
										</f:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- #END# Table With State Save -->
			<!-- #START# Add Rows -->
			<%@taglib prefix="form"
				uri="http://www.springframework.org/tags/form"%>

			<div class="modal fade" id="city" role="dialog">
				<div class="modal-dialog">

					<!-- Modal content-->
					<div class="modal-content">
						<div class="header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title">City</h4>
						</div>
						<form:form action="addCityData.html" method="POST"
							modelAttribute="cityvo">

							<div class="form-group form-float ">

								<form:input type="hidden" class="form-control" id="id" path="id"
									value="" />

							</div>
							<%@taglib prefix="z" uri="http://java.sun.com/jstl/core_rt"%>
							<div class="form-group form-float">
								<div class="form-line">
									<form:select path="statevo.id" id="stateid"
										class="form-control">
										<option value disabled selected>Select State</option>
										<z:forEach items="${statelist}" var="j">
											<option value="${j.id}">${j.stateName}</option>
										</z:forEach>
									</form:select>
									<label class="form-label">State Name</label>
								</div>
							</div>

							<div class="form-group form-float">
								<div class="form-line focused">
									<form:input type="text" class="form-control" id="cityname"
										path="cityName" required="required" />
									<label class="form-label active">City Name</label>
								</div>
							</div>

							<div class="form-group form-float">
								<div class="form-line focused">
									<form:textarea path="cityDescription" id="citydesc" rows="5"
										class="form-control" required="required" />
									<label class="form-label active">City Description</label>
								</div>
							</div>
							<button class="btn btn-primary waves-effect" type="submit">ADD</button>

							<button type="button" class="btn btn-primary waves-effect"
								data-dismiss="modal">Close</button>

						</form:form>
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/table.min.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery-datatable.js"></script>
	<!-- Demo Js -->
	<script type="text/javascript">
	 function showConfirmMessage(x) {
		 swal({
		        title: "Are you sure?",
		        text: "You will not be able to recover this imaginary file!",
		        type: "warning",
		        showCancelButton: true,
		        confirmButtonColor: "#DD6B55",
		        confirmButtonText: "Yes, delete it!",
		        closeOnConfirm: false
		    }, function () {
		        swal("Deleted!", "Your imaginary file has been deleted.", "success");
		       	$.ajax({ url: "deleteCityId.html",data:{id:x}, succes: function () { }
		        });
		 //      	alert("after set id");
		        window.location.href="deleteCity.html";
		    });
		}</script>
</body>

</html>