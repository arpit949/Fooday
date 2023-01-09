<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="z" uri="http://java.sun.com/jstl/core_rt"%>
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
<!-- Multi Select Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/multi-select.css"
	rel="stylesheet">
<!-- Plugins Core Css -->
<link
	href="<%=request.getContextPath()%>/adminResources/css/app.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/adminResources/css/form.min.css"
	rel="stylesheet">
<!-- Custom Css -->
<link href="<%=request.getContextPath()%>/adminResources/css/style.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/adminResources/css/all-themes.css"
	rel="stylesheet" />
<link
	href="<%=request.getContextPath()%>/adminResources/css/dropfile.css"
	rel="stylesheet">

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
		<jsp:include page="menu.jsp"></jsp:include>
		<!-- #END# Left Sidebar -->
		<!-- Right Sidebar -->
		<jsp:include page="right_sidebar.jsp"></jsp:include>
		<!-- #END# Right Sidebar -->
	</div>
	<section class="content">
		<div class="container-fluid" id="form_validation">
			<div class="block-header">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<ul class="breadcrumb breadcrumb-style ">
							<li class="breadcrumb-item bcrumb-1" style="margin-top: auto;"><a
								href="home"> <i class="fas fa-home"></i> Home
							</a></li>
							<li class="breadcrumb-item bcrumb-2"><a href="viewProduct"
								onClick="return false;">View Product</a></li>
							<li class="breadcrumb-item active">Edit Product</li>
						</ul>
					</div>
				</div>
			</div>
			<form:form action="addProduct.html" method="post" id="myForm"
				modelAttribute="productvo" enctype="multipart/form-data">
				<!-- Advanced Select -->
				<div class="row clearfix">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="card">
							<div class="header">
								<h2>
									<strong>Product</strong> Details
								</h2>
							</div>
							<div class="body">
								<form:input type="hidden" class="form-control" path="id" />
								<div class="row clearfix">
									<div class="col-md-3">
										<label><strong>Category</strong></label>
										<form:select path="categoryvo.id" id="categoryid"
											class="browser-default" style="font-size: initial">
											<option value disabled selected>Select Category</option>
											<z:forEach items="${categorylist}" var="j">
												<option value="${j.id}" <z:if test="${j.id eq categoryId}">selected="selected"</z:if>>${j.categoryName}</option>
											</z:forEach>
										</form:select>
									</div>
								</div>
								<div class="form-group form-float">
									<div class="form-line focused active">
										<label class="form-label active">Product Name</label>
										<form:input type="text" path="productName" id="productName"
											value="" class="form-control" required="required"/>
									</div>
								</div>
								<div class="form-group form-float">
									<div class="form-line">
										<label><strong>Product Price</strong></label>
										<form:input class="form-control" type="number"
											path="productPrice" min="200" max="500"  />
									</div>
									<div class="help-info">Min. Value: 200, Max. Value: 500</div>
								</div>
								<div class="form-group form-float">
									<div class="form-line focused">
										<label><strong>Description</strong></label>
										<form:textarea path="productDescription" cols="30" rows="5"
											class="form-control no-resize" required="required" />
									</div>
								</div>



								<!-- #END# Advanced Select -->

								<!-- File Upload | Drag & Drop OR With Click & Choose -->
								<div class="row clearfix">
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="card">
											<div class="header">
												<h2>
													<strong>File</strong> Upload
												</h2>
											</div>
											<div class="row clearfix">
												<div style="margin: 0px"
													class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
													<div class="card mg">
														<div class="file-drop-area mg"
															style="height: 212px; background-color: #ebebeb; text-align: center;">
															<div class="body" style="margin-left: 30%">
																<div class="dz-message">
																	<div class="drag-icon-cph">
																		<i class="material-icons">touch_app</i>
																	</div>
																	<h3>Drop files here or click to upload.</h3>
																</div>
																<span class="file-message">Choose files or drag
																	and drop files here</span> <input class="file-input"
																	onchange="handleFiles(this.files)" type="file"
																	name="file" multiple accept="image/*" />
																<div id="gallery" /></div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<!-- #END# File Upload | Drag & Drop OR With Click & Choose -->
								<input type="submit" style="padding: 0px" class="btn btn-primary waves-effect"
									 value="SUBMIT" /> 
								<button type="button" class="btn btn-primary waves-effect">RESET</button>
							</div>
						</div>
					</div>
				</div>
			</form:form>
		</div>

	</section>
	<!-- Plugins Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.multi-select.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-colorpicker.js"></script>
	<!-- Custom Js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
	<!-- Demo Js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/dropfile.js"></script>
	<script>
	$(document).ready(function(){
        $("button").click(function(){
            location.reload(true);
        });
    });
	</script>
</body>

</html>