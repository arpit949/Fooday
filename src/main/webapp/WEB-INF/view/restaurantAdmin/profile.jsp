<!DOCTYPE html>
<html lang="en">
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
                    <div class="card">
                        <ul class="nav nav-tabs">
                            <li class="nav-item m-l-10">
                                <a class="nav-link" data-toggle="tab" href="#about">About</a>
                            </li>
                            <li class="nav-item m-l-10">
                                <a class="nav-link" data-toggle="tab" href="#skills">Skills</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane body active" id="about">
                                <p class="text-default">Lorem Ipsum is simply dummy text of the printing and
                                    typesetting industry. Lorem Ipsum has
                                    been the industry's standard dummy text ever since the 1500s, when an unknown
                                    printer
                                    took a galley of type and scrambled it to make a type specimen book. It has
                                    survived
                                    not only five centuries, but also the leap into electronic typesetting, remaining
                                    essentially
                                    unchanged.</p>
                                <small class="text-muted">Email address: </small>
                                <p>${i.loginvo.username}</p>
                                <hr>
                                <small class="text-muted">Phone: </small>
                                <p>${i.contactNumber}</p>
                                <hr>
                            </div>
                            <div class="tab-pane body" id="skills">
                                <ul class="list-unstyled">
                                    <li>
                                        <div>North Indian</div>
                                        <div class="progress skill-progress m-t-20">
                                            <div class="progress-bar l-bg-green width-per-45" role="progressbar"
                                                aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div>South Indian</div>
                                        <div class="progress skill-progress m-b-20">
                                            <div class="progress-bar l-bg-orange width-per-38" role="progressbar"
                                                aria-valuenow="38" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div>Chinese</div>
                                        <div class="progress skill-progress m-b-20">
                                            <div class="progress-bar l-bg-cyan width-per-39" role="progressbar"
                                                aria-valuenow="39" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div>Fast Food</div>
                                        <div class="progress skill-progress m-b-20">
                                            <div class="progress-bar l-bg-purple width-per-70" role="progressbar"
                                                aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 col-md-12">
                    <div class="card">
                        <div class="profile-tab-box">
                            <button type="button" class="btn btn-primary waves-effect" onclick="accountSetting(${i.loginvo.loginId})">Account Setting</button>
                            <button type="button" class="btn btn-primary waves-effect" style="margin-left: 30px" onclick="securitySetting(${i.loginvo.loginId})">Security Setting</button>
                        </div>
                    </div>
                    <div class="tab-content">
                        <div role="tabpanel" class="tab-pane active" id="project" aria-expanded="true">
                            <div class="row clearfix">
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="card project_widget">
                                        <div class="header">
                                            <h2>About</h2>
                                        </div>
                                        <div class="body">
                                            <div class="row">
                                                <div class="col-md-3 col-6 b-r">
                                                    <strong>Full Name</strong>
                                                    <br>
                                                    <p class="text-muted">${i.restaurantName}</p>
                                                </div>
                                                <div class="col-md-3 col-6 b-r">
                                                    <strong>Mobile</strong>
                                                    <br>
                                                    <p class="text-muted">${i.contactNumber}</p>
                                                </div>
                                                <div class="col-md-3 col-6 b-r">
                                                    <strong>Email</strong>
                                                    <br>
                                                    <p class="text-muted">${i.loginvo.username}</p>
                                                </div>
                                                <div class="col-md-3 col-6">
                                                    <strong>Location</strong>
                                                    <br>
                                                    <p class="text-muted">India</p>
                                                </div>
                                            </div>
                                            <p class="m-t-30">Completed my graduation in Arts from the well known and
                                                renowned institution
                                           	</p>
                                            <p> from 2003-2015 </p>
                                            <p> into electronic typesetting, remaining essentially unchanged.</p>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="card project_widget">
                                        <div class="header">
                                            <h2>Education</h2>
                                        </div>
                                        <div class="body">
                                            <ul>
                                                <li>B.A.,Gujarat University, Ahmedabad,India.</li>
                                                <li>M.A.,Gujarat University, Ahmedabad, India.</li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="card project_widget">
                                        <div class="header">
                                            <h2>Experience</h2>
                                        </div>
                                        <div class="body">
                                            <ul>
                                                <li>One year experience as Jr. Professor from April-2009 to march-2010
                                                    at B.
                                                    J. Arts College, Ahmedabad.</li>
                                                <li>Three year experience as Jr. Professor at V.S. Arts &amp; Commerse
                                                    Collage
                                                    from April - 2008 to April - 2011.</li>
                                          	</ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-12 col-md-12 col-sm-12">
                                    <div class="card project_widget">
                                        <div class="header">
                                            <h2>Conferences, Cources &amp; Workshop Attended</h2>
                                        </div>
                                        <div class="body">
                                            <ul>
                                                <li>Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry.
                                                </li>
                                                <li>Lorem Ipsum is simply dummy text of the printing and typesetting
                                                    industry.
                                                </li>
                                          	</ul>
                                        </div>
                                    </div>
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
    	function accountSetting(loginId)
    	{
    		window.location.href="accountSetting?loginId="+loginId;
    	}
    	function securitySetting(loginId)
    	{
    		window.location.href="securitySetting?loginId="+loginId;
    	}
    </script>
    <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
    <!-- Custom Js -->
    <script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
</body>

</html>