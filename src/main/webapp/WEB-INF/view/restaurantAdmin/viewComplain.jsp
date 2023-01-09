<!DOCTYPE html>
<html lang="en">

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

<script type="text/javascript">
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
							<li class="breadcrumb-item bcrumb-1" style="margin-top: auto;"><a
								href="index.html"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item active">Complain Data</li>
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
								<strong>View Complain</strong>
							</h3>
							<!-- Data Target call -->
							<button type="button"
								style="margin-left: auto; margin-right: 0%; display: block"
								class="btn btn-primary waves-effect" onclick="nullData()"
								data-toggle="modal" data-target="#complain">+ Add
								Complain</button>

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
											<th>Complain Subject</th>
											<th>Complain Description</th>
											<th>Complain Date</th>
											<th>Reply</th>
											<th>Reply Date</th>
											<th>Status</th>
										</tr>
									</thead>
									<tbody>
										<f:forEach var="i" items="${complainList}">
											<tr>
												<td></td>
												<td>${i.complainSubject}</td>
												<td>${i.complainDescription}</td>
												<td>${i.complainDate}</td>
												<td>${i.reply}</td>
												<td>${i.replyDate}</td>
												<f:set value="${i.complainStatus}" var="status"></f:set>
												<f:choose>
													<f:when test="${status eq 'pending'}">
														<td><button type="button" class="btn btn-danger btn-border-radius waves-effect" >Pending</button></td>
													</f:when>
													<f:otherwise>
														<td><button type="button" class="btn btn-success btn-border-radius waves-effect">Resolved</button></td>
													</f:otherwise>
												</f:choose>
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

			<!-- #START# Add Rows -->
			<%@taglib prefix="form"
				uri="http://www.springframework.org/tags/form"%>
		</div>
		<div class="modal fade" id="complain" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Complain</h4>
					</div>
					<form:form action="addComplainData.html" method="POST"
						modelAttribute="complainvo" id="form">

						<div class="form-group form-float">

							<form:input type="hidden" path="id" value="" />

							<form:input type="hidden" path="loginvo.loginId" value=""
								name="loginId" />

						</div>
						<div class="form-group form-float">
							<div class="form-line focused active">
								<label class="form-label active">Complain Subject</label>
								<form:input type="text" path="complainSubject" id="subject"
									value="" class="form-control" />
							</div>
						</div>
						<div class="form-group form-float active">
							<div class="form-line focused active">
								<label class="form-label active">Complain Description</label>
								<form:input type="text" path="complainDescription"
									id="description" value="" class="form-control" />
							</div>
						</div>
						<button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>

						<button type="button" class="btn btn-primary waves-effect"
							data-dismiss="modal">Close</button>
					</form:form>
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
</body>

</html>