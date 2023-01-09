<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="function" uri="http://java.sun.com/jstl/core_rt" %>
<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <title>AtrioHR - HR and Company Management Admin Template</title>
    <!-- Favicon-->
    <link rel="icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.ico" type="image/x-icon">
    <!-- Plugins Core Css -->
    <link href="<%=request.getContextPath()%>/adminResources/css/app.min.css" rel="stylesheet">
    <!-- Custom Css -->
    <link href="<%=request.getContextPath()%>/adminResources/css/style.css" rel="stylesheet" />
    <!-- You can choose a theme from css/styles instead of get all themes -->
    <link href="<%=request.getContextPath()%>/adminResources/css/all-themes.css" rel="stylesheet" />
</head>

<body class="light">
    <!-- Page Loader -->
    <div class="page-loader-wrapper">
        <div class="loader">
            <div class="m-t-30">
                <img class="loading-img-spin" src="<%=request.getContextPath()%>/adminResources/image/loading.png" alt="admin">
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
        <div class="container-fluid">
            <div class="block-header">
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="breadcrumb breadcrumb-style ">
                            <li class="breadcrumb-item bcrumb-1" style="margin-top: auto;">
                                <a href="index.html">
                                    <i class="fas fa-home"></i> Home</a>
                            </li>
             	            <li class="breadcrumb-item active">Profile</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- Your content goes here  -->
            <function:forEach items="${profileData}" var="i">
            <div class="row clearfix">
                <div class="col-lg-4 col-md-12">
                    <div class="card">
                        <div class="m-b-20">
                            <div class="contact-grid">
                                <div class="profile-header bg-dark">
                                    <div class="user-name">${i.restaurantName}</div>
                                </div>
                                <img src="<%=request.getContextPath()%>/adminResources/image/usrbig3.jpg" class="user-img" alt="">
                                <p>
                                    ${i.restaurantAddress}
                                    <br />
                                </p>
                                <div>
                                    <span class="phone">
                                        <i class="material-icons">phone</i>${i.contactNumber}</span>
                                </div>
                           	</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-12">
                    <div class="tab-content">
                    	<div role="tabpanel" class="tab-pane active" aria-expanded="true">
                            <div class="card">
                                <div class="header">
                                    <h2>
                                        <strong>Account</strong> Settings</h2>
                                </div>
                                
                                <div class="body">
                                	<form:form action="" method="POST" modelAttribute="restaurantvo">
                                    <div class="row clearfix">
                                        <div class="col-lg-6 col-md-12">
                                            <div class="form-group">
                                                <label class="form-label"><strong>RestaurantName</strong></label>
                                                <form:input path="restaurantName" class="form-control"></form:input>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>Contact Number</strong></label>
                                                <form:input path="contactNumber" type="text" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>Area</strong></label>
                                                <form:select path="areavo.id">
                                                	
                                                </form:select>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>City</strong></label>
                                                <input type="text" class="form-control" placeholder="E-mail">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>State</strong></label>
                                                <input type="text" class="form-control" placeholder="Country">
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>Address</strong></label>
                                            	<form:textarea path="restaurantAddress" rows="4" class="form-control no-resize"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>Pincode</strong></label>
                                                <form:input path="restaurantAddressPincode" type="text" class="form-control"/>
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>Payment</strong></label>
                                                <input type="text" class="form-control" placeholder="Country">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>GST Number</strong></label>
                                                <form:input path="gstNumber" type="text" class="form-control"/>
                                            </div>
                                        </div>
										<div class="col-md-12">
                                            <div class="form-group">
                                            	<label class="form-label"><strong>About</strong></label>
                                                <form:textarea path="about" rows="4" class="form-control no-resize"/>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="form-group">
                                                <div class="form-check m-l-10">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="checkbox"
                                                            name="checkbox"> Profile Visibility For Everyone
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-check m-l-10">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="checkbox1"
                                                            name="checkbox"> New task notifications
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="form-check m-l-10">
                                                    <label class="form-check-label">
                                                        <input class="form-check-input" type="checkbox" id="checkbox2"
                                                            name="checkbox"> New friend request notifications
                                                        <span class="form-check-sign">
                                                            <span class="check"></span>
                                                        </span>
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <input type="submit" id="form-btn" style="display: none;"/>
                                    </div>
                                    </form:form>
                                    <button class="btn btn-info waves-effect"  onclick="submit()">Submit Changes</button>
                                    <button class="btn btn-primary waves-effect" style="margin-left: 30px" onclick="back()">Back</button>
                                </div>
                                
                            </div>
                           </div>
                    </div>
                </div>
            </div>
            </function:forEach>
            
        </div>
    </section>
    <script type="text/javascript">
    	function submit()
    	{
    		$('#form-btn').click();
    	}
    	function back()
    	{
    		window.location.href="showProfile.html";
    	}
    </script>
    <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
    <!-- Custom Js -->
    <script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
</body>

</html>