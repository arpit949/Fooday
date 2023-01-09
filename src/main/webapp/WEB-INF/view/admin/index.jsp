<!DOCTYPE html>
<html lang="en">

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
        <jsp:include page="menu.jsp">
        	<jsp:param value="menu" name="v1"/>
        </jsp:include>   
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
                            
                            <li class="breadcrumb-item bcrumb-1">
                                <a href="index.html">
                                    <i class="fas fa-home"></i> Home</a>
                            </li>
                            <li class="breadcrumb-item active">Dashboard</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-3 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-5">
                                    <span class="info-box-icon"><i class="material-icons">work</i></span>
                                </div>
                                <div class="col-lg-7 col-7">
                                    <div>
                                        <h2 class="col-purple">
                                            <span>125</span>
                                        </h2>
                                        <p>Projects</p>
                                    </div>
                                </div>
                            </div>
                            <div class="icon m-b-10">
                                <canvas id="infoboxChart1"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-5">
                                    <span class="info-box-icon"><i class="material-icons">group</i></span>
                                </div>
                                <div class="col-lg-7 col-7">
                                    <div>
                                        <h2 class="col-green">
                                            <span>213</span>
                                        </h2>
                                        <p>New Employee</p>
                                    </div>
                                </div>
                            </div>
                            <div class="icon m-b-10">
                                <canvas id="infoboxChart2"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-5">
                                    <span class="info-box-icon"><i class="material-icons">local_activity</i></span>
                                </div>
                                <div class="col-lg-7 col-7">
                                    <div>
                                        <h2 class="col-orange">
                                            <span>145</span>
                                        </h2>
                                        <p>Tasks</p>
                                    </div>
                                </div>
                            </div>
                            <div class="icon m-b-10">
                                <canvas id="infoboxChart3"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-sm-6">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col-lg-5 col-5">
                                    <span class="info-box-icon"><i class="material-icons">monetization_on</i></span>
                                </div>
                                <div class="col-lg-7 col-7 pl-0">
                                    <div>
                                        <h2 class="col-cyan">
                                            $<span>2753</span>
                                        </h2>
                                        <p>Earning</p>
                                    </div>
                                </div>
                            </div>
                            <div class="icon m-b-10">
                                <canvas id="infoboxChart4"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>Revenue</strong> Report</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="#" onClick="return false;">Action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Something else here</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="recent-report__chart">
                                <canvas id="desktop-chart1"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>Revenue</strong> Report</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="#" onClick="return false;">Action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Something else here</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="recent-report__chart">
                                <div id="echart_graph_line" class="chartsh"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <!-- Task Info -->
                <div class="col-xs-12 col-sm-12 col-md-8 col-lg-8">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>Project</strong> Details</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="#" onClick="return false;">Action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Something else here</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Project</th>
                                            <th>Team</th>
                                            <th>Priority</th>
                                            <th>Status</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Project A</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user1.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user2.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user3.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+4</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-orange">High</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-danger width-per-40"
                                                        role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">40%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$150.00</td>
                                        </tr>
                                        <tr>
                                            <td>Project B</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user4.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user5.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+3</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-cyan">Medium</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-lightred width-per-60"
                                                        role="progressbar" aria-valuenow="60" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">60%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$470.00</td>
                                        </tr>
                                        <tr>
                                            <td>Project C</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user1.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user2.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user3.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+4</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-orange">High</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-warning width-per-40"
                                                        role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">40%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$564.00</td>
                                        </tr>
                                        <tr>
                                            <td>Project D</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user6.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user7.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user8.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+4</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-green">Low</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-success width-per-45"
                                                        role="progressbar" aria-valuenow="45" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">45%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$925.00</td>
                                        </tr>
                                        <tr>
                                            <td>Project E</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user8.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user9.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+1</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-cyan">Medium</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-lightred width-per-80"
                                                        role="progressbar" aria-valuenow="80" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">80%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$785.00</td>
                                        </tr>
                                        <tr>
                                            <td>Project G</td>
                                            <td class="text-truncate">
                                                <ul class="list-unstyled order-list">
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user1.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user6.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><img class="rounded-circle"
                                                            src="<%=request.getContextPath()%>/adminResources/image/user8.jpg" alt="user">
                                                    </li>
                                                    <li class="avatar avatar-sm"><span class="badge">+3</span>
                                                    </li>
                                                </ul>
                                            </td>
                                            <td><span class="badge col-green">Low</span></td>
                                            <td>
                                                <div class="progress-xs not-rounded progress shadow-style">
                                                    <div class="progress-bar progress-bar-success width-per-40"
                                                        role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                                        aria-valuemax="100">
                                                        <span class="sr-only">40%</span>
                                                    </div>
                                                </div>
                                            </td>
                                            <td>$270.00</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #END# Task Info -->
                <!-- Browser Usage -->
                <div class="col-xs-12 col-sm-12 col-md-4 col-lg-4">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>TODO </strong>List</h2>
                            <ul class="header-dropdown m-r--5">
                                <li class="dropdown">
                                    <a href="#" onClick="return false;" class="dropdown-toggle" data-toggle="dropdown"
                                        role="button" aria-haspopup="true" aria-expanded="false">
                                        <i class="material-icons">more_vert</i>
                                    </a>
                                    <ul class="dropdown-menu pull-right">
                                        <li>
                                            <a href="#" onClick="return false;">Action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Another action</a>
                                        </li>
                                        <li>
                                            <a href="#" onClick="return false;">Something else here</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <div class="body">
                            <div class="tdl-content">
                                <ul class="to-do-list ui-sortable">
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Add salary details in system <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Announcement for holiday <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                call bus driver <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Office Picnic <span class="form-check-sign"> <span class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Website Must Be Finished <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Recharge My Mobile <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="form-check m-l-10">
                                            <label class="form-check-label"> <input class="form-check-input"
                                                    type="checkbox" value="">
                                                Add salary details in system <span class="form-check-sign"> <span
                                                        class="check"></span>
                                                </span>
                                            </label>
                                        </div>
                                        <div class="todo-actionlist pull-right clearfix">
                                            <a href="#"> <i class="material-icons">clear</i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <input type="text" class="tdl-new form-control-radious" placeholder="Enter Todo...">
                        </div>
                    </div>
                </div>
                <!-- #END# Browser Usage -->
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>Revenue</strong> Chart</h2>
                        </div>
                        <div class="body">
                            <div class="recent-report__chart">
                                <div id="chart1"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="card">
                        <div class="header">
                            <h2>
                                <strong>Profit</strong> Chart</h2>
                        </div>
                        <div class="body">
                            <div class="recent-report__chart">
                                <div id="chart2"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="<%=request.getContextPath()%>/adminResources/js/app.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/chart.min.js"></script>
    <!-- Custom Js -->
    <script src="<%=request.getContextPath()%>/adminResources/js/admin.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/echarts.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/apexcharts.min.js"></script>
    <script src="<%=request.getContextPath()%>/adminResources/js/index.js"></script>
</body>

</html>