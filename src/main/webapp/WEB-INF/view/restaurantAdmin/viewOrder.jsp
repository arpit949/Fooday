<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link
	href="<%=request.getContextPath()%>/adminResources/css/table.css"
	rel="stylesheet" />
<script
	src="<%=request.getContextPath()%>/adminResources/js/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/adminResources/js/bootstrap.min.js"></script>
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
							<li class="breadcrumb-item active">Order Details</li>
						</ul>
					</div>
				</div>
			</div>

			
			<!-- #START# Table With State Save -->
			<div class="row clearfix">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="card">
						<div class="card-header">
							<h3 style="float: left;margin-top: 3px;">
								<strong>View Order</strong>
							</h3>
						</div>
						<div class="body">
							<div class="table-responsive">
								<table
									class="table table-bordered table-striped table-hover save-stage dataTable"
									style="width: 100%;">
									<thead>
										<tr>
											<th>No</th>
											<th>UserName</th>
											<th>Order Date</th>
											<th>Product Name</th>
											<th>Product Description</th>
											<th>Product Price(&#x20B9)</th>
											<th>Product Image</th>
											<th>Action</th>
										</tr>
									</thead>
									<tbody>
										<f:forEach items="${orderList}" var="i">
											<tr>
												<td></td>
												<td>${i.loginvo.username}</td>
												<td>${i.orderDate}</td>
												<td>${i.productvo.productName}</td>
												<td>${i.productvo.productDescription}</td>
												<td>${i.productvo.productPrice}</td>
												<td>
												<f:forEach items="${fn:split(i.productvo.productImageUrl,',')}" var="img" >
													<img alt="" src="${img}" style="width: 50px;height: 50px;">
												</f:forEach>
												</td>
												<td><f:set var="status" value="${i.status}" />
													<f:if test="${status==false}">
														<button type="button"
															class="btn btn-primary btn-border-radius waves-effect">Ordered</button>
													</f:if> <f:if test="${status==true}">
														<button type="button"
															onclick="placeOrdered(${i.id})"
															class="btn btn-success btn-border-radius waves-effect">Actived</button>
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
	function placeOrdered(x)
		{
			var htp = new XMLHttpRequest();
			
			htp.open("get","deactivateOrder.html?orderId="+x,true);
			htp.send();
			
			redirect();
		}
	</script>
	 
</body>

</html>