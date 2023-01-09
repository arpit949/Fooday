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
                                        <strong>Security</strong> Settings</h2>
                                </div>
                                <div class="body">
                                	<form:form action="passwordChange" method="POST" modelAttribute="restaurantvo">
                                	<form:hidden path="id"/>
                                    <div class="form-group">
                                    	<label class="form-label"><strong>UserName</strong></label>
                                        <form:input path="loginvo.username" class="form-control"/>
                                    </div>
                                    <div class="form-group">
                                    	<label class="form-label"><strong>Current Password*</strong></label>
                                        <input type="text" name="currentPassword" class="form-control" placeholder="Enter Current Password"/>
                                    </div>
                                    <div class="form-group">
                                    	<label class="form-label"><strong>New Password*</strong></label>
                                    	<input type="text" name="newPassword" class="form-control" placeholder="Enter New Password"/>
                                    </div>
                                    <input type="submit" id="form-btn" style="display: none;"/>
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