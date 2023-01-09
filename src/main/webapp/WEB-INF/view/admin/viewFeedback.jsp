<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1" name="viewport" />
<title>AtrioHR</title>
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
<link href="<%=request.getContextPath()%>/adminResources/css/rating.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/adminResources/css/viewRating.css"
	rel="stylesheet" />
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
							<li class="breadcrumb-item bcrumb-1" style="margin-top: auto;"><a
								href="index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item active">Feedback Data</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- #START# Table With State Save -->
		<div class="row clearfix">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="card">
					<div class="card-header">
						<h3 style="float: left; margin-top: 3px;">
							<strong>View Feedback</strong>
						</h3>
					</div>
					<div class="body">
						<div class="table-responsive">
							<table
								class="table table-bordered table-striped table-hover save-stage dataTable"
								style="width: 100%;">
								<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
								<thead>

									<tr>
										<th>No</th>
										<th>Username</th>
										<th>Feedback</th>
										<th>Rating</th>
									</tr>
								</thead>
								<tbody>
									<f:forEach var="i" items="${feedbackList}">
										<tr>
											<td></td>
											<td>${i.loginvo.username}</td>
											<td>${i.feedback}</td>
											<td><f:if test="${i.rating eq '1'}">
													<span style='font-size: 25px;'>&#128532;</span>
												</f:if> <f:if test="${i.rating eq '2'}">
													<span style='font-size: 25px;'>&#128530;&#128530;</span>
												</f:if> <f:if test="${i.rating eq '3'}">
													<span style='font-size: 25px;'>&#128512;&#128512;&#128512;</span>
												</f:if> <f:if test="${i.rating eq '4'}">
													<span style='font-size: 25px;'>&#128526;&#128526;&#128526;&#128526;</span>
												</f:if> <f:if test="${i.rating eq '5'}">
													<span style='font-size: 25px;'>&#128525;&#128525;&#128525;&#128525;&#128525;</span>
												</f:if></td>
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
</body>

</html>